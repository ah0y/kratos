defmodule Ory.Api.Frontend do
  @moduledoc """
  Behaviour for `Frontend`.
  """

  alias Ory.Connection
  import Ory.RequestBuilder

  @callback create_browser_login_flow(Tesla.Env.client(), keyword()) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.LoginFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_browser_login_flow(connection, opts),
    do: impl().create_browser_login_flow(connection, opts)

  @callback create_browser_logout_flow(Tesla.Env.client(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.LogoutFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_browser_logout_flow(connection, opts),
    do: impl().create_browser_logout_flow(connection, opts)

  @callback create_browser_recovery_flow(Tesla.Env.client(), keyword()) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.RecoveryFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_browser_recovery_flow(connection, opts),
    do: impl().create_browser_recovery_flow(connection, opts)

  @callback create_browser_registration_flow(Tesla.Env.client(), keyword()) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.RegistrationFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_browser_registration_flow(connection, opts),
    do: impl().create_browser_registration_flow(connection, opts)

  @callback create_browser_settings_flow(Tesla.Env.client(), keyword()) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.SettingsFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_browser_settings_flow(connection, opts),
    do: impl().create_browser_settings_flow(connection, opts)

  @callback create_browser_verification_flow(Tesla.Env.client(), keyword()) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.VerificationFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_browser_verification_flow(connection, opts),
    do: impl().create_browser_verification_flow(connection, opts)

  @callback create_native_login_flow(Tesla.Env.client(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.LoginFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_native_login_flow(connection, opts),
    do: impl().create_native_login_flow(connection, opts)

  @callback create_native_recovery_flow(Tesla.Env.client(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.RecoveryFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_native_recovery_flow(connection, opts),
    do: impl().create_native_recovery_flow(connection, opts)

  @callback create_native_registration_flow(Tesla.Env.client(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.RegistrationFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_native_registration_flow(connection, opts),
    do: impl().create_native_registration_flow(connection, opts)

  @callback create_native_settings_flow(Tesla.Env.client(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.SettingsFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_native_settings_flow(connection, opts),
    do: impl().create_native_settings_flow(connection, opts)

  @callback create_native_verification_flow(Tesla.Env.client(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.VerificationFlow.t()}
              | {:error, Tesla.Env.t()}
  def create_native_verification_flow(connection, opts),
    do: impl().create_native_verification_flow(connection, opts)

  @callback disable_my_other_sessions(Tesla.Env.client(), keyword()) ::
              {:ok, Ory.Model.DeleteMySessionsCount.t()}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:error, Tesla.Env.t()}
  def disable_my_other_sessions(connection, opts),
    do: impl().disable_my_other_sessions(connection, opts)

  @callback disable_my_session(Tesla.Env.client(), String.t(), keyword()) ::
              {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t()} | {:error, Tesla.Env.t()}
  def disable_my_session(connection, id, opts),
    do: impl().disable_my_session(connection, id, opts)

  @callback exchange_session_token(Tesla.Env.client(), String.t(), String.t()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.SuccessfulNativeLogin.t()}
              | {:error, Tesla.Env.t()}
  def exchange_session_token(connection, init_code, return_to_code),
    do: impl().exchange_session_token(connection, init_code, return_to_code)

  @callback get_flow_error(Tesla.Env.client(), String.t(), keyword()) ::
              {:ok, Ory.Model.FlowError.t()}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:error, Tesla.Env.t()}
  def get_flow_error(connection, id, opts), do: impl().get_flow_error(connection, id, opts)

  @callback get_login_flow(Tesla.Env.client(), String.t(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.LoginFlow.t()}
              | {:error, Tesla.Env.t()}
  def get_login_flow(connection, id, opts), do: impl().get_login_flow(connection, id, opts)

  @callback get_recovery_flow(Tesla.Env.client(), String.t(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.RecoveryFlow.t()}
              | {:error, Tesla.Env.t()}
  def get_recovery_flow(connection, id, opts), do: impl().get_recovery_flow(connection, id, opts)

  @callback get_registration_flow(Tesla.Env.client(), String.t(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.RegistrationFlow.t()}
              | {:error, Tesla.Env.t()}
  def get_registration_flow(connection, id, opts),
    do: impl().get_registration_flow(connection, id, opts)

  @callback get_settings_flow(Tesla.Env.client(), String.t(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.SettingsFlow.t()}
              | {:error, Tesla.Env.t()}
  def get_settings_flow(connection, id, opts), do: impl().get_settings_flow(connection, id, opts)

  @callback get_verification_flow(Tesla.Env.client(), String.t(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.VerificationFlow.t()}
              | {:error, Tesla.Env.t()}
  def get_verification_flow(connection, id, opts),
    do: impl().get_verification_flow(connection, id, opts)

  @callback get_web_authn_java_script(Tesla.Env.client(), keyword()) ::
              {:ok, String.t()} | {:error, Tesla.Env.t()}
  def get_web_authn_java_script(connection, opts),
    do: impl().get_web_authn_java_script(connection, opts)

  @callback list_my_sessions(Tesla.Env.client(), keyword()) ::
              {:ok, list(Ory.Model.Session.t())}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:error, Tesla.Env.t()}
  def list_my_sessions(connection, opts), do: impl().list_my_sessions(connection, opts)

  @callback perform_native_logout(
              Tesla.Env.client(),
              Ory.Model.PerformNativeLogoutBody.t(),
              keyword()
            ) :: {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t()} | {:error, Tesla.Env.t()}
  def perform_native_logout(connection, perform_native_logout_body, opts),
    do: impl().perform_native_logout(connection, perform_native_logout_body, opts)

  @callback to_session(Tesla.Env.client(), keyword()) ::
              {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.Session.t()}
              | {:error, Tesla.Env.t()}
  def to_session(connection, opts), do: impl().to_session(connection, opts)

  @callback update_login_flow(
              Tesla.Env.client(),
              String.t(),
              Ory.Model.UpdateLoginFlowBody.t(),
              keyword()
            ) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.LoginFlow.t()}
              | {:ok, Ory.Model.ErrorBrowserLocationChangeRequired.t()}
              | {:ok, Ory.Model.SuccessfulNativeLogin.t()}
              | {:error, Tesla.Env.t()}
  def update_login_flow(connection, flow, update_login_flow_body, opts),
    do: impl().update_login_flow(connection, flow, update_login_flow_body, opts)

  @callback update_logout_flow(Tesla.Env.client(), keyword()) ::
              {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t()} | {:error, Tesla.Env.t()}
  def update_logout_flow(connection, opts), do: impl().update_logout_flow(connection, opts)

  @callback update_recovery_flow(
              Tesla.Env.client(),
              String.t(),
              Ory.Model.UpdateRecoveryFlowBody.t(),
              keyword()
            ) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.RecoveryFlow.t()}
              | {:ok, Ory.Model.ErrorBrowserLocationChangeRequired.t()}
              | {:error, Tesla.Env.t()}
  def update_recovery_flow(connection, flow, update_recovery_flow_body, opts),
    do: impl().update_recovery_flow(connection, flow, update_recovery_flow_body, opts)

  @callback update_registration_flow(
              Tesla.Env.client(),
              String.t(),
              Ory.Model.UpdateRegistrationFlowBody.t(),
              keyword()
            ) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.ErrorBrowserLocationChangeRequired.t()}
              | {:ok, Ory.Model.RegistrationFlow.t()}
              | {:ok, Ory.Model.SuccessfulNativeRegistration.t()}
              | {:error, Tesla.Env.t()}
  def update_registration_flow(connection, flow, update_registration_flow_body, opts),
    do: impl().update_registration_flow(connection, flow, update_registration_flow_body, opts)

  @callback update_settings_flow(
              Tesla.Env.client(),
              String.t(),
              Ory.Model.UpdateSettingsFlowBody.t(),
              keyword()
            ) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.ErrorBrowserLocationChangeRequired.t()}
              | {:ok, Ory.Model.SettingsFlow.t()}
              | {:error, Tesla.Env.t()}
  def update_settings_flow(connection, flow, update_settings_flow_body, opts),
    do: impl().update_settings_flow(connection, flow, update_settings_flow_body, opts)

  @callback update_verification_flow(
              Tesla.Env.client(),
              String.t(),
              Ory.Model.UpdateVerificationFlowBody.t(),
              keyword()
            ) ::
              {:ok, nil}
              | {:ok, Ory.Model.ErrorGeneric.t()}
              | {:ok, Ory.Model.VerificationFlow.t()}
              | {:error, Tesla.Env.t()}
  def update_verification_flow(connection, flow, update_verification_flow_body, opts),
    do: impl().update_verification_flow(connection, flow, update_verification_flow_body, opts)

  defp impl do
    Application.get_env(:ory_kratos, :frontend_client, Ory.Api.Frontend.Client)
  end
end

defmodule Ory.Api.Frontend.Client do
  @moduledoc """
  API calls for all endpoints tagged `Frontend`.
  """

  alias Ory.Connection
  import Ory.RequestBuilder

  @behaviour Ory.Api.Frontend

  @doc """
  Create Login Flow for Browsers
  This endpoint initializes a browser-based user login flow. This endpoint will set the appropriate cookies and anti-CSRF measures required for browser-based flows.  If this endpoint is opened as a link in the browser, it will be redirected to `selfservice.flows.login.ui_url` with the flow ID set as the query parameter `?flow=`. If a valid user session exists already, the browser will be redirected to `urls.default_redirect_url` unless the query parameter `?refresh=true` was set.  If this endpoint is called via an AJAX request, the response contains the flow without a redirect. In the case of an error, the `error.id` of the JSON response body can be one of:  `session_already_available`: The user is already signed in. `session_aal1_required`: Multi-factor auth (e.g. 2fa) was requested but the user has no session yet. `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred. `security_identity_mismatch`: The requested `?return_to` address is not allowed to be used. Adjust this in the configuration!  The optional query parameter login_challenge is set when using Kratos with Hydra in an OAuth2 flow. See the oauth2_provider.url configuration option.  This endpoint is NOT INTENDED for clients that do not have a browser (Chrome, Firefox, ...) as cookies are needed.  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:refresh` (boolean()): Refresh a login session  If set to true, this will refresh an existing login session by asking the user to sign in again. This will reset the authenticated_at time of the session.
    - `:aal` (String.t): Request a Specific AuthenticationMethod Assurance Level  Use this parameter to upgrade an existing session's authenticator assurance level (AAL). This allows you to ask for multi-factor authentication. When an identity sign in using e.g. username+password, the AAL is 1. If you wish to \"upgrade\" the session's security by asking the user to perform TOTP / WebAuth/ ... you would set this to \"aal2\".
    - `:return_to` (String.t): The URL to return the browser to after the flow was completed.
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.
    - `:login_challenge` (String.t): An optional Hydra login challenge. If present, Kratos will cooperate with Ory Hydra to act as an OAuth2 identity provider.  The value for this parameter comes from `login_challenge` URL Query parameter sent to your application (e.g. `/login?login_challenge=abcde`).

  ### Returns

  - `{:ok, Ory.Model.LoginFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_browser_login_flow(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.LoginFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_browser_login_flow(connection, opts \\ []) do
    optional_params = %{
      :refresh => :query,
      :aal => :query,
      :return_to => :query,
      :Cookie => :headers,
      :login_challenge => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/login/browser")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.LoginFlow{}},
      {303, false},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create a Logout URL for Browsers
  This endpoint initializes a browser-based user logout flow and a URL which can be used to log out the user.  This endpoint is NOT INTENDED for API clients and only works with browsers (Chrome, Firefox, ...). For API clients you can call the `/self-service/logout/api` URL directly with the Ory Session Token.  The URL is only valid for the currently signed in user. If no user is signed in, this endpoint returns a 401 error.  When calling this endpoint from a backend, please ensure to properly forward the HTTP cookies.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:cookie` (String.t): HTTP Cookies  If you call this endpoint from a backend, please include the original Cookie header in the request.
    - `:return_to` (String.t): Return to URL  The URL to which the browser should be redirected to after the logout has been performed.

  ### Returns

  - `{:ok, Ory.Model.LogoutFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_browser_logout_flow(Tesla.Env.client(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.LogoutFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_browser_logout_flow(connection, opts \\ []) do
    optional_params = %{
      :cookie => :headers,
      :return_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/logout/browser")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.LogoutFlow{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {500, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Recovery Flow for Browsers
  This endpoint initializes a browser-based account recovery flow. Once initialized, the browser will be redirected to `selfservice.flows.recovery.ui_url` with the flow ID set as the query parameter `?flow=`. If a valid user session exists, the browser is returned to the configured return URL.  If this endpoint is called via an AJAX request, the response contains the recovery flow without any redirects or a 400 bad request error if the user is already authenticated.  This endpoint is NOT INTENDED for clients that do not have a browser (Chrome, Firefox, ...) as cookies are needed.  More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:return_to` (String.t): The URL to return the browser to after the flow was completed.

  ### Returns

  - `{:ok, Ory.Model.RecoveryFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_browser_recovery_flow(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.RecoveryFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_browser_recovery_flow(connection, opts \\ []) do
    optional_params = %{
      :return_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/recovery/browser")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.RecoveryFlow{}},
      {303, false},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Registration Flow for Browsers
  This endpoint initializes a browser-based user registration flow. This endpoint will set the appropriate cookies and anti-CSRF measures required for browser-based flows.  :::info  This endpoint is EXPERIMENTAL and subject to potential breaking changes in the future.  :::  If this endpoint is opened as a link in the browser, it will be redirected to `selfservice.flows.registration.ui_url` with the flow ID set as the query parameter `?flow=`. If a valid user session exists already, the browser will be redirected to `urls.default_redirect_url`.  If this endpoint is called via an AJAX request, the response contains the flow without a redirect. In the case of an error, the `error.id` of the JSON response body can be one of:  `session_already_available`: The user is already signed in. `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred. `security_identity_mismatch`: The requested `?return_to` address is not allowed to be used. Adjust this in the configuration!  If this endpoint is called via an AJAX request, the response contains the registration flow without a redirect.  This endpoint is NOT INTENDED for clients that do not have a browser (Chrome, Firefox, ...) as cookies are needed.  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:return_to` (String.t): The URL to return the browser to after the flow was completed.
    - `:login_challenge` (String.t): Ory OAuth 2.0 Login Challenge.  If set will cooperate with Ory OAuth2 and OpenID to act as an OAuth2 server / OpenID Provider.  The value for this parameter comes from `login_challenge` URL Query parameter sent to your application (e.g. `/registration?login_challenge=abcde`).  This feature is compatible with Ory Hydra when not running on the Ory Network.
    - `:after_verification_return_to` (String.t): The URL to return the browser to after the verification flow was completed.  After the registration flow is completed, the user will be sent a verification email. Upon completing the verification flow, this URL will be used to override the default `selfservice.flows.verification.after.default_redirect_to` value.

  ### Returns

  - `{:ok, Ory.Model.RegistrationFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_browser_registration_flow(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.RegistrationFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_browser_registration_flow(connection, opts \\ []) do
    optional_params = %{
      :return_to => :query,
      :login_challenge => :query,
      :after_verification_return_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/registration/browser")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.RegistrationFlow{}},
      {303, false},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Settings Flow for Browsers
  This endpoint initializes a browser-based user settings flow. Once initialized, the browser will be redirected to `selfservice.flows.settings.ui_url` with the flow ID set as the query parameter `?flow=`. If no valid Ory Kratos Session Cookie is included in the request, a login flow will be initialized.  If this endpoint is opened as a link in the browser, it will be redirected to `selfservice.flows.settings.ui_url` with the flow ID set as the query parameter `?flow=`. If no valid user session was set, the browser will be redirected to the login endpoint.  If this endpoint is called via an AJAX request, the response contains the settings flow without any redirects or a 401 forbidden error if no valid session was set.  Depending on your configuration this endpoint might return a 403 error if the session has a lower Authenticator Assurance Level (AAL) than is possible for the identity. This can happen if the identity has password + webauthn credentials (which would result in AAL2) but the session has only AAL1. If this error occurs, ask the user to sign in with the second factor (happens automatically for server-side browser flows) or change the configuration.  If this endpoint is called via an AJAX request, the response contains the flow without a redirect. In the case of an error, the `error.id` of the JSON response body can be one of:  `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred. `session_inactive`: No Ory Session was found - sign in a user first. `security_identity_mismatch`: The requested `?return_to` address is not allowed to be used. Adjust this in the configuration!  This endpoint is NOT INTENDED for clients that do not have a browser (Chrome, Firefox, ...) as cookies are needed.  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:return_to` (String.t): The URL to return the browser to after the flow was completed.
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.SettingsFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_browser_settings_flow(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.SettingsFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_browser_settings_flow(connection, opts \\ []) do
    optional_params = %{
      :return_to => :query,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/settings/browser")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SettingsFlow{}},
      {303, false},
      {400, %Ory.Model.ErrorGeneric{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Verification Flow for Browser Clients
  This endpoint initializes a browser-based account verification flow. Once initialized, the browser will be redirected to `selfservice.flows.verification.ui_url` with the flow ID set as the query parameter `?flow=`.  If this endpoint is called via an AJAX request, the response contains the recovery flow without any redirects.  This endpoint is NOT INTENDED for API clients and only works with browsers (Chrome, Firefox, ...).  More information can be found at [Ory Kratos Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/self-service/flows/verify-email-account-activation).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:return_to` (String.t): The URL to return the browser to after the flow was completed.

  ### Returns

  - `{:ok, Ory.Model.VerificationFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_browser_verification_flow(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.VerificationFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_browser_verification_flow(connection, opts \\ []) do
    optional_params = %{
      :return_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/verification/browser")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.VerificationFlow{}},
      {303, false},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Login Flow for Native Apps
  This endpoint initiates a login flow for native apps that do not use a browser, such as mobile devices, smart TVs, and so on.  If a valid provided session cookie or session token is provided, a 400 Bad Request error will be returned unless the URL query parameter `?refresh=true` is set.  To fetch an existing login flow call `/self-service/login/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks, including CSRF login attacks.  In the case of an error, the `error.id` of the JSON response body can be one of:  `session_already_available`: The user is already signed in. `session_aal1_required`: Multi-factor auth (e.g. 2fa) was requested but the user has no session yet. `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:refresh` (boolean()): Refresh a login session  If set to true, this will refresh an existing login session by asking the user to sign in again. This will reset the authenticated_at time of the session.
    - `:aal` (String.t): Request a Specific AuthenticationMethod Assurance Level  Use this parameter to upgrade an existing session's authenticator assurance level (AAL). This allows you to ask for multi-factor authentication. When an identity sign in using e.g. username+password, the AAL is 1. If you wish to \"upgrade\" the session's security by asking the user to perform TOTP / WebAuth/ ... you would set this to \"aal2\".
    - `:"X-Session-Token"` (String.t): The Session Token of the Identity performing the settings flow.
    - `:return_session_token_exchange_code` (boolean()): EnableSessionTokenExchangeCode requests the login flow to include a code that can be used to retrieve the session token after the login flow has been completed.
    - `:return_to` (String.t): The URL to return the browser to after the flow was completed.

  ### Returns

  - `{:ok, Ory.Model.LoginFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_native_login_flow(Tesla.Env.client(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.LoginFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_native_login_flow(connection, opts \\ []) do
    optional_params = %{
      :refresh => :query,
      :aal => :query,
      :"X-Session-Token" => :headers,
      :return_session_token_exchange_code => :query,
      :return_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/login/api")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.LoginFlow{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Recovery Flow for Native Apps
  This endpoint initiates a recovery flow for API clients such as mobile devices, smart TVs, and so on.  If a valid provided session cookie or session token is provided, a 400 Bad Request error.  To fetch an existing recovery flow call `/self-service/recovery/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.RecoveryFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_native_recovery_flow(Tesla.Env.client(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.RecoveryFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_native_recovery_flow(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/self-service/recovery/api")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.RecoveryFlow{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Registration Flow for Native Apps
  This endpoint initiates a registration flow for API clients such as mobile devices, smart TVs, and so on.  If a valid provided session cookie or session token is provided, a 400 Bad Request error will be returned unless the URL query parameter `?refresh=true` is set.  To fetch an existing registration flow call `/self-service/registration/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks.  In the case of an error, the `error.id` of the JSON response body can be one of:  `session_already_available`: The user is already signed in. `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:return_session_token_exchange_code` (boolean()): EnableSessionTokenExchangeCode requests the login flow to include a code that can be used to retrieve the session token after the login flow has been completed.
    - `:return_to` (String.t): The URL to return the browser to after the flow was completed.

  ### Returns

  - `{:ok, Ory.Model.RegistrationFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_native_registration_flow(Tesla.Env.client(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.RegistrationFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_native_registration_flow(connection, opts \\ []) do
    optional_params = %{
      :return_session_token_exchange_code => :query,
      :return_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/registration/api")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.RegistrationFlow{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Settings Flow for Native Apps
  This endpoint initiates a settings flow for API clients such as mobile devices, smart TVs, and so on. You must provide a valid Ory Kratos Session Token for this endpoint to respond with HTTP 200 OK.  To fetch an existing settings flow call `/self-service/settings/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks.  Depending on your configuration this endpoint might return a 403 error if the session has a lower Authenticator Assurance Level (AAL) than is possible for the identity. This can happen if the identity has password + webauthn credentials (which would result in AAL2) but the session has only AAL1. If this error occurs, ask the user to sign in with the second factor or change the configuration.  In the case of an error, the `error.id` of the JSON response body can be one of:  `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred. `session_inactive`: No Ory Session was found - sign in a user first.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"X-Session-Token"` (String.t): The Session Token of the Identity performing the settings flow.

  ### Returns

  - `{:ok, Ory.Model.SettingsFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_native_settings_flow(Tesla.Env.client(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.SettingsFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_native_settings_flow(connection, opts \\ []) do
    optional_params = %{
      :"X-Session-Token" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/settings/api")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SettingsFlow{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create Verification Flow for Native Apps
  This endpoint initiates a verification flow for API clients such as mobile devices, smart TVs, and so on.  To fetch an existing verification flow call `/self-service/verification/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/self-service/flows/verify-email-account-activation).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.VerificationFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_native_verification_flow(Tesla.Env.client(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.VerificationFlow.t()}
          | {:error, Tesla.Env.t()}
  def create_native_verification_flow(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/self-service/verification/api")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.VerificationFlow{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Disable my other sessions
  Calling this endpoint invalidates all except the current session that belong to the logged-in user. Session data are not deleted.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"X-Session-Token"` (String.t): Set the Session Token when calling from non-browser clients. A session token has a format of `MP2YWEMeM8MxjkGKpH4dqOQ4Q4DlSPaj`.
    - `:Cookie` (String.t): Set the Cookie Header. This is especially useful when calling this endpoint from a server-side application. In that scenario you must include the HTTP Cookie Header which originally was included in the request to your server. An example of a session in the HTTP Cookie Header is: `ory_kratos_session=a19iOVAbdzdgl70Rq1QZmrKmcjDtdsviCTZx7m9a9yHIUS8Wa9T7hvqyGTsLHi6Qifn2WUfpAKx9DWp0SJGleIn9vh2YF4A16id93kXFTgIgmwIOvbVAScyrx7yVl6bPZnCx27ec4WQDtaTewC1CpgudeDV2jQQnSaCP6ny3xa8qLH-QUgYqdQuoA_LF1phxgRCUfIrCLQOkolX5nv3ze_f==`.  It is ok if more than one cookie are included here as all other cookies will be ignored.

  ### Returns

  - `{:ok, Ory.Model.DeleteMySessionsCount.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec disable_my_other_sessions(Tesla.Env.client(), keyword()) ::
          {:ok, Ory.Model.DeleteMySessionsCount.t()}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:error, Tesla.Env.t()}
  def disable_my_other_sessions(connection, opts \\ []) do
    optional_params = %{
      :"X-Session-Token" => :headers,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/sessions")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.DeleteMySessionsCount{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Disable one of my sessions
  Calling this endpoint invalidates the specified session. The current session cannot be revoked. Session data are not deleted.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `id` (String.t): ID is the session's ID.
  - `opts` (keyword): Optional parameters
    - `:"X-Session-Token"` (String.t): Set the Session Token when calling from non-browser clients. A session token has a format of `MP2YWEMeM8MxjkGKpH4dqOQ4Q4DlSPaj`.
    - `:Cookie` (String.t): Set the Cookie Header. This is especially useful when calling this endpoint from a server-side application. In that scenario you must include the HTTP Cookie Header which originally was included in the request to your server. An example of a session in the HTTP Cookie Header is: `ory_kratos_session=a19iOVAbdzdgl70Rq1QZmrKmcjDtdsviCTZx7m9a9yHIUS8Wa9T7hvqyGTsLHi6Qifn2WUfpAKx9DWp0SJGleIn9vh2YF4A16id93kXFTgIgmwIOvbVAScyrx7yVl6bPZnCx27ec4WQDtaTewC1CpgudeDV2jQQnSaCP6ny3xa8qLH-QUgYqdQuoA_LF1phxgRCUfIrCLQOkolX5nv3ze_f==`.  It is ok if more than one cookie are included here as all other cookies will be ignored.

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec disable_my_session(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t()} | {:error, Tesla.Env.t()}
  def disable_my_session(connection, id, opts \\ []) do
    optional_params = %{
      :"X-Session-Token" => :headers,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/sessions/#{id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, %Ory.Model.ErrorGeneric{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Exchange Session Token

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `init_code` (String.t): The part of the code return when initializing the flow.
  - `return_to_code` (String.t): The part of the code returned by the return_to URL.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.SuccessfulNativeLogin.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec exchange_session_token(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.SuccessfulNativeLogin.t()}
          | {:error, Tesla.Env.t()}
  def exchange_session_token(connection, init_code, return_to_code, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/sessions/token-exchange")
      |> add_param(:query, :init_code, init_code)
      |> add_param(:query, :return_to_code, return_to_code)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SuccessfulNativeLogin{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Get User-Flow Errors
  This endpoint returns the error associated with a user-facing self service errors.  This endpoint supports stub values to help you implement the error UI:  `?id=stub:500` - returns a stub 500 (Internal Server Error) error.  More information can be found at [Ory Kratos User User Facing Error Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-facing-errors).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `id` (String.t): Error is the error's ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.FlowError.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_flow_error(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Ory.Model.FlowError.t()}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:error, Tesla.Env.t()}
  def get_flow_error(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/self-service/errors")
      |> add_param(:query, :id, id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.FlowError{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {500, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Get Login Flow
  This endpoint returns a login flow's context with, for example, error details and other information.  Browser flows expect the anti-CSRF cookie to be included in the request's HTTP Cookie Header. For AJAX requests you must ensure that cookies are included in the request or requests will fail.  If you use the browser-flow for server-side apps, the services need to run on a common top-level-domain and you need to forward the incoming HTTP Cookie header to this endpoint:  ```js pseudo-code example router.get('/login', async function (req, res) { const flow = await client.getLoginFlow(req.header('cookie'), req.query['flow'])  res.render('login', flow) }) ```  This request may fail due to several reasons. The `error.id` can be one of:  `session_already_available`: The user is already signed in. `self_service_flow_expired`: The flow is expired and you should request a new one.  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `id` (String.t): The Login Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/login?flow=abcde`).
  - `opts` (keyword): Optional parameters
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.LoginFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_login_flow(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.LoginFlow.t()}
          | {:error, Tesla.Env.t()}
  def get_login_flow(connection, id, opts \\ []) do
    optional_params = %{
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/login/flows")
      |> add_param(:query, :id, id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.LoginFlow{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Get Recovery Flow
  This endpoint returns a recovery flow's context with, for example, error details and other information.  Browser flows expect the anti-CSRF cookie to be included in the request's HTTP Cookie Header. For AJAX requests you must ensure that cookies are included in the request or requests will fail.  If you use the browser-flow for server-side apps, the services need to run on a common top-level-domain and you need to forward the incoming HTTP Cookie header to this endpoint:  ```js pseudo-code example router.get('/recovery', async function (req, res) { const flow = await client.getRecoveryFlow(req.header('Cookie'), req.query['flow'])  res.render('recovery', flow) }) ```  More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `id` (String.t): The Flow ID  The value for this parameter comes from `request` URL Query parameter sent to your application (e.g. `/recovery?flow=abcde`).
  - `opts` (keyword): Optional parameters
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.RecoveryFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_recovery_flow(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.RecoveryFlow.t()}
          | {:error, Tesla.Env.t()}
  def get_recovery_flow(connection, id, opts \\ []) do
    optional_params = %{
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/recovery/flows")
      |> add_param(:query, :id, id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.RecoveryFlow{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Get Registration Flow
  This endpoint returns a registration flow's context with, for example, error details and other information.  Browser flows expect the anti-CSRF cookie to be included in the request's HTTP Cookie Header. For AJAX requests you must ensure that cookies are included in the request or requests will fail.  If you use the browser-flow for server-side apps, the services need to run on a common top-level-domain and you need to forward the incoming HTTP Cookie header to this endpoint:  ```js pseudo-code example router.get('/registration', async function (req, res) { const flow = await client.getRegistrationFlow(req.header('cookie'), req.query['flow'])  res.render('registration', flow) }) ```  This request may fail due to several reasons. The `error.id` can be one of:  `session_already_available`: The user is already signed in. `self_service_flow_expired`: The flow is expired and you should request a new one.  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `id` (String.t): The Registration Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/registration?flow=abcde`).
  - `opts` (keyword): Optional parameters
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.RegistrationFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_registration_flow(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.RegistrationFlow.t()}
          | {:error, Tesla.Env.t()}
  def get_registration_flow(connection, id, opts \\ []) do
    optional_params = %{
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/registration/flows")
      |> add_param(:query, :id, id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.RegistrationFlow{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Get Settings Flow
  When accessing this endpoint through Ory Kratos' Public API you must ensure that either the Ory Kratos Session Cookie or the Ory Kratos Session Token are set.  Depending on your configuration this endpoint might return a 403 error if the session has a lower Authenticator Assurance Level (AAL) than is possible for the identity. This can happen if the identity has password + webauthn credentials (which would result in AAL2) but the session has only AAL1. If this error occurs, ask the user to sign in with the second factor or change the configuration.  You can access this endpoint without credentials when using Ory Kratos' Admin API.  If this endpoint is called via an AJAX request, the response contains the flow without a redirect. In the case of an error, the `error.id` of the JSON response body can be one of:  `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred. `session_inactive`: No Ory Session was found - sign in a user first. `security_identity_mismatch`: The flow was interrupted with `session_refresh_required` but apparently some other identity logged in instead.  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `id` (String.t): ID is the Settings Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/settings?flow=abcde`).
  - `opts` (keyword): Optional parameters
    - `:"X-Session-Token"` (String.t): The Session Token  When using the SDK in an app without a browser, please include the session token here.
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.SettingsFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_settings_flow(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.SettingsFlow.t()}
          | {:error, Tesla.Env.t()}
  def get_settings_flow(connection, id, opts \\ []) do
    optional_params = %{
      :"X-Session-Token" => :headers,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/settings/flows")
      |> add_param(:query, :id, id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SettingsFlow{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Get Verification Flow
  This endpoint returns a verification flow's context with, for example, error details and other information.  Browser flows expect the anti-CSRF cookie to be included in the request's HTTP Cookie Header. For AJAX requests you must ensure that cookies are included in the request or requests will fail.  If you use the browser-flow for server-side apps, the services need to run on a common top-level-domain and you need to forward the incoming HTTP Cookie header to this endpoint:  ```js pseudo-code example router.get('/recovery', async function (req, res) { const flow = await client.getVerificationFlow(req.header('cookie'), req.query['flow'])  res.render('verification', flow) }) ```  More information can be found at [Ory Kratos Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/self-service/flows/verify-email-account-activation).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `id` (String.t): The Flow ID  The value for this parameter comes from `request` URL Query parameter sent to your application (e.g. `/verification?flow=abcde`).
  - `opts` (keyword): Optional parameters
    - `:cookie` (String.t): HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here.

  ### Returns

  - `{:ok, Ory.Model.VerificationFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_verification_flow(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.VerificationFlow.t()}
          | {:error, Tesla.Env.t()}
  def get_verification_flow(connection, id, opts \\ []) do
    optional_params = %{
      :cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/verification/flows")
      |> add_param(:query, :id, id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.VerificationFlow{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Get WebAuthn JavaScript
  This endpoint provides JavaScript which is needed in order to perform WebAuthn login and registration.  If you are building a JavaScript Browser App (e.g. in ReactJS or AngularJS) you will need to load this file:  ```html <script src=\"https://public-kratos.example.org/.well-known/ory/webauthn.js\" type=\"script\" async /> ```  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_web_authn_java_script(Tesla.Env.client(), keyword()) ::
          {:ok, String.t()} | {:error, Tesla.Env.t()}
  def get_web_authn_java_script(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/.well-known/ory/webauthn.js")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Get My Active Sessions
  This endpoints returns all other active sessions that belong to the logged-in user. The current session can be retrieved by calling the `/sessions/whoami` endpoint.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:per_page` (integer()): Items per Page  This is the number of items per page.
    - `:page` (integer()): Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist.
    - `:"X-Session-Token"` (String.t): Set the Session Token when calling from non-browser clients. A session token has a format of `MP2YWEMeM8MxjkGKpH4dqOQ4Q4DlSPaj`.
    - `:Cookie` (String.t): Set the Cookie Header. This is especially useful when calling this endpoint from a server-side application. In that scenario you must include the HTTP Cookie Header which originally was included in the request to your server. An example of a session in the HTTP Cookie Header is: `ory_kratos_session=a19iOVAbdzdgl70Rq1QZmrKmcjDtdsviCTZx7m9a9yHIUS8Wa9T7hvqyGTsLHi6Qifn2WUfpAKx9DWp0SJGleIn9vh2YF4A16id93kXFTgIgmwIOvbVAScyrx7yVl6bPZnCx27ec4WQDtaTewC1CpgudeDV2jQQnSaCP6ny3xa8qLH-QUgYqdQuoA_LF1phxgRCUfIrCLQOkolX5nv3ze_f==`.  It is ok if more than one cookie are included here as all other cookies will be ignored.

  ### Returns

  - `{:ok, [%Session{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_my_sessions(Tesla.Env.client(), keyword()) ::
          {:ok, list(Ory.Model.Session.t())}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:error, Tesla.Env.t()}
  def list_my_sessions(connection, opts \\ []) do
    optional_params = %{
      :per_page => :query,
      :page => :query,
      :"X-Session-Token" => :headers,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/sessions")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Ory.Model.Session{}]},
      {400, %Ory.Model.ErrorGeneric{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Perform Logout for Native Apps
  Use this endpoint to log out an identity using an Ory Session Token. If the Ory Session Token was successfully revoked, the server returns a 204 No Content response. A 204 No Content response is also sent when the Ory Session Token has been revoked already before.  If the Ory Session Token is malformed or does not exist a 403 Forbidden response will be returned.  This endpoint does not remove any HTTP Cookies - use the Browser-Based Self-Service Logout Flow instead.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `perform_native_logout_body` (PerformNativeLogoutBody):
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec perform_native_logout(
          Tesla.Env.client(),
          Ory.Model.PerformNativeLogoutBody.t(),
          keyword()
        ) :: {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t()} | {:error, Tesla.Env.t()}
  def perform_native_logout(connection, perform_native_logout_body, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/self-service/logout/api")
      |> add_param(:body, :body, perform_native_logout_body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Check Who the Current HTTP Session Belongs To
  Uses the HTTP Headers in the GET request to determine (e.g. by using checking the cookies) who is authenticated. Returns a session object in the body or 401 if the credentials are invalid or no credentials were sent. When the request it successful it adds the user ID to the 'X-Kratos-Authenticated-Identity-Id' header in the response.  If you call this endpoint from a server-side application, you must forward the HTTP Cookie Header to this endpoint:  ```js pseudo-code example router.get('/protected-endpoint', async function (req, res) { const session = await client.toSession(undefined, req.header('cookie'))  console.log(session) }) ```  When calling this endpoint from a non-browser application (e.g. mobile app) you must include the session token:  ```js pseudo-code example ... const session = await client.toSession(\"the-session-token\")  console.log(session) ```  Depending on your configuration this endpoint might return a 403 status code if the session has a lower Authenticator Assurance Level (AAL) than is possible for the identity. This can happen if the identity has password + webauthn credentials (which would result in AAL2) but the session has only AAL1. If this error occurs, ask the user to sign in with the second factor or change the configuration.  This endpoint is useful for:  AJAX calls. Remember to send credentials and set up CORS correctly! Reverse proxies and API Gateways Server-side calls - use the `X-Session-Token` header!  This endpoint authenticates users by checking:  if the `Cookie` HTTP header was set containing an Ory Kratos Session Cookie; if the `Authorization: bearer <ory-session-token>` HTTP header was set with a valid Ory Kratos Session Token; if the `X-Session-Token` HTTP header was set with a valid Ory Kratos Session Token.  If none of these headers are set or the cookie or token are invalid, the endpoint returns a HTTP 401 status code.  As explained above, this request may fail due to several reasons. The `error.id` can be one of:  `session_inactive`: No active session was found in the request (e.g. no Ory Session Cookie / Ory Session Token). `session_aal2_required`: An active session was found but it does not fulfil the Authenticator Assurance Level, implying that the session must (e.g.) authenticate the second factor.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"X-Session-Token"` (String.t): Set the Session Token when calling from non-browser clients. A session token has a format of `MP2YWEMeM8MxjkGKpH4dqOQ4Q4DlSPaj`.
    - `:Cookie` (String.t): Set the Cookie Header. This is especially useful when calling this endpoint from a server-side application. In that scenario you must include the HTTP Cookie Header which originally was included in the request to your server. An example of a session in the HTTP Cookie Header is: `ory_kratos_session=a19iOVAbdzdgl70Rq1QZmrKmcjDtdsviCTZx7m9a9yHIUS8Wa9T7hvqyGTsLHi6Qifn2WUfpAKx9DWp0SJGleIn9vh2YF4A16id93kXFTgIgmwIOvbVAScyrx7yVl6bPZnCx27ec4WQDtaTewC1CpgudeDV2jQQnSaCP6ny3xa8qLH-QUgYqdQuoA_LF1phxgRCUfIrCLQOkolX5nv3ze_f==`.  It is ok if more than one cookie are included here as all other cookies will be ignored.

  ### Returns

  - `{:ok, Ory.Model.Session.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec to_session(Tesla.Env.client(), keyword()) ::
          {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.Session.t()}
          | {:error, Tesla.Env.t()}
  def to_session(connection, opts \\ []) do
    optional_params = %{
      :"X-Session-Token" => :headers,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/sessions/whoami")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.Session{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Submit a Login Flow
  :::info  This endpoint is EXPERIMENTAL and subject to potential breaking changes in the future.  :::  Use this endpoint to complete a login flow. This endpoint behaves differently for API and browser flows.  API flows expect `application/json` to be sent in the body and responds with HTTP 200 and a application/json body with the session token on success; HTTP 410 if the original flow expired with the appropriate error messages set and optionally a `use_flow_id` parameter in the body; HTTP 400 on form validation errors.  Browser flows expect a Content-Type of `application/x-www-form-urlencoded` or `application/json` to be sent in the body and respond with a HTTP 303 redirect to the post/after login URL or the `return_to` value if it was set and if the login succeeded; a HTTP 303 redirect to the login UI URL with the flow ID containing the validation errors otherwise.  Browser flows with an accept header of `application/json` will not redirect but instead respond with HTTP 200 and a application/json body with the signed in identity and a `Set-Cookie` header on success; HTTP 303 redirect to a fresh login flow if the original flow expired with the appropriate error messages set; HTTP 400 on form validation errors.  If this endpoint is called with `Accept: application/json` in the header, the response contains the flow without a redirect. In the case of an error, the `error.id` of the JSON response body can be one of:  `session_already_available`: The user is already signed in. `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred. `security_identity_mismatch`: The requested `?return_to` address is not allowed to be used. Adjust this in the configuration! `browser_location_change_required`: Usually sent when an AJAX request indicates that the browser needs to open a specific URL. Most likely used in Social Sign In flows.  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `flow` (String.t): The Login Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/login?flow=abcde`).
  - `update_login_flow_body` (UpdateLoginFlowBody):
  - `opts` (keyword): Optional parameters
    - `:"X-Session-Token"` (String.t): The Session Token of the Identity performing the settings flow.
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.SuccessfulNativeLogin.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_login_flow(
          Tesla.Env.client(),
          String.t(),
          Ory.Model.UpdateLoginFlowBody.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.LoginFlow.t()}
          | {:ok, Ory.Model.ErrorBrowserLocationChangeRequired.t()}
          | {:ok, Ory.Model.SuccessfulNativeLogin.t()}
          | {:error, Tesla.Env.t()}
  def update_login_flow(connection, flow, update_login_flow_body, opts \\ []) do
    optional_params = %{
      :"X-Session-Token" => :headers,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:post)
      |> url("/self-service/login")
      |> add_param(:query, :flow, flow)
      |> add_param(:body, :body, update_login_flow_body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SuccessfulNativeLogin{}},
      {303, false},
      {400, %Ory.Model.LoginFlow{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {422, %Ory.Model.ErrorBrowserLocationChangeRequired{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Update Logout Flow
  This endpoint logs out an identity in a self-service manner.  If the `Accept` HTTP header is not set to `application/json`, the browser will be redirected (HTTP 303 See Other) to the `return_to` parameter of the initial request or fall back to `urls.default_return_to`.  If the `Accept` HTTP header is set to `application/json`, a 204 No Content response will be sent on successful logout instead.  This endpoint is NOT INTENDED for API clients and only works with browsers (Chrome, Firefox, ...). For API clients you can call the `/self-service/logout/api` URL directly with the Ory Session Token.  More information can be found at [Ory Kratos User Logout Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-logout).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:token` (String.t): A Valid Logout Token  If you do not have a logout token because you only have a session cookie, call `/self-service/logout/browser` to generate a URL for this endpoint.
    - `:return_to` (String.t): The URL to return to after the logout was completed.
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_logout_flow(Tesla.Env.client(), keyword()) ::
          {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t()} | {:error, Tesla.Env.t()}
  def update_logout_flow(connection, opts \\ []) do
    optional_params = %{
      :token => :query,
      :return_to => :query,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/self-service/logout")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {303, false},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Complete Recovery Flow
  Use this endpoint to complete a recovery flow. This endpoint behaves differently for API and browser flows and has several states:  `choose_method` expects `flow` (in the URL query) and `email` (in the body) to be sent and works with API- and Browser-initiated flows. For API clients and Browser clients with HTTP Header `Accept: application/json` it either returns a HTTP 200 OK when the form is valid and HTTP 400 OK when the form is invalid. and a HTTP 303 See Other redirect with a fresh recovery flow if the flow was otherwise invalid (e.g. expired). For Browser clients without HTTP Header `Accept` or with `Accept: text/*` it returns a HTTP 303 See Other redirect to the Recovery UI URL with the Recovery Flow ID appended. `sent_email` is the success state after `choose_method` for the `link` method and allows the user to request another recovery email. It works for both API and Browser-initiated flows and returns the same responses as the flow in `choose_method` state. `passed_challenge` expects a `token` to be sent in the URL query and given the nature of the flow (\"sending a recovery link\") does not have any API capabilities. The server responds with a HTTP 303 See Other redirect either to the Settings UI URL (if the link was valid) and instructs the user to update their password, or a redirect to the Recover UI URL with a new Recovery Flow ID which contains an error message that the recovery link was invalid.  More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `flow` (String.t): The Recovery Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/recovery?flow=abcde`).
  - `update_recovery_flow_body` (UpdateRecoveryFlowBody):
  - `opts` (keyword): Optional parameters
    - `:token` (String.t): Recovery Token  The recovery token which completes the recovery request. If the token is invalid (e.g. expired) an error will be shown to the end-user.  This parameter is usually set in a link and not used by any direct API call.
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.RecoveryFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_recovery_flow(
          Tesla.Env.client(),
          String.t(),
          Ory.Model.UpdateRecoveryFlowBody.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.RecoveryFlow.t()}
          | {:ok, Ory.Model.ErrorBrowserLocationChangeRequired.t()}
          | {:error, Tesla.Env.t()}
  def update_recovery_flow(connection, flow, update_recovery_flow_body, opts \\ []) do
    optional_params = %{
      :token => :query,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:post)
      |> url("/self-service/recovery")
      |> add_param(:query, :flow, flow)
      |> add_param(:body, :body, update_recovery_flow_body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.RecoveryFlow{}},
      {303, false},
      {400, %Ory.Model.RecoveryFlow{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {422, %Ory.Model.ErrorBrowserLocationChangeRequired{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Update Registration Flow
  Use this endpoint to complete a registration flow by sending an identity's traits and password. This endpoint behaves differently for API and browser flows.  API flows expect `application/json` to be sent in the body and respond with HTTP 200 and a application/json body with the created identity success - if the session hook is configured the `session` and `session_token` will also be included; HTTP 410 if the original flow expired with the appropriate error messages set and optionally a `use_flow_id` parameter in the body; HTTP 400 on form validation errors.  Browser flows expect a Content-Type of `application/x-www-form-urlencoded` or `application/json` to be sent in the body and respond with a HTTP 303 redirect to the post/after registration URL or the `return_to` value if it was set and if the registration succeeded; a HTTP 303 redirect to the registration UI URL with the flow ID containing the validation errors otherwise.  Browser flows with an accept header of `application/json` will not redirect but instead respond with HTTP 200 and a application/json body with the signed in identity and a `Set-Cookie` header on success; HTTP 303 redirect to a fresh login flow if the original flow expired with the appropriate error messages set; HTTP 400 on form validation errors.  If this endpoint is called with `Accept: application/json` in the header, the response contains the flow without a redirect. In the case of an error, the `error.id` of the JSON response body can be one of:  `session_already_available`: The user is already signed in. `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred. `security_identity_mismatch`: The requested `?return_to` address is not allowed to be used. Adjust this in the configuration! `browser_location_change_required`: Usually sent when an AJAX request indicates that the browser needs to open a specific URL. Most likely used in Social Sign In flows.  More information can be found at [Ory Kratos User Login](https://www.ory.sh/docs/kratos/self-service/flows/user-login) and [User Registration Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-registration).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `flow` (String.t): The Registration Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/registration?flow=abcde`).
  - `update_registration_flow_body` (UpdateRegistrationFlowBody):
  - `opts` (keyword): Optional parameters
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.SuccessfulNativeRegistration.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_registration_flow(
          Tesla.Env.client(),
          String.t(),
          Ory.Model.UpdateRegistrationFlowBody.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.ErrorBrowserLocationChangeRequired.t()}
          | {:ok, Ory.Model.RegistrationFlow.t()}
          | {:ok, Ory.Model.SuccessfulNativeRegistration.t()}
          | {:error, Tesla.Env.t()}
  def update_registration_flow(connection, flow, update_registration_flow_body, opts \\ []) do
    optional_params = %{
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:post)
      |> url("/self-service/registration")
      |> add_param(:query, :flow, flow)
      |> add_param(:body, :body, update_registration_flow_body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SuccessfulNativeRegistration{}},
      {303, false},
      {400, %Ory.Model.RegistrationFlow{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {422, %Ory.Model.ErrorBrowserLocationChangeRequired{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Complete Settings Flow
  Use this endpoint to complete a settings flow by sending an identity's updated password. This endpoint behaves differently for API and browser flows.  API-initiated flows expect `application/json` to be sent in the body and respond with HTTP 200 and an application/json body with the session token on success; HTTP 303 redirect to a fresh settings flow if the original flow expired with the appropriate error messages set; HTTP 400 on form validation errors. HTTP 401 when the endpoint is called without a valid session token. HTTP 403 when `selfservice.flows.settings.privileged_session_max_age` was reached or the session's AAL is too low. Implies that the user needs to re-authenticate.  Browser flows without HTTP Header `Accept` or with `Accept: text/*` respond with a HTTP 303 redirect to the post/after settings URL or the `return_to` value if it was set and if the flow succeeded; a HTTP 303 redirect to the Settings UI URL with the flow ID containing the validation errors otherwise. a HTTP 303 redirect to the login endpoint when `selfservice.flows.settings.privileged_session_max_age` was reached or the session's AAL is too low.  Browser flows with HTTP Header `Accept: application/json` respond with HTTP 200 and a application/json body with the signed in identity and a `Set-Cookie` header on success; HTTP 303 redirect to a fresh login flow if the original flow expired with the appropriate error messages set; HTTP 401 when the endpoint is called without a valid session cookie. HTTP 403 when the page is accessed without a session cookie or the session's AAL is too low. HTTP 400 on form validation errors.  Depending on your configuration this endpoint might return a 403 error if the session has a lower Authenticator Assurance Level (AAL) than is possible for the identity. This can happen if the identity has password + webauthn credentials (which would result in AAL2) but the session has only AAL1. If this error occurs, ask the user to sign in with the second factor (happens automatically for server-side browser flows) or change the configuration.  If this endpoint is called with a `Accept: application/json` HTTP header, the response contains the flow without a redirect. In the case of an error, the `error.id` of the JSON response body can be one of:  `session_refresh_required`: The identity requested to change something that needs a privileged session. Redirect the identity to the login init endpoint with query parameters `?refresh=true&return_to=<the-current-browser-url>`, or initiate a refresh login flow otherwise. `security_csrf_violation`: Unable to fetch the flow because a CSRF violation occurred. `session_inactive`: No Ory Session was found - sign in a user first. `security_identity_mismatch`: The flow was interrupted with `session_refresh_required` but apparently some other identity logged in instead. `security_identity_mismatch`: The requested `?return_to` address is not allowed to be used. Adjust this in the configuration! `browser_location_change_required`: Usually sent when an AJAX request indicates that the browser needs to open a specific URL. Most likely used in Social Sign In flows.  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `flow` (String.t): The Settings Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/settings?flow=abcde`).
  - `update_settings_flow_body` (UpdateSettingsFlowBody):
  - `opts` (keyword): Optional parameters
    - `:"X-Session-Token"` (String.t): The Session Token of the Identity performing the settings flow.
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.SettingsFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_settings_flow(
          Tesla.Env.client(),
          String.t(),
          Ory.Model.UpdateSettingsFlowBody.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.ErrorBrowserLocationChangeRequired.t()}
          | {:ok, Ory.Model.SettingsFlow.t()}
          | {:error, Tesla.Env.t()}
  def update_settings_flow(connection, flow, update_settings_flow_body, opts \\ []) do
    optional_params = %{
      :"X-Session-Token" => :headers,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:post)
      |> url("/self-service/settings")
      |> add_param(:query, :flow, flow)
      |> add_param(:body, :body, update_settings_flow_body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SettingsFlow{}},
      {303, false},
      {400, %Ory.Model.SettingsFlow{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {422, %Ory.Model.ErrorBrowserLocationChangeRequired{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Complete Verification Flow
  Use this endpoint to complete a verification flow. This endpoint behaves differently for API and browser flows and has several states:  `choose_method` expects `flow` (in the URL query) and `email` (in the body) to be sent and works with API- and Browser-initiated flows. For API clients and Browser clients with HTTP Header `Accept: application/json` it either returns a HTTP 200 OK when the form is valid and HTTP 400 OK when the form is invalid and a HTTP 303 See Other redirect with a fresh verification flow if the flow was otherwise invalid (e.g. expired). For Browser clients without HTTP Header `Accept` or with `Accept: text/*` it returns a HTTP 303 See Other redirect to the Verification UI URL with the Verification Flow ID appended. `sent_email` is the success state after `choose_method` when using the `link` method and allows the user to request another verification email. It works for both API and Browser-initiated flows and returns the same responses as the flow in `choose_method` state. `passed_challenge` expects a `token` to be sent in the URL query and given the nature of the flow (\"sending a verification link\") does not have any API capabilities. The server responds with a HTTP 303 See Other redirect either to the Settings UI URL (if the link was valid) and instructs the user to update their password, or a redirect to the Verification UI URL with a new Verification Flow ID which contains an error message that the verification link was invalid.  More information can be found at [Ory Kratos Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/self-service/flows/verify-email-account-activation).

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `flow` (String.t): The Verification Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/verification?flow=abcde`).
  - `update_verification_flow_body` (UpdateVerificationFlowBody):
  - `opts` (keyword): Optional parameters
    - `:token` (String.t): Verification Token  The verification token which completes the verification request. If the token is invalid (e.g. expired) an error will be shown to the end-user.  This parameter is usually set in a link and not used by any direct API call.
    - `:Cookie` (String.t): HTTP Cookies  When using the SDK in a browser app, on the server side you must include the HTTP Cookie Header sent by the client to your server here. This ensures that CSRF and session cookies are respected.

  ### Returns

  - `{:ok, Ory.Model.VerificationFlow.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_verification_flow(
          Tesla.Env.client(),
          String.t(),
          Ory.Model.UpdateVerificationFlowBody.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, Ory.Model.ErrorGeneric.t()}
          | {:ok, Ory.Model.VerificationFlow.t()}
          | {:error, Tesla.Env.t()}
  def update_verification_flow(connection, flow, update_verification_flow_body, opts \\ []) do
    optional_params = %{
      :token => :query,
      :Cookie => :headers
    }

    request =
      %{}
      |> method(:post)
      |> url("/self-service/verification")
      |> add_param(:query, :flow, flow)
      |> add_param(:body, :body, update_verification_flow_body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.VerificationFlow{}},
      {303, false},
      {400, %Ory.Model.VerificationFlow{}},
      {410, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end
end
