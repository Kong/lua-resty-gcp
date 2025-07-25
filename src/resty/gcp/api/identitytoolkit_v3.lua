return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "View and manage your data across Google Cloud Platform services",
        },
        ["https://www.googleapis.com/auth/firebase"] = {
          description = "View and administer all your Firebase data and settings",
        },
      },
    },
  },
  basePath = "/identitytoolkit/v3/relyingparty/",
  baseUrl = "https://www.googleapis.com/identitytoolkit/v3/relyingparty/",
  batchPath = "batch/identitytoolkit/v3",
  canonicalName = "Identity Toolkit",
  description = "Help the third party sites to implement federated login.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/identity-toolkit/v3/",
  etag = "\"9eZ1uxVRThTDhLJCZHhqs3eQWz4/taa97NuhcHSAt0fUktvGBcH-OqE\"",
  icons = {
    x16 = "https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png",
    x32 = "https://www.gstatic.com/images/branding/product/1x/googleg_32dp.png",
  },
  id = "identitytoolkit:v3",
  kind = "discovery#restDescription",
  name = "identitytoolkit",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    alt = {
      default = "json",
      description = "Data format for the response.",
      enum = {
        "json",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
      },
      location = "query",
      type = "string",
    },
    fields = {
      description = "Selector specifying which fields to include in a partial response.",
      location = "query",
      type = "string",
    },
    key = {
      description = "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.",
      location = "query",
      type = "string",
    },
    oauth_token = {
      description = "OAuth 2.0 token for the current user.",
      location = "query",
      type = "string",
    },
    prettyPrint = {
      default = "true",
      description = "Returns response with indentations and line breaks.",
      location = "query",
      type = "boolean",
    },
    quotaUser = {
      description = "An opaque string that represents a user for quota purposes. Must not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    userIp = {
      description = "Deprecated. Please use quotaUser instead.",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    relyingparty = {
      methods = {
        createAuthUri = {
          description = "Creates the URI used by the IdP to authenticate the user.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.createAuthUri",
          path = "createAuthUri",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyCreateAuthUriRequest",
          },
          response = {
            ["$ref"] = "CreateAuthUriResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        deleteAccount = {
          description = "Delete user account.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.deleteAccount",
          path = "deleteAccount",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyDeleteAccountRequest",
          },
          response = {
            ["$ref"] = "DeleteAccountResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        downloadAccount = {
          description = "Batch download user accounts.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.downloadAccount",
          path = "downloadAccount",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyDownloadAccountRequest",
          },
          response = {
            ["$ref"] = "DownloadAccountResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/firebase",
          },
        },
        emailLinkSignin = {
          description = "Reset password for a user.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.emailLinkSignin",
          path = "emailLinkSignin",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyEmailLinkSigninRequest",
          },
          response = {
            ["$ref"] = "EmailLinkSigninResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getAccountInfo = {
          description = "Returns the account info.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.getAccountInfo",
          path = "getAccountInfo",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyGetAccountInfoRequest",
          },
          response = {
            ["$ref"] = "GetAccountInfoResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getOobConfirmationCode = {
          description = "Get a code for user action confirmation.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.getOobConfirmationCode",
          path = "getOobConfirmationCode",
          request = {
            ["$ref"] = "Relyingparty",
          },
          response = {
            ["$ref"] = "GetOobConfirmationCodeResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getProjectConfig = {
          description = "Get project configuration.",
          httpMethod = "GET",
          id = "identitytoolkit.relyingparty.getProjectConfig",
          parameters = {
            delegatedProjectNumber = {
              description = "Delegated GCP project number of the request.",
              location = "query",
              type = "string",
            },
            projectNumber = {
              description = "GCP project number of the request.",
              location = "query",
              type = "string",
            },
          },
          path = "getProjectConfig",
          response = {
            ["$ref"] = "IdentitytoolkitRelyingpartyGetProjectConfigResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getPublicKeys = {
          description = "Get token signing public key.",
          httpMethod = "GET",
          id = "identitytoolkit.relyingparty.getPublicKeys",
          path = "publicKeys",
          response = {
            ["$ref"] = "IdentitytoolkitRelyingpartyGetPublicKeysResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getRecaptchaParam = {
          description = "Get recaptcha secure param.",
          httpMethod = "GET",
          id = "identitytoolkit.relyingparty.getRecaptchaParam",
          path = "getRecaptchaParam",
          response = {
            ["$ref"] = "GetRecaptchaParamResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        resetPassword = {
          description = "Reset password for a user.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.resetPassword",
          path = "resetPassword",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyResetPasswordRequest",
          },
          response = {
            ["$ref"] = "ResetPasswordResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        sendVerificationCode = {
          description = "Send SMS verification code.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.sendVerificationCode",
          path = "sendVerificationCode",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartySendVerificationCodeRequest",
          },
          response = {
            ["$ref"] = "IdentitytoolkitRelyingpartySendVerificationCodeResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setAccountInfo = {
          description = "Set account info for a user.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.setAccountInfo",
          path = "setAccountInfo",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartySetAccountInfoRequest",
          },
          response = {
            ["$ref"] = "SetAccountInfoResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setProjectConfig = {
          description = "Set project configuration.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.setProjectConfig",
          path = "setProjectConfig",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartySetProjectConfigRequest",
          },
          response = {
            ["$ref"] = "IdentitytoolkitRelyingpartySetProjectConfigResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signOutUser = {
          description = "Sign out user.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.signOutUser",
          path = "signOutUser",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartySignOutUserRequest",
          },
          response = {
            ["$ref"] = "IdentitytoolkitRelyingpartySignOutUserResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signupNewUser = {
          description = "Signup new user.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.signupNewUser",
          path = "signupNewUser",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartySignupNewUserRequest",
          },
          response = {
            ["$ref"] = "SignupNewUserResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        uploadAccount = {
          description = "Batch upload existing user accounts.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.uploadAccount",
          path = "uploadAccount",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyUploadAccountRequest",
          },
          response = {
            ["$ref"] = "UploadAccountResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/firebase",
          },
        },
        verifyAssertion = {
          description = "Verifies the assertion returned by the IdP.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.verifyAssertion",
          path = "verifyAssertion",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyVerifyAssertionRequest",
          },
          response = {
            ["$ref"] = "VerifyAssertionResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        verifyCustomToken = {
          description = "Verifies the developer asserted ID token.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.verifyCustomToken",
          path = "verifyCustomToken",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyVerifyCustomTokenRequest",
          },
          response = {
            ["$ref"] = "VerifyCustomTokenResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        verifyPassword = {
          description = "Verifies the user entered password.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.verifyPassword",
          path = "verifyPassword",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyVerifyPasswordRequest",
          },
          response = {
            ["$ref"] = "VerifyPasswordResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        verifyPhoneNumber = {
          description = "Verifies ownership of a phone number and creates/updates the user account accordingly.",
          httpMethod = "POST",
          id = "identitytoolkit.relyingparty.verifyPhoneNumber",
          path = "verifyPhoneNumber",
          request = {
            ["$ref"] = "IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest",
          },
          response = {
            ["$ref"] = "IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20180723",
  rootUrl = "https://www.googleapis.com/",
  schemas = {
    CreateAuthUriResponse = {
      description = "Response of creating the IDP authentication URL.",
      id = "CreateAuthUriResponse",
      properties = {
        allProviders = {
          description = "all providers the user has once used to do federated login",
          items = {
            type = "string",
          },
          type = "array",
        },
        authUri = {
          description = "The URI used by the IDP to authenticate the user.",
          type = "string",
        },
        captchaRequired = {
          description = "True if captcha is required.",
          type = "boolean",
        },
        forExistingProvider = {
          description = "True if the authUri is for user's existing provider.",
          type = "boolean",
        },
        kind = {
          default = "identitytoolkit#CreateAuthUriResponse",
          description = "The fixed string identitytoolkit#CreateAuthUriResponse\".",
          type = "string",
        },
        providerId = {
          description = "The provider ID of the auth URI.",
          type = "string",
        },
        registered = {
          description = "Whether the user is registered if the identifier is an email.",
          type = "boolean",
        },
        sessionId = {
          description = "Session ID which should be passed in the following verifyAssertion request.",
          type = "string",
        },
        signinMethods = {
          description = "All sign-in methods this user has used.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DeleteAccountResponse = {
      description = "Respone of deleting account.",
      id = "DeleteAccountResponse",
      properties = {
        kind = {
          default = "identitytoolkit#DeleteAccountResponse",
          description = "The fixed string \"identitytoolkit#DeleteAccountResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    DownloadAccountResponse = {
      description = "Response of downloading accounts in batch.",
      id = "DownloadAccountResponse",
      properties = {
        kind = {
          default = "identitytoolkit#DownloadAccountResponse",
          description = "The fixed string \"identitytoolkit#DownloadAccountResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The next page token. To be used in a subsequent request to return the next page of results.",
          type = "string",
        },
        users = {
          description = "The user accounts data.",
          items = {
            ["$ref"] = "UserInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EmailLinkSigninResponse = {
      description = "Response of email signIn.",
      id = "EmailLinkSigninResponse",
      properties = {
        email = {
          description = "The user's email.",
          type = "string",
        },
        expiresIn = {
          description = "Expiration time of STS id token in seconds.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "The STS id token to login the newly signed in user.",
          type = "string",
        },
        isNewUser = {
          description = "Whether the user is new.",
          type = "boolean",
        },
        kind = {
          default = "identitytoolkit#EmailLinkSigninResponse",
          description = "The fixed string \"identitytoolkit#EmailLinkSigninResponse\".",
          type = "string",
        },
        localId = {
          description = "The RP local ID of the user.",
          type = "string",
        },
        refreshToken = {
          description = "The refresh token for the signed in user.",
          type = "string",
        },
      },
      type = "object",
    },
    EmailTemplate = {
      description = "Template for an email template.",
      id = "EmailTemplate",
      properties = {
        body = {
          description = "Email body.",
          type = "string",
        },
        format = {
          description = "Email body format.",
          type = "string",
        },
        from = {
          description = "From address of the email.",
          type = "string",
        },
        fromDisplayName = {
          description = "From display name.",
          type = "string",
        },
        replyTo = {
          description = "Reply-to address.",
          type = "string",
        },
        subject = {
          description = "Subject of the email.",
          type = "string",
        },
      },
      type = "object",
    },
    GetAccountInfoResponse = {
      description = "Response of getting account information.",
      id = "GetAccountInfoResponse",
      properties = {
        kind = {
          default = "identitytoolkit#GetAccountInfoResponse",
          description = "The fixed string \"identitytoolkit#GetAccountInfoResponse\".",
          type = "string",
        },
        users = {
          description = "The info of the users.",
          items = {
            ["$ref"] = "UserInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetOobConfirmationCodeResponse = {
      description = "Response of getting a code for user confirmation (reset password, change email etc.).",
      id = "GetOobConfirmationCodeResponse",
      properties = {
        email = {
          description = "The email address that the email is sent to.",
          type = "string",
        },
        kind = {
          default = "identitytoolkit#GetOobConfirmationCodeResponse",
          description = "The fixed string \"identitytoolkit#GetOobConfirmationCodeResponse\".",
          type = "string",
        },
        oobCode = {
          description = "The code to be send to the user.",
          type = "string",
        },
      },
      type = "object",
    },
    GetRecaptchaParamResponse = {
      description = "Response of getting recaptcha param.",
      id = "GetRecaptchaParamResponse",
      properties = {
        kind = {
          default = "identitytoolkit#GetRecaptchaParamResponse",
          description = "The fixed string \"identitytoolkit#GetRecaptchaParamResponse\".",
          type = "string",
        },
        recaptchaSiteKey = {
          description = "Site key registered at recaptcha.",
          type = "string",
        },
        recaptchaStoken = {
          description = "The stoken field for the recaptcha widget, used to request captcha challenge.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyCreateAuthUriRequest = {
      description = "Request to get the IDP authentication URL.",
      id = "IdentitytoolkitRelyingpartyCreateAuthUriRequest",
      properties = {
        appId = {
          description = "The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for Android, BUNDLE_ID for iOS.",
          type = "string",
        },
        authFlowType = {
          description = "Explicitly specify the auth flow type. Currently only support \"CODE_FLOW\" type. The field is only used for Google provider.",
          type = "string",
        },
        clientId = {
          description = "The relying party OAuth client ID.",
          type = "string",
        },
        context = {
          description = "The opaque value used by the client to maintain context info between the authentication request and the IDP callback.",
          type = "string",
        },
        continueUri = {
          description = "The URI to which the IDP redirects the user after the federated login flow.",
          type = "string",
        },
        customParameter = {
          additionalProperties = {
            description = "The customized query parameter.",
            type = "string",
          },
          description = "The query parameter that client can customize by themselves in auth url. The following parameters are reserved for server so that they cannot be customized by clients: client_id, response_type, scope, redirect_uri, state, oauth_token.",
          type = "object",
        },
        hostedDomain = {
          description = "The hosted domain to restrict sign-in to accounts at that domain for Google Apps hosted accounts.",
          type = "string",
        },
        identifier = {
          description = "The email or federated ID of the user.",
          type = "string",
        },
        oauthConsumerKey = {
          description = "The developer's consumer key for OpenId OAuth Extension",
          type = "string",
        },
        oauthScope = {
          description = "Additional oauth scopes, beyond the basid user profile, that the user would be prompted to grant",
          type = "string",
        },
        openidRealm = {
          description = "Optional realm for OpenID protocol. The sub string \"scheme://domain:port\" of the param \"continueUri\" is used if this is not set.",
          type = "string",
        },
        otaApp = {
          description = "The native app package for OTA installation.",
          type = "string",
        },
        providerId = {
          description = "The IdP ID. For white listed IdPs it's a short domain name e.g. google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.",
          type = "string",
        },
        sessionId = {
          description = "The session_id passed by client.",
          type = "string",
        },
        tenantId = {
          description = "For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.",
          type = "string",
        },
        tenantProjectNumber = {
          description = "Tenant project number to be used for idp discovery.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyDeleteAccountRequest = {
      description = "Request to delete account.",
      id = "IdentitytoolkitRelyingpartyDeleteAccountRequest",
      properties = {
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "The GITKit token or STS id token of the authenticated user.",
          type = "string",
        },
        localId = {
          description = "The local ID of the user.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyDownloadAccountRequest = {
      description = "Request to download user account in batch.",
      id = "IdentitytoolkitRelyingpartyDownloadAccountRequest",
      properties = {
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        maxResults = {
          description = "The max number of results to return in the response.",
          format = "uint32",
          type = "integer",
        },
        nextPageToken = {
          description = "The token for the next page. This should be taken from the previous response.",
          type = "string",
        },
        targetProjectId = {
          description = "Specify which project (field value is actually project id) to operate. Only used when provided credential.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyEmailLinkSigninRequest = {
      description = "Request to sign in with email.",
      id = "IdentitytoolkitRelyingpartyEmailLinkSigninRequest",
      properties = {
        email = {
          description = "The email address of the user.",
          type = "string",
        },
        idToken = {
          description = "Token for linking flow.",
          type = "string",
        },
        oobCode = {
          description = "The confirmation code.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyGetAccountInfoRequest = {
      description = "Request to get the account information.",
      id = "IdentitytoolkitRelyingpartyGetAccountInfoRequest",
      properties = {
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        email = {
          description = "The list of emails of the users to inquiry.",
          items = {
            type = "string",
          },
          type = "array",
        },
        idToken = {
          description = "The GITKit token of the authenticated user.",
          type = "string",
        },
        localId = {
          description = "The list of local ID's of the users to inquiry.",
          items = {
            type = "string",
          },
          type = "array",
        },
        phoneNumber = {
          description = "Privileged caller can query users by specified phone number.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyGetProjectConfigResponse = {
      description = "Response of getting the project configuration.",
      id = "IdentitytoolkitRelyingpartyGetProjectConfigResponse",
      properties = {
        allowPasswordUser = {
          description = "Whether to allow password user sign in or sign up.",
          type = "boolean",
        },
        apiKey = {
          description = "Browser API key, needed when making http request to Apiary.",
          type = "string",
        },
        authorizedDomains = {
          description = "Authorized domains.",
          items = {
            type = "string",
          },
          type = "array",
        },
        changeEmailTemplate = {
          ["$ref"] = "EmailTemplate",
          description = "Change email template.",
        },
        dynamicLinksDomain = {
          type = "string",
        },
        enableAnonymousUser = {
          description = "Whether anonymous user is enabled.",
          type = "boolean",
        },
        idpConfig = {
          description = "OAuth2 provider configuration.",
          items = {
            ["$ref"] = "IdpConfig",
          },
          type = "array",
        },
        legacyResetPasswordTemplate = {
          ["$ref"] = "EmailTemplate",
          description = "Legacy reset password email template.",
        },
        projectId = {
          description = "Project ID of the relying party.",
          type = "string",
        },
        resetPasswordTemplate = {
          ["$ref"] = "EmailTemplate",
          description = "Reset password email template.",
        },
        useEmailSending = {
          description = "Whether to use email sending provided by Firebear.",
          type = "boolean",
        },
        verifyEmailTemplate = {
          ["$ref"] = "EmailTemplate",
          description = "Verify email template.",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyGetPublicKeysResponse = {
      additionalProperties = {
        type = "string",
      },
      description = "Respone of getting public keys.",
      id = "IdentitytoolkitRelyingpartyGetPublicKeysResponse",
      type = "object",
    },
    IdentitytoolkitRelyingpartyResetPasswordRequest = {
      description = "Request to reset the password.",
      id = "IdentitytoolkitRelyingpartyResetPasswordRequest",
      properties = {
        email = {
          description = "The email address of the user.",
          type = "string",
        },
        newPassword = {
          description = "The new password inputted by the user.",
          type = "string",
        },
        oldPassword = {
          description = "The old password inputted by the user.",
          type = "string",
        },
        oobCode = {
          description = "The confirmation code.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartySendVerificationCodeRequest = {
      description = "Request for Identitytoolkit-SendVerificationCode",
      id = "IdentitytoolkitRelyingpartySendVerificationCodeRequest",
      properties = {
        iosReceipt = {
          description = "Receipt of successful app token validation with APNS.",
          type = "string",
        },
        iosSecret = {
          description = "Secret delivered to iOS app via APNS.",
          type = "string",
        },
        phoneNumber = {
          description = "The phone number to send the verification code to in E.164 format.",
          type = "string",
        },
        recaptchaToken = {
          description = "Recaptcha solution.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartySendVerificationCodeResponse = {
      description = "Response for Identitytoolkit-SendVerificationCode",
      id = "IdentitytoolkitRelyingpartySendVerificationCodeResponse",
      properties = {
        sessionInfo = {
          description = "Encrypted session information",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartySetAccountInfoRequest = {
      description = "Request to set the account information.",
      id = "IdentitytoolkitRelyingpartySetAccountInfoRequest",
      properties = {
        captchaChallenge = {
          description = "The captcha challenge.",
          type = "string",
        },
        captchaResponse = {
          description = "Response to the captcha.",
          type = "string",
        },
        createdAt = {
          description = "The timestamp when the account is created.",
          format = "int64",
          type = "string",
        },
        customAttributes = {
          description = "The custom attributes to be set in the user's id token.",
          type = "string",
        },
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        deleteAttribute = {
          description = "The attributes users request to delete.",
          items = {
            type = "string",
          },
          type = "array",
        },
        deleteProvider = {
          description = "The IDPs the user request to delete.",
          items = {
            type = "string",
          },
          type = "array",
        },
        disableUser = {
          description = "Whether to disable the user.",
          type = "boolean",
        },
        displayName = {
          description = "The name of the user.",
          type = "string",
        },
        email = {
          description = "The email of the user.",
          type = "string",
        },
        emailVerified = {
          description = "Mark the email as verified or not.",
          type = "boolean",
        },
        idToken = {
          description = "The GITKit token of the authenticated user.",
          type = "string",
        },
        instanceId = {
          description = "Instance id token of the app.",
          type = "string",
        },
        lastLoginAt = {
          description = "Last login timestamp.",
          format = "int64",
          type = "string",
        },
        localId = {
          description = "The local ID of the user.",
          type = "string",
        },
        oobCode = {
          description = "The out-of-band code of the change email request.",
          type = "string",
        },
        password = {
          description = "The new password of the user.",
          type = "string",
        },
        phoneNumber = {
          description = "Privileged caller can update user with specified phone number.",
          type = "string",
        },
        photoUrl = {
          description = "The photo url of the user.",
          type = "string",
        },
        provider = {
          description = "The associated IDPs of the user.",
          items = {
            type = "string",
          },
          type = "array",
        },
        returnSecureToken = {
          description = "Whether return sts id token and refresh token instead of gitkit token.",
          type = "boolean",
        },
        upgradeToFederatedLogin = {
          description = "Mark the user to upgrade to federated login.",
          type = "boolean",
        },
        validSince = {
          description = "Timestamp in seconds for valid login token.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartySetProjectConfigRequest = {
      description = "Request to set the project configuration.",
      id = "IdentitytoolkitRelyingpartySetProjectConfigRequest",
      properties = {
        allowPasswordUser = {
          description = "Whether to allow password user sign in or sign up.",
          type = "boolean",
        },
        apiKey = {
          description = "Browser API key, needed when making http request to Apiary.",
          type = "string",
        },
        authorizedDomains = {
          description = "Authorized domains for widget redirect.",
          items = {
            type = "string",
          },
          type = "array",
        },
        changeEmailTemplate = {
          ["$ref"] = "EmailTemplate",
          description = "Change email template.",
        },
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        enableAnonymousUser = {
          description = "Whether to enable anonymous user.",
          type = "boolean",
        },
        idpConfig = {
          description = "Oauth2 provider configuration.",
          items = {
            ["$ref"] = "IdpConfig",
          },
          type = "array",
        },
        legacyResetPasswordTemplate = {
          ["$ref"] = "EmailTemplate",
          description = "Legacy reset password email template.",
        },
        resetPasswordTemplate = {
          ["$ref"] = "EmailTemplate",
          description = "Reset password email template.",
        },
        useEmailSending = {
          description = "Whether to use email sending provided by Firebear.",
          type = "boolean",
        },
        verifyEmailTemplate = {
          ["$ref"] = "EmailTemplate",
          description = "Verify email template.",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartySetProjectConfigResponse = {
      description = "Response of setting the project configuration.",
      id = "IdentitytoolkitRelyingpartySetProjectConfigResponse",
      properties = {
        projectId = {
          description = "Project ID of the relying party.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartySignOutUserRequest = {
      description = "Request to sign out user.",
      id = "IdentitytoolkitRelyingpartySignOutUserRequest",
      properties = {
        instanceId = {
          description = "Instance id token of the app.",
          type = "string",
        },
        localId = {
          description = "The local ID of the user.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartySignOutUserResponse = {
      description = "Response of signing out user.",
      id = "IdentitytoolkitRelyingpartySignOutUserResponse",
      properties = {
        localId = {
          description = "The local ID of the user.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartySignupNewUserRequest = {
      description = "Request to signup new user, create anonymous user or anonymous user reauth.",
      id = "IdentitytoolkitRelyingpartySignupNewUserRequest",
      properties = {
        captchaChallenge = {
          description = "The captcha challenge.",
          type = "string",
        },
        captchaResponse = {
          description = "Response to the captcha.",
          type = "string",
        },
        disabled = {
          description = "Whether to disable the user. Only can be used by service account.",
          type = "boolean",
        },
        displayName = {
          description = "The name of the user.",
          type = "string",
        },
        email = {
          description = "The email of the user.",
          type = "string",
        },
        emailVerified = {
          description = "Mark the email as verified or not. Only can be used by service account.",
          type = "boolean",
        },
        idToken = {
          description = "The GITKit token of the authenticated user.",
          type = "string",
        },
        instanceId = {
          description = "Instance id token of the app.",
          type = "string",
        },
        localId = {
          description = "Privileged caller can create user with specified user id.",
          type = "string",
        },
        password = {
          description = "The new password of the user.",
          type = "string",
        },
        phoneNumber = {
          description = "Privileged caller can create user with specified phone number.",
          type = "string",
        },
        photoUrl = {
          description = "The photo url of the user.",
          type = "string",
        },
        tenantId = {
          description = "For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.",
          type = "string",
        },
        tenantProjectNumber = {
          description = "Tenant project number to be used for idp discovery.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyUploadAccountRequest = {
      description = "Request to upload user account in batch.",
      id = "IdentitytoolkitRelyingpartyUploadAccountRequest",
      properties = {
        allowOverwrite = {
          description = "Whether allow overwrite existing account when user local_id exists.",
          type = "boolean",
        },
        blockSize = {
          format = "int32",
          type = "integer",
        },
        cpuMemCost = {
          description = "The following 4 fields are for standard scrypt algorithm.",
          format = "int32",
          type = "integer",
        },
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        dkLen = {
          format = "int32",
          type = "integer",
        },
        hashAlgorithm = {
          description = "The password hash algorithm.",
          type = "string",
        },
        memoryCost = {
          description = "Memory cost for hash calculation. Used by scrypt similar algorithms.",
          format = "int32",
          type = "integer",
        },
        parallelization = {
          format = "int32",
          type = "integer",
        },
        rounds = {
          description = "Rounds for hash calculation. Used by scrypt and similar algorithms.",
          format = "int32",
          type = "integer",
        },
        saltSeparator = {
          description = "The salt separator.",
          format = "byte",
          type = "string",
        },
        sanityCheck = {
          description = "If true, backend will do sanity check(including duplicate email and federated id) when uploading account.",
          type = "boolean",
        },
        signerKey = {
          description = "The key for to hash the password.",
          format = "byte",
          type = "string",
        },
        targetProjectId = {
          description = "Specify which project (field value is actually project id) to operate. Only used when provided credential.",
          type = "string",
        },
        users = {
          description = "The account info to be stored.",
          items = {
            ["$ref"] = "UserInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyVerifyAssertionRequest = {
      description = "Request to verify the IDP assertion.",
      id = "IdentitytoolkitRelyingpartyVerifyAssertionRequest",
      properties = {
        autoCreate = {
          description = "When it's true, automatically creates a new account if the user doesn't exist. When it's false, allows existing user to sign in normally and throws exception if the user doesn't exist.",
          type = "boolean",
        },
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "The GITKit token of the authenticated user.",
          type = "string",
        },
        instanceId = {
          description = "Instance id token of the app.",
          type = "string",
        },
        pendingIdToken = {
          description = "The GITKit token for the non-trusted IDP pending to be confirmed by the user.",
          type = "string",
        },
        postBody = {
          description = "The post body if the request is a HTTP POST.",
          type = "string",
        },
        requestUri = {
          description = "The URI to which the IDP redirects the user back. It may contain federated login result params added by the IDP.",
          type = "string",
        },
        returnIdpCredential = {
          description = "Whether return 200 and IDP credential rather than throw exception when federated id is already linked.",
          type = "boolean",
        },
        returnRefreshToken = {
          description = "Whether to return refresh tokens.",
          type = "boolean",
        },
        returnSecureToken = {
          description = "Whether return sts id token and refresh token instead of gitkit token.",
          type = "boolean",
        },
        sessionId = {
          description = "Session ID, which should match the one in previous createAuthUri request.",
          type = "string",
        },
        tenantId = {
          description = "For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.",
          type = "string",
        },
        tenantProjectNumber = {
          description = "Tenant project number to be used for idp discovery.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyVerifyCustomTokenRequest = {
      description = "Request to verify a custom token",
      id = "IdentitytoolkitRelyingpartyVerifyCustomTokenRequest",
      properties = {
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        instanceId = {
          description = "Instance id token of the app.",
          type = "string",
        },
        returnSecureToken = {
          description = "Whether return sts id token and refresh token instead of gitkit token.",
          type = "boolean",
        },
        token = {
          description = "The custom token to verify",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyVerifyPasswordRequest = {
      description = "Request to verify the password.",
      id = "IdentitytoolkitRelyingpartyVerifyPasswordRequest",
      properties = {
        captchaChallenge = {
          description = "The captcha challenge.",
          type = "string",
        },
        captchaResponse = {
          description = "Response to the captcha.",
          type = "string",
        },
        delegatedProjectNumber = {
          description = "GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.",
          format = "int64",
          type = "string",
        },
        email = {
          description = "The email of the user.",
          type = "string",
        },
        idToken = {
          description = "The GITKit token of the authenticated user.",
          type = "string",
        },
        instanceId = {
          description = "Instance id token of the app.",
          type = "string",
        },
        password = {
          description = "The password inputed by the user.",
          type = "string",
        },
        pendingIdToken = {
          description = "The GITKit token for the non-trusted IDP, which is to be confirmed by the user.",
          type = "string",
        },
        returnSecureToken = {
          description = "Whether return sts id token and refresh token instead of gitkit token.",
          type = "boolean",
        },
        tenantId = {
          description = "For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.",
          type = "string",
        },
        tenantProjectNumber = {
          description = "Tenant project number to be used for idp discovery.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest = {
      description = "Request for Identitytoolkit-VerifyPhoneNumber",
      id = "IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest",
      properties = {
        code = {
          type = "string",
        },
        idToken = {
          type = "string",
        },
        operation = {
          type = "string",
        },
        phoneNumber = {
          type = "string",
        },
        sessionInfo = {
          description = "The session info previously returned by IdentityToolkit-SendVerificationCode.",
          type = "string",
        },
        temporaryProof = {
          type = "string",
        },
        verificationProof = {
          type = "string",
        },
      },
      type = "object",
    },
    IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse = {
      description = "Response for Identitytoolkit-VerifyPhoneNumber",
      id = "IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse",
      properties = {
        expiresIn = {
          format = "int64",
          type = "string",
        },
        idToken = {
          type = "string",
        },
        isNewUser = {
          type = "boolean",
        },
        localId = {
          type = "string",
        },
        phoneNumber = {
          type = "string",
        },
        refreshToken = {
          type = "string",
        },
        temporaryProof = {
          type = "string",
        },
        temporaryProofExpiresIn = {
          format = "int64",
          type = "string",
        },
        verificationProof = {
          type = "string",
        },
        verificationProofExpiresIn = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    IdpConfig = {
      description = "Template for a single idp configuration.",
      id = "IdpConfig",
      properties = {
        clientId = {
          description = "OAuth2 client ID.",
          type = "string",
        },
        enabled = {
          description = "Whether this IDP is enabled.",
          type = "boolean",
        },
        experimentPercent = {
          description = "Percent of users who will be prompted/redirected federated login for this IDP.",
          format = "int32",
          type = "integer",
        },
        provider = {
          description = "OAuth2 provider.",
          type = "string",
        },
        secret = {
          description = "OAuth2 client secret.",
          type = "string",
        },
        whitelistedAudiences = {
          description = "Whitelisted client IDs for audience check.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Relyingparty = {
      description = "Request of getting a code for user confirmation (reset password, change email etc.)",
      id = "Relyingparty",
      properties = {
        androidInstallApp = {
          description = "whether or not to install the android app on the device where the link is opened",
          type = "boolean",
        },
        androidMinimumVersion = {
          description = "minimum version of the app. if the version on the device is lower than this version then the user is taken to the play store to upgrade the app",
          type = "string",
        },
        androidPackageName = {
          description = "android package name of the android app to handle the action code",
          type = "string",
        },
        canHandleCodeInApp = {
          description = "whether or not the app can handle the oob code without first going to web",
          type = "boolean",
        },
        captchaResp = {
          description = "The recaptcha response from the user.",
          type = "string",
        },
        challenge = {
          description = "The recaptcha challenge presented to the user.",
          type = "string",
        },
        continueUrl = {
          description = "The url to continue to the Gitkit app",
          type = "string",
        },
        email = {
          description = "The email of the user.",
          type = "string",
        },
        iOSAppStoreId = {
          description = "iOS app store id to download the app if it's not already installed",
          type = "string",
        },
        iOSBundleId = {
          description = "the iOS bundle id of iOS app to handle the action code",
          type = "string",
        },
        idToken = {
          description = "The user's Gitkit login token for email change.",
          type = "string",
        },
        kind = {
          default = "identitytoolkit#relyingparty",
          description = "The fixed string \"identitytoolkit#relyingparty\".",
          type = "string",
        },
        newEmail = {
          description = "The new email if the code is for email change.",
          type = "string",
        },
        requestType = {
          description = "The request type.",
          type = "string",
        },
        userIp = {
          description = "The IP address of the user.",
          type = "string",
        },
      },
      type = "object",
    },
    ResetPasswordResponse = {
      description = "Response of resetting the password.",
      id = "ResetPasswordResponse",
      properties = {
        email = {
          description = "The user's email. If the out-of-band code is for email recovery, the user's original email.",
          type = "string",
        },
        kind = {
          default = "identitytoolkit#ResetPasswordResponse",
          description = "The fixed string \"identitytoolkit#ResetPasswordResponse\".",
          type = "string",
        },
        newEmail = {
          description = "If the out-of-band code is for email recovery, the user's new email.",
          type = "string",
        },
        requestType = {
          description = "The request type.",
          type = "string",
        },
      },
      type = "object",
    },
    SetAccountInfoResponse = {
      description = "Respone of setting the account information.",
      id = "SetAccountInfoResponse",
      properties = {
        displayName = {
          description = "The name of the user.",
          type = "string",
        },
        email = {
          description = "The email of the user.",
          type = "string",
        },
        emailVerified = {
          description = "If email has been verified.",
          type = "boolean",
        },
        expiresIn = {
          description = "If idToken is STS id token, then this field will be expiration time of STS id token in seconds.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "The Gitkit id token to login the newly sign up user.",
          type = "string",
        },
        kind = {
          default = "identitytoolkit#SetAccountInfoResponse",
          description = "The fixed string \"identitytoolkit#SetAccountInfoResponse\".",
          type = "string",
        },
        localId = {
          description = "The local ID of the user.",
          type = "string",
        },
        newEmail = {
          description = "The new email the user attempts to change to.",
          type = "string",
        },
        passwordHash = {
          description = "The user's hashed password.",
          format = "byte",
          type = "string",
        },
        photoUrl = {
          description = "The photo url of the user.",
          type = "string",
        },
        providerUserInfo = {
          description = "The user's profiles at the associated IdPs.",
          items = {
            properties = {
              displayName = {
                description = "The user's display name at the IDP.",
                type = "string",
              },
              federatedId = {
                description = "User's identifier at IDP.",
                type = "string",
              },
              photoUrl = {
                description = "The user's photo url at the IDP.",
                type = "string",
              },
              providerId = {
                description = "The IdP ID. For whitelisted IdPs it's a short domain name, e.g., google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        refreshToken = {
          description = "If idToken is STS id token, then this field will be refresh token.",
          type = "string",
        },
      },
      type = "object",
    },
    SignupNewUserResponse = {
      description = "Response of signing up new user, creating anonymous user or anonymous user reauth.",
      id = "SignupNewUserResponse",
      properties = {
        displayName = {
          description = "The name of the user.",
          type = "string",
        },
        email = {
          description = "The email of the user.",
          type = "string",
        },
        expiresIn = {
          description = "If idToken is STS id token, then this field will be expiration time of STS id token in seconds.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "The Gitkit id token to login the newly sign up user.",
          type = "string",
        },
        kind = {
          default = "identitytoolkit#SignupNewUserResponse",
          description = "The fixed string \"identitytoolkit#SignupNewUserResponse\".",
          type = "string",
        },
        localId = {
          description = "The RP local ID of the user.",
          type = "string",
        },
        refreshToken = {
          description = "If idToken is STS id token, then this field will be refresh token.",
          type = "string",
        },
      },
      type = "object",
    },
    UploadAccountResponse = {
      description = "Respone of uploading accounts in batch.",
      id = "UploadAccountResponse",
      properties = {
        error = {
          description = "The error encountered while processing the account info.",
          items = {
            properties = {
              index = {
                description = "The index of the malformed account, starting from 0.",
                format = "int32",
                type = "integer",
              },
              message = {
                description = "Detailed error message for the account info.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          default = "identitytoolkit#UploadAccountResponse",
          description = "The fixed string \"identitytoolkit#UploadAccountResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    UserInfo = {
      description = "Template for an individual account info.",
      id = "UserInfo",
      properties = {
        createdAt = {
          description = "User creation timestamp.",
          format = "int64",
          type = "string",
        },
        customAttributes = {
          description = "The custom attributes to be set in the user's id token.",
          type = "string",
        },
        customAuth = {
          description = "Whether the user is authenticated by the developer.",
          type = "boolean",
        },
        disabled = {
          description = "Whether the user is disabled.",
          type = "boolean",
        },
        displayName = {
          description = "The name of the user.",
          type = "string",
        },
        email = {
          description = "The email of the user.",
          type = "string",
        },
        emailVerified = {
          description = "Whether the email has been verified.",
          type = "boolean",
        },
        lastLoginAt = {
          description = "last login timestamp.",
          format = "int64",
          type = "string",
        },
        localId = {
          description = "The local ID of the user.",
          type = "string",
        },
        passwordHash = {
          description = "The user's hashed password.",
          format = "byte",
          type = "string",
        },
        passwordUpdatedAt = {
          description = "The timestamp when the password was last updated.",
          format = "double",
          type = "number",
        },
        phoneNumber = {
          description = "User's phone number.",
          type = "string",
        },
        photoUrl = {
          description = "The URL of the user profile photo.",
          type = "string",
        },
        providerUserInfo = {
          description = "The IDP of the user.",
          items = {
            properties = {
              displayName = {
                description = "The user's display name at the IDP.",
                type = "string",
              },
              email = {
                description = "User's email at IDP.",
                type = "string",
              },
              federatedId = {
                description = "User's identifier at IDP.",
                type = "string",
              },
              phoneNumber = {
                description = "User's phone number.",
                type = "string",
              },
              photoUrl = {
                description = "The user's photo url at the IDP.",
                type = "string",
              },
              providerId = {
                description = "The IdP ID. For white listed IdPs it's a short domain name, e.g., google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.",
                type = "string",
              },
              rawId = {
                description = "User's raw identifier directly returned from IDP.",
                type = "string",
              },
              screenName = {
                description = "User's screen name at Twitter or login name at Github.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        rawPassword = {
          description = "The user's plain text password.",
          type = "string",
        },
        salt = {
          description = "The user's password salt.",
          format = "byte",
          type = "string",
        },
        screenName = {
          description = "User's screen name at Twitter or login name at Github.",
          type = "string",
        },
        validSince = {
          description = "Timestamp in seconds for valid login token.",
          format = "int64",
          type = "string",
        },
        version = {
          description = "Version of the user's password.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    VerifyAssertionResponse = {
      description = "Response of verifying the IDP assertion.",
      id = "VerifyAssertionResponse",
      properties = {
        action = {
          description = "The action code.",
          type = "string",
        },
        appInstallationUrl = {
          description = "URL for OTA app installation.",
          type = "string",
        },
        appScheme = {
          description = "The custom scheme used by mobile app.",
          type = "string",
        },
        context = {
          description = "The opaque value used by the client to maintain context info between the authentication request and the IDP callback.",
          type = "string",
        },
        dateOfBirth = {
          description = "The birth date of the IdP account.",
          type = "string",
        },
        displayName = {
          description = "The display name of the user.",
          type = "string",
        },
        email = {
          description = "The email returned by the IdP. NOTE: The federated login user may not own the email.",
          type = "string",
        },
        emailRecycled = {
          description = "It's true if the email is recycled.",
          type = "boolean",
        },
        emailVerified = {
          description = "The value is true if the IDP is also the email provider. It means the user owns the email.",
          type = "boolean",
        },
        errorMessage = {
          description = "Client error code.",
          type = "string",
        },
        expiresIn = {
          description = "If idToken is STS id token, then this field will be expiration time of STS id token in seconds.",
          format = "int64",
          type = "string",
        },
        federatedId = {
          description = "The unique ID identifies the IdP account.",
          type = "string",
        },
        firstName = {
          description = "The first name of the user.",
          type = "string",
        },
        fullName = {
          description = "The full name of the user.",
          type = "string",
        },
        idToken = {
          description = "The ID token.",
          type = "string",
        },
        inputEmail = {
          description = "It's the identifier param in the createAuthUri request if the identifier is an email. It can be used to check whether the user input email is different from the asserted email.",
          type = "string",
        },
        isNewUser = {
          description = "True if it's a new user sign-in, false if it's a returning user.",
          type = "boolean",
        },
        kind = {
          default = "identitytoolkit#VerifyAssertionResponse",
          description = "The fixed string \"identitytoolkit#VerifyAssertionResponse\".",
          type = "string",
        },
        language = {
          description = "The language preference of the user.",
          type = "string",
        },
        lastName = {
          description = "The last name of the user.",
          type = "string",
        },
        localId = {
          description = "The RP local ID if it's already been mapped to the IdP account identified by the federated ID.",
          type = "string",
        },
        needConfirmation = {
          description = "Whether the assertion is from a non-trusted IDP and need account linking confirmation.",
          type = "boolean",
        },
        needEmail = {
          description = "Whether need client to supply email to complete the federated login flow.",
          type = "boolean",
        },
        nickName = {
          description = "The nick name of the user.",
          type = "string",
        },
        oauthAccessToken = {
          description = "The OAuth2 access token.",
          type = "string",
        },
        oauthAuthorizationCode = {
          description = "The OAuth2 authorization code.",
          type = "string",
        },
        oauthExpireIn = {
          description = "The lifetime in seconds of the OAuth2 access token.",
          format = "int32",
          type = "integer",
        },
        oauthIdToken = {
          description = "The OIDC id token.",
          type = "string",
        },
        oauthRequestToken = {
          description = "The user approved request token for the OpenID OAuth extension.",
          type = "string",
        },
        oauthScope = {
          description = "The scope for the OpenID OAuth extension.",
          type = "string",
        },
        oauthTokenSecret = {
          description = "The OAuth1 access token secret.",
          type = "string",
        },
        originalEmail = {
          description = "The original email stored in the mapping storage. It's returned when the federated ID is associated to a different email.",
          type = "string",
        },
        photoUrl = {
          description = "The URI of the public accessible profiel picture.",
          type = "string",
        },
        providerId = {
          description = "The IdP ID. For white listed IdPs it's a short domain name e.g. google.com, aol.com, live.net and yahoo.com. If the \"providerId\" param is set to OpenID OP identifer other than the whilte listed IdPs the OP identifier is returned. If the \"identifier\" param is federated ID in the createAuthUri request. The domain part of the federated ID is returned.",
          type = "string",
        },
        rawUserInfo = {
          description = "Raw IDP-returned user info.",
          type = "string",
        },
        refreshToken = {
          description = "If idToken is STS id token, then this field will be refresh token.",
          type = "string",
        },
        screenName = {
          description = "The screen_name of a Twitter user or the login name at Github.",
          type = "string",
        },
        timeZone = {
          description = "The timezone of the user.",
          type = "string",
        },
        verifiedProvider = {
          description = "When action is 'map', contains the idps which can be used for confirmation.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VerifyCustomTokenResponse = {
      description = "Response from verifying a custom token",
      id = "VerifyCustomTokenResponse",
      properties = {
        expiresIn = {
          description = "If idToken is STS id token, then this field will be expiration time of STS id token in seconds.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "The GITKit token for authenticated user.",
          type = "string",
        },
        isNewUser = {
          description = "True if it's a new user sign-in, false if it's a returning user.",
          type = "boolean",
        },
        kind = {
          default = "identitytoolkit#VerifyCustomTokenResponse",
          description = "The fixed string \"identitytoolkit#VerifyCustomTokenResponse\".",
          type = "string",
        },
        refreshToken = {
          description = "If idToken is STS id token, then this field will be refresh token.",
          type = "string",
        },
      },
      type = "object",
    },
    VerifyPasswordResponse = {
      description = "Request of verifying the password.",
      id = "VerifyPasswordResponse",
      properties = {
        displayName = {
          description = "The name of the user.",
          type = "string",
        },
        email = {
          description = "The email returned by the IdP. NOTE: The federated login user may not own the email.",
          type = "string",
        },
        expiresIn = {
          description = "If idToken is STS id token, then this field will be expiration time of STS id token in seconds.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "The GITKit token for authenticated user.",
          type = "string",
        },
        kind = {
          default = "identitytoolkit#VerifyPasswordResponse",
          description = "The fixed string \"identitytoolkit#VerifyPasswordResponse\".",
          type = "string",
        },
        localId = {
          description = "The RP local ID if it's already been mapped to the IdP account identified by the federated ID.",
          type = "string",
        },
        oauthAccessToken = {
          description = "The OAuth2 access token.",
          type = "string",
        },
        oauthAuthorizationCode = {
          description = "The OAuth2 authorization code.",
          type = "string",
        },
        oauthExpireIn = {
          description = "The lifetime in seconds of the OAuth2 access token.",
          format = "int32",
          type = "integer",
        },
        photoUrl = {
          description = "The URI of the user's photo at IdP",
          type = "string",
        },
        refreshToken = {
          description = "If idToken is STS id token, then this field will be refresh token.",
          type = "string",
        },
        registered = {
          description = "Whether the email is registered.",
          type = "boolean",
        },
      },
      type = "object",
    },
  },
  servicePath = "identitytoolkit/v3/relyingparty/",
  title = "Google Identity Toolkit API",
  version = "v3",
}
