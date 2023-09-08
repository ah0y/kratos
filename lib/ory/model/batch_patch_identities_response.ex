# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.BatchPatchIdentitiesResponse do
  @moduledoc """
  Patch identities response
  """

  @derive [Poison.Encoder]
  defstruct [
    :identities
  ]

  @type t :: %__MODULE__{
          :identities => [Ory.Model.IdentityPatchResponse.t()] | nil
        }
end

defimpl Poison.Decoder, for: Ory.Model.BatchPatchIdentitiesResponse do
  import Ory.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:identities, :list, Ory.Model.IdentityPatchResponse, options)
  end
end
