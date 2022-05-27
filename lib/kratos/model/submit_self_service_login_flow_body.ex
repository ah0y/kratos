# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Kratos.Model.SubmitSelfServiceLoginFlowBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"csrf_token",
    :"method",
    :"password",
    :"password_identifier",
    :"provider",
    :"traits",
    :"totp_code"
  ]

  @type t :: %__MODULE__{
    :"csrf_token" => String.t | nil,
    :"method" => String.t,
    :"password" => String.t,
    :"password_identifier" => String.t,
    :"provider" => String.t,
    :"traits" => map() | nil,
    :"totp_code" => String.t
  }
end

defimpl Poison.Decoder, for: Kratos.Model.SubmitSelfServiceLoginFlowBody do
  def decode(value, _options) do
    value
  end
end

