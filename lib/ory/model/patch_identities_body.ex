# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.PatchIdentitiesBody do
  @moduledoc """
  Patch Identities Body
  """

  @derive [Poison.Encoder]
  defstruct [
    :identities
  ]

  @type t :: %__MODULE__{
          :identities => [Ory.Model.IdentityPatch.t()] | nil
        }
end

defimpl Poison.Decoder, for: Ory.Model.PatchIdentitiesBody do
  import Ory.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:identities, :list, Ory.Model.IdentityPatch, options)
  end
end
