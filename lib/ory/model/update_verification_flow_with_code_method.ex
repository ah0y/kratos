# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.UpdateVerificationFlowWithCodeMethod do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :code,
    :csrf_token,
    :email,
    :method
  ]

  @type t :: %__MODULE__{
    :code => String.t | nil,
    :csrf_token => String.t | nil,
    :email => String.t | nil,
    :method => String.t
  }
end

defimpl Poison.Decoder, for: Ory.Model.UpdateVerificationFlowWithCodeMethod do
  def decode(value, _options) do
    value
  end
end

