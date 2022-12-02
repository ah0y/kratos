# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Ory.Model.LogoutFlow do
  @moduledoc """
  Logout Flow
  """

  @derive [Poison.Encoder]
  defstruct [
    :logout_token,
    :logout_url
  ]

  @type t :: %__MODULE__{
    :logout_token => String.t,
    :logout_url => String.t
  }
end

defimpl Poison.Decoder, for: Ory.Model.LogoutFlow do
  def decode(value, _options) do
    value
  end
end

