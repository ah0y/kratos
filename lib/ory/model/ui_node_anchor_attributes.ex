# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.UiNodeAnchorAttributes do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :href,
    :id,
    :node_type,
    :title
  ]

  @type t :: %__MODULE__{
    :href => String.t,
    :id => String.t,
    :node_type => String.t,
    :title => Ory.Model.UiText.t
  }
end

defimpl Poison.Decoder, for: Ory.Model.UiNodeAnchorAttributes do
  import Ory.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:title, :struct, Ory.Model.UiText, options)
  end
end

