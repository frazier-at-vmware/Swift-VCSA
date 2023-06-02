//
// VcenterIdentityProvidersActiveDirectoryOverLdap.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterIdentityProvidersActiveDirectoryOverLdap: Codable {

    /** User name to connect to the active directory server. */
    public var userName: String
    /** Password to connect to the active directory server. */
    public var password: String
    /** Base distinguished name for users */
    public var usersBaseDn: String
    /** Base distinguished name for groups */
    public var groupsBaseDn: String
    /** Active directory server endpoints. At least one active directory server endpoint must be set. */
    public var serverEndpoints: [String]
    /** SSL certificate chain in base64 encoding. This field can be unset only, if all the active directory server endpoints use the LDAP (not LDAPS) protocol. */
    public var certChain: VcenterCertificateManagementX509CertChain?

    public init(userName: String, password: String, usersBaseDn: String, groupsBaseDn: String, serverEndpoints: [String], certChain: VcenterCertificateManagementX509CertChain?) {
        self.userName = userName
        self.password = password
        self.usersBaseDn = usersBaseDn
        self.groupsBaseDn = groupsBaseDn
        self.serverEndpoints = serverEndpoints
        self.certChain = certChain
    }

    public enum CodingKeys: String, CodingKey { 
        case userName = "user_name"
        case password
        case usersBaseDn = "users_base_dn"
        case groupsBaseDn = "groups_base_dn"
        case serverEndpoints = "server_endpoints"
        case certChain = "cert_chain"
    }


}

