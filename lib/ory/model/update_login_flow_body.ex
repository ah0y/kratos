# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.UpdateLoginFlowBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :csrf_token,
    :identifier,
    :method,
    :password,
    :password_identifier,
    :provider,
    :traits,
    :upstream_parameters,
    :totp_code,
    :webauthn_login,
    :lookup_secret
  ]

  @type t :: %__MODULE__{
    :csrf_token => String.t | nil,
    :identifier => String.t,
    :method => String.t,
    :password => String.t,
    :password_identifier => String.t | nil,
    :provider => String.t,
    :traits => map() | nil,
    :upstream_parameters => map() | nil,
    :totp_code => String.t,
    :webauthn_login => String.t | nil,
    :lookup_secret => String.t
  }
end

defimpl Poison.Decoder, for: Ory.Model.UpdateLoginFlowBody do
  def decode(value, _options) do
    value
  end
end

