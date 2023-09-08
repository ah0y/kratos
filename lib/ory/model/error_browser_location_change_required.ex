# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.ErrorBrowserLocationChangeRequired do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :error,
    :redirect_browser_to
  ]

  @type t :: %__MODULE__{
          :error => Ory.Model.ErrorGeneric.t() | nil,
          :redirect_browser_to => String.t() | nil
        }
end

defimpl Poison.Decoder, for: Ory.Model.ErrorBrowserLocationChangeRequired do
  import Ory.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:error, :struct, Ory.Model.ErrorGeneric, options)
  end
end
