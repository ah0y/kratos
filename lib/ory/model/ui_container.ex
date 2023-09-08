# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.UiContainer do
  @moduledoc """
  Container represents a HTML Form. The container can work with both HTTP Form and JSON requests
  """

  @derive [Poison.Encoder]
  defstruct [
    :action,
    :messages,
    :method,
    :nodes
  ]

  @type t :: %__MODULE__{
          :action => String.t(),
          :messages => [Ory.Model.UiText.t()] | nil,
          :method => String.t(),
          :nodes => [Ory.Model.UiNode.t()]
        }
end

defimpl Poison.Decoder, for: Ory.Model.UiContainer do
  import Ory.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:messages, :list, Ory.Model.UiText, options)
    |> deserialize(:nodes, :list, Ory.Model.UiNode, options)
  end
end
