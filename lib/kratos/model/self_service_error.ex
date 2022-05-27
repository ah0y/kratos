# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Kratos.Model.SelfServiceError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"created_at",
    :"error",
    :"id",
    :"updated_at"
  ]

  @type t :: %__MODULE__{
    :"created_at" => DateTime.t | nil,
    :"error" => map() | nil,
    :"id" => String.t,
    :"updated_at" => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: Kratos.Model.SelfServiceError do
  def decode(value, _options) do
    value
  end
end

