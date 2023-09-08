# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.UpdateLoginFlowWithOidcMethod do
  @moduledoc """
  Update Login Flow with OpenID Connect Method
  """

  @derive [Poison.Encoder]
  defstruct [
    :csrf_token,
    :method,
    :provider,
    :traits,
    :upstream_parameters
  ]

  @type t :: %__MODULE__{
          :csrf_token => String.t() | nil,
          :method => String.t(),
          :provider => String.t(),
          :traits => map() | nil,
          :upstream_parameters => map() | nil
        }
end

defimpl Poison.Decoder, for: Ory.Model.UpdateLoginFlowWithOidcMethod do
  def decode(value, _options) do
    value
  end
end
