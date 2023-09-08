# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.VerifiableIdentityAddress do
  @moduledoc """
  VerifiableAddress is an identity's verifiable address
  """

  @derive [Poison.Encoder]
  defstruct [
    :created_at,
    :id,
    :status,
    :updated_at,
    :value,
    :verified,
    :verified_at,
    :via
  ]

  @type t :: %__MODULE__{
          :created_at => DateTime.t() | nil,
          :id => String.t() | nil,
          :status => String.t(),
          :updated_at => DateTime.t() | nil,
          :value => String.t(),
          :verified => boolean(),
          :verified_at => DateTime.t() | nil,
          :via => String.t()
        }
end

defimpl Poison.Decoder, for: Ory.Model.VerifiableIdentityAddress do
  def decode(value, _options) do
    value
  end
end
