# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Kratos.Model.SubmitSelfServiceRegistrationFlowWithOidcMethodBody do
  @moduledoc """
  SubmitSelfServiceRegistrationFlowWithOidcMethodBody is used to decode the registration form payload when using the oidc method.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"csrf_token",
    :"method",
    :"provider",
    :"traits"
  ]

  @type t :: %__MODULE__{
    :"csrf_token" => String.t | nil,
    :"method" => String.t,
    :"provider" => String.t,
    :"traits" => map() | nil
  }
end

defimpl Poison.Decoder, for: Kratos.Model.SubmitSelfServiceRegistrationFlowWithOidcMethodBody do
  def decode(value, _options) do
    value
  end
end

