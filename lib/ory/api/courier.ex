defmodule Ory.Api.Courier do
  @moduledoc """
  Behaviour for `Courier`.
  """

  alias Ory.Connection
  import Ory.RequestBuilder

  @callback get_courier_message(Tesla.Env.client(), String.t()) ::
              {:ok, Ory.Model.Message.t()}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:error, Tesla.Env.t()}
  def get_courier_message(connection, id),
    do: impl().get_courier_message(connection, id)

  @callback list_courier_messages(Tesla.Env.client(), keyword()) ::
              {:ok, list(Ory.Model.Message.t())}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:error, Tesla.Env.t()}
  def list_courier_messages(connection, opts \\ []),
    do: impl().list_courier_messages(connection, opts)

  defp impl do
    Application.get_env(:ory_kratos, :courier_client, Ory.Api.Courier.Client)
  end
end

defmodule Ory.Api.Courier.Client do
  @moduledoc """
  API calls for all endpoints tagged `Courier`.
  """

  alias Ory.Connection
  import Ory.RequestBuilder

  @behaviour Ory.Api.Courier

  @doc """
  Get a Message
  Gets a specific messages by the given ID.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `id` (String.t): MessageID is the ID of the message.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.Message.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_courier_message(Tesla.Env.client(), String.t()) ::
          {:ok, Ory.Model.Message.t()}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:error, Tesla.Env.t()}
  def get_courier_message(connection, id) do
    request =
      %{}
      |> method(:get)
      |> url("/admin/courier/messages/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.Message{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  List Messages
  Lists all messages by given status and recipient.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page_size` (integer()): Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
    - `:page_token` (String.t): Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
    - `:status` (CourierMessageStatus): Status filters out messages based on status. If no value is provided, it doesn't take effect on filter.
    - `:recipient` (String.t): Recipient filters out messages based on recipient. If no value is provided, it doesn't take effect on filter.

  ### Returns

  - `{:ok, [%Message{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_courier_messages(Tesla.Env.client(), keyword()) ::
          {:ok, list(Ory.Model.Message.t())}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:error, Tesla.Env.t()}
  def list_courier_messages(connection, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :page_token => :query,
      :status => :query,
      :recipient => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/admin/courier/messages")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Ory.Model.Message{}]},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end
end
