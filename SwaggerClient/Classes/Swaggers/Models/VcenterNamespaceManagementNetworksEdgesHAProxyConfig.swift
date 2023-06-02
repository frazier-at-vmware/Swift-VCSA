//
// VcenterNamespaceManagementNetworksEdgesHAProxyConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNetworksEdgesHAProxyConfig: Codable {

    /** HAProxyConfig.servers is a list of the addresses for the data plane API servers used to configure Virtual Servers. */
    public var servers: [VcenterNamespaceManagementNetworksEdgesServer]
    /** HAProxyConfig.username is used by the HAProxy Kubernetes Operator to program the HAProxy Controller. */
    public var username: String
    /** HAProxyConfig.password secures the HAProxyConfig.username. */
    public var password: String
    /** HAProxyConfig.certificate-authority-chain contains PEM-encoded CA chain which is used to verify x509 certificates received from the server. */
    public var certificateAuthorityChain: String

    public init(servers: [VcenterNamespaceManagementNetworksEdgesServer], username: String, password: String, certificateAuthorityChain: String) {
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
