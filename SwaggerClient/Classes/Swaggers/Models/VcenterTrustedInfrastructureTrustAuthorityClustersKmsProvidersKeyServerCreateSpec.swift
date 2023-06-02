//
// VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpec: Codable {

    /** Type of the key server. */
    public var type: VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpecType
    /** Description of the key server. If unset, description will not be added. */
    public var _description: String?
    /** Proxy server configuration. If unset, the key server will not use a proxy server. */
    public var proxyServer: VcenterTrustedInfrastructureNetworkAddress?
    /** Connection timeout in seconds. If unset, connection timeout will not be set. */
    public var connectionTimeout: Int64?
    /** Configuration information for Key Management Interoperability Protocol (KMIP) based key server. This field is optional and it is only relevant when the value of Providers.KeyServerCreateSpec.type is KMIP. */
    public var kmipServer: VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerCreateSpec?

    public init(type: VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpecType, _description: String?, proxyServer: VcenterTrustedInfrastructureNetworkAddress?, connectionTimeout: Int64?, kmipServer: VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerCreateSpec?) {
        self.type = type
        self._description = _description
        self.proxyServer = proxyServer
        self.connectionTimeout = connectionTimeout
        self.kmipServer = kmipServer
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case _description = "description"
        case proxyServer = "proxy_server"
        case connectionTimeout = "connection_timeout"
        case kmipServer = "kmip_server"
    }


}

