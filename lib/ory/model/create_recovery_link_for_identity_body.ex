# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Ory.Model.CreateRecoveryLinkForIdentityBody do
  @moduledoc """
  Create Recovery Link for Identity Request Body
  """

  @derive [Poison.Encoder]
  defstruct [
    :expires_in,
    :identity_id
  ]

  @type t :: %__MODULE__{
    :expires_in => String.t | nil,
    :identity_id => String.t
  }
end

defimpl Poison.Decoder, for: Ory.Model.CreateRecoveryLinkForIdentityBody do
  def decode(value, _options) do
    value
  end
end

