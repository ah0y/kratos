# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.NeedsPrivilegedSessionError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :error,
    :redirect_browser_to
  ]

  @type t :: %__MODULE__{
    :error => Ory.Model.GenericError.t | nil,
    :redirect_browser_to => String.t
  }
end

defimpl Poison.Decoder, for: Ory.Model.NeedsPrivilegedSessionError do
  import Ory.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:error, :struct, Ory.Model.GenericError, options)
  end
end

