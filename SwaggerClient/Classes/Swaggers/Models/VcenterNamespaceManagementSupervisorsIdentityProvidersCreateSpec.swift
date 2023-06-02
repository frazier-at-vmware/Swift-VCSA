//
// VcenterNamespaceManagementSupervisorsIdentityProvidersCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorsIdentityProvidersCreateSpec: Codable {

    /** A name to be used for the given identity provider. This name will be displayed in the vCenter UI. */
    public var displayName: String
    /** The URL to the identity provider issuing tokens. The OIDC discovery URL will be derived from the issuer URL, according to RFC8414: https://issuerURL/.well-known/openid-configuration. This must use HTTPS as the scheme. */
    public var issuerURL: String
    /** The claim from the upstream identity provider ID token or user info endpoint to inspect to obtain the username for the given user. If unset, the upstream issuer URL will be concatenated with the &#39;sub&#39; claim to generate the username to be used with Kubernetes. */
    public var usernameClaim: String?
    /** The claim from the upstream identity provider ID token or user info endpoint to inspect to obtain the groups for the given user. If unset, no groups will be used from the upstream identity provider. */
    public var groupsClaim: String?
    /** The clientID is the OAuth 2.0 client ID registered in the upstream identity provider and used by the Supervisor. */
    public var clientID: String
    /** The OAuth 2.0 client secret to be used by the Supervisor when authenticating to the upstream identity provider. */
    public var clientSecret: String
    /** Certificate authority data to be used to establish HTTPS connections with the identity provider. This must be a PEM-encoded value. If unset, HTTPS connections with the upstream identity provider will rely on a default set of system trusted roots. */
    public var certificateAuthorityData: String?
    /** Additional scopes to be requested in tokens issued by this identity provider. If unset, no additional scopes will be requested. */
    public var additionalScopes: [String]?
    /** Any additional parameters to be sent to the upstream identity provider during the authorize request in the OAuth2 authorization code flow. One use case is to pass in a default tenant ID if you have a multi-tenant identity provider. For instance, with VMware&#39;s Cloud Services Platform, if your organization ID is &#39;long-form-org-id&#39;, the &#39;orgLink&#39; parameter can be set to \&quot;/csp/gateway/am/api/orgs/long-form-org-id\&quot; to allow users logging in to leverage that organization. If unset, no additional parameters will be sent to the upstream identity provider. */
    public var additionalAuthorizeParameters: [String:String]?

    public init(displayName: String, issuerURL: String, usernameClaim: String?, groupsClaim: String?, clientID: String, clientSecret: String, certificateAuthorityData: String?, additionalScopes: [String]?, additionalAuthorizeParameters: [String:String]?) {
        self.displayName = displayName
        self.issuerURL = issuerURL
        self.usernameClaim = usernameClaim
        self.groupsClaim = groupsClaim
        self.clientID = clientID
        self.clientSecret = clientSecret
        self.certificateAuthorityData = certificateAuthorityData
        self.additionalScopes = additionalScopes
        self.additionalAuthorizeParameters = additionalAuthorizeParameters
    }

    public enum CodingKeys: String, CodingKey { 
        case displayName = "display_name"
        case issuerURL = "issuer_URL"
        case usernameClaim = "username_claim"
        case groupsClaim = "groups_claim"
        case clientID = "client_ID"
        case clientSecret = "client_secret"
        case certificateAuthorityData = "certificate_authority_data"
        case additionalScopes = "additional_scopes"
        case additionalAuthorizeParameters = "additional_authorize_parameters"
    }


}

