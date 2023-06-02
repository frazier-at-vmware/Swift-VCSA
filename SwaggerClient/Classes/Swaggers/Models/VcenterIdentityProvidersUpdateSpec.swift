//
// VcenterIdentityProvidersUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterIdentityProvidersUpdateSpec: Codable {

    /** The config type of the identity provider */
    public var configTag: VcenterIdentityProvidersConfigType
    /** OAuth2 UpdateSpec This field is optional and it is only relevant when the value of Providers.UpdateSpec.config-tag is Oauth2. */
    public var oauth2: VcenterIdentityProvidersOauth2UpdateSpec?
    /** OIDC UpdateSpec This field is optional and it is only relevant when the value of Providers.UpdateSpec.config-tag is Oidc. */
    public var oidc: VcenterIdentityProvidersOidcUpdateSpec?
    /** The set orgIds as part of SDDC creation which provides the basis for tenancy If unset, leaves value unchanged. */
    public var orgIds: [String]?
    /** Specifies whether to make this the default provider. If Providers.UpdateSpec.make-default is set to true, this provider will be flagged as the default provider and any other providers that had previously been flagged as the default will be made non-default. If Providers.UpdateSpec.make-default is set to false, this provider&#39;s default flag will not be modified. If unset, leaves value unchanged. */
    public var makeDefault: Bool?
    /** The user friendly name for the provider. This name can be used for human-readable identification purposes, but it does not have to be unique, as the system will use internal UUIDs to differentiate providers. If unset, leaves value unchanged. */
    public var name: String?
    /** Set of fully qualified domain names to trust when federating with this identity provider. Tokens from this identity provider will only be validated if the user belongs to one of these domains, and any domain-qualified groups in the tokens will be filtered to include only those groups that belong to one of these domains. If unset, leaves value unchanged. If domainNames is an empty set, domain validation behavior at login with this identity provider will be as follows: the user&#39;s domain will be parsed from the User Principal Name (UPN) value that is found in the tokens returned by the identity provider. This domain will then be implicitly trusted and used to filter any groups that are also provided in the tokens. */
    public var domainNames: [String]?
    /** key/value pairs that are to be appended to the authEndpoint request. How to append to authEndpoint request: If the map is not empty, a \&quot;?\&quot; is added to the endpoint URL, and combination of each k and each string in the v is added with an \&quot;&amp;\&quot; delimiter. Details: If the value contains only one string, then the key is added with \&quot;k&#x3D;v\&quot;. If the value is an empty list, then the key is added without a \&quot;&#x3D;v\&quot;. If the value contains multiple strings, then the key is repeated in the query-string for each string in the value. If the map is empty, deletes all params. If unset, leaves value unchanged. */
    public var authQueryParams: [VcenterIdentityProvidersCreateSpecAuthQueryParams]?
    /** The protocol to communicate to the identity management endpoints If unset, leave value unchanged. */
    public var idmProtocol: VcenterIdentityProvidersIdmProtocol?
    /** Identity management endpoints. When specified, at least one endpoint must be provided. This field is optional and it is only relevant when the value of Providers.UpdateSpec.idm-protocol is one of REST, SCIM, or SCIM2_0. */
    public var idmEndpoints: [String]?
    /** Identity management configuration. If the protocol is LDAP, the configuration must be set, else InvalidArgument is thrown This field is optional and it is only relevant when the value of Providers.UpdateSpec.idm-protocol is LDAP. */
    public var activeDirectoryOverLdap: VcenterIdentityProvidersActiveDirectoryOverLdap?
    /** Specifies which claim provides the user principal name (UPN) for the subject of the token. If unset, leaves value unchanged. */
    public var upnClaim: String?
    /** Flag indicating whether the user principal name (UPN) claim should be set back to its default value. If this field is set to true, the user principal name (UPN) claim will be set to &#39;acct&#39;, which is used for backwards compatibility with CSP. If this field is set to false, the existing user principal name (UPN) claim will be changed to the value specified in Providers.UpdateSpec.upn-claim, if any. If unset, the existing user principal name (UPN) claim will be changed to the value specified in Providers.UpdateSpec.upn-claim, if any. */
    public var resetUpnClaim: Bool?
    /** Specifies which claim provides the group membership for the token subject. If unset, leaves value unchanged. */
    public var groupsClaim: String?
    /** Flag indicating whether any existing groups claim value should be removed. If this field is set to true, the existing groups claim value is removed which defaults to backwards compatibility with CSP. In this case, the groups for the subject will be comprised of the groups in &#39;group_names&#39; and &#39;group_ids&#39; claims. If this field is set to false, the existing groups claim will be changed to the value specified in Providers.UpdateSpec.groups-claim, if any. If unset, the existing groups claim will be changed to the value specified in Providers.UpdateSpec.groups-claim, if any. */
    public var resetGroupsClaim: Bool?

    public init(configTag: VcenterIdentityProvidersConfigType, oauth2: VcenterIdentityProvidersOauth2UpdateSpec?, oidc: VcenterIdentityProvidersOidcUpdateSpec?, orgIds: [String]?, makeDefault: Bool?, name: String?, domainNames: [String]?, authQueryParams: [VcenterIdentityProvidersCreateSpecAuthQueryParams]?, idmProtocol: VcenterIdentityProvidersIdmProtocol?, idmEndpoints: [String]?, activeDirectoryOverLdap: VcenterIdentityProvidersActiveDirectoryOverLdap?, upnClaim: String?, resetUpnClaim: Bool?, groupsClaim: String?, resetGroupsClaim: Bool?) {
        self.configTag = configTag
        self.oauth2 = oauth2
        self.oidc = oidc
        self.orgIds = orgIds
        self.makeDefault = makeDefault
        self.name = name
        self.domainNames = domainNames
        self.authQueryParams = authQueryParams
        self.idmProtocol = idmProtocol
        self.idmEndpoints = idmEndpoints
        self.activeDirectoryOverLdap = activeDirectoryOverLdap
        self.upnClaim = upnClaim
        self.resetUpnClaim = resetUpnClaim
        self.groupsClaim = groupsClaim
        self.resetGroupsClaim = resetGroupsClaim
    }

    public enum CodingKeys: String, CodingKey { 
        case configTag = "config_tag"
        case oauth2
        case oidc
        case orgIds = "org_ids"
        case makeDefault = "make_default"
        case name
        case domainNames = "domain_names"
        case authQueryParams = "auth_query_params"
        case idmProtocol = "idm_protocol"
        case idmEndpoints = "idm_endpoints"
        case activeDirectoryOverLdap = "active_directory_over_ldap"
        case upnClaim = "upn_claim"
        case resetUpnClaim = "reset_upn_claim"
        case groupsClaim = "groups_claim"
        case resetGroupsClaim = "reset_groups_claim"
    }


}
