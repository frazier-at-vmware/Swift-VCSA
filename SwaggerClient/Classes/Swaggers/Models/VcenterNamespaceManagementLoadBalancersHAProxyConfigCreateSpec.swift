//
// VcenterNamespaceManagementLoadBalancersHAProxyConfigCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementLoadBalancersHAProxyConfigCreateSpec: Codable {

    /** Servers is a list of the addresses for the data plane API servers used to configure Virtual Servers. */
    public var servers: [VcenterNamespaceManagementLoadBalancersServer]
    /** An administrator user name for accessing the HAProxy Data Plane API server. */
    public var username: String
    /** The password for the administrator user. */
    public var password: String
    /** CertificateAuthorityChain contains PEM-encoded CA chain which is used to verify x509 certificates received from the server. */
    public var certificateAuthorityChain: String

    public init(servers: [VcenterNamespaceManagementLoadBalancersServer], username: String, password: String, certificateAuthorityChain: String) {
        self.servers = servers
        self.username = username
        self.password = password
        self.certificateAuthorityChain = certificateAuthorityChain
    }

    public enum CodingKeys: String, CodingKey { 
        case servers
        case username
        case password
        case certificateAuthorityChain = "certificate_authority_chain"
    }


}

