# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.UpdateSettingsFlowBody do
  @moduledoc """
  Update Settings Flow Request Body
  """

  @derive [Poison.Encoder]
  defstruct [
    :csrf_token,
    :method,
    :password,
    :traits,
    :flow,
    :link,
    :unlink,
    :upstream_parameters,
    :totp_code,
    :totp_unlink,
    :webauthn_register,
    :webauthn_register_displayname,
    :webauthn_remove,
    :lookup_secret_confirm,
    :lookup_secret_disable,
    :lookup_secret_regenerate,
    :lookup_secret_reveal
  ]

  @type t :: %__MODULE__{
    :csrf_token => String.t | nil,
    :method => String.t,
    :password => String.t,
    :traits => map(),
    :flow => String.t | nil,
    :link => String.t | nil,
    :unlink => String.t | nil,
    :upstream_parameters => map() | nil,
    :totp_code => String.t | nil,
    :totp_unlink => boolean() | nil,
    :webauthn_register => String.t | nil,
    :webauthn_register_displayname => String.t | nil,
    :webauthn_remove => String.t | nil,
    :lookup_secret_confirm => boolean() | nil,
    :lookup_secret_disable => boolean() | nil,
    :lookup_secret_regenerate => boolean() | nil,
    :lookup_secret_reveal => boolean() | nil
  }
end

defimpl Poison.Decoder, for: Ory.Model.UpdateSettingsFlowBody do
  def decode(value, _options) do
    value
  end
end

