//
// VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerCreateSpec: Codable {

    /** List of Key Management Interoperability Protocol (KMIP) compliant key servers.   Key servers must be configured for active-active replication. If the server port is unset, a default value for KMIP&#39;s port will be used.  */
    public var servers: [VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersServer]
    /** Username for authentication. If unset, no username will be added. */
    public var username: String?

    public init(servers: [VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersServer], username: String?) {
        self.servers = servers
        self.username = username
    }


}

