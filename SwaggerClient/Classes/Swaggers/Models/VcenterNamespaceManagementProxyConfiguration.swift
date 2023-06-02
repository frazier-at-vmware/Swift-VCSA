//
// VcenterNamespaceManagementProxyConfiguration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementProxyConfiguration: Codable {

    /** The source of the proxy settings. If VC_INHERITED or NONE is specified, then the other configuration in ProxyConfiguration will be ignored. */
    public var proxySettingsSource: VcenterNamespaceManagementProxySettingsSource
    /** HTTPS proxy configuration. Examples:     - http://username:password@proxy.vmware.com:8080    - https://proxy.vmware.com:4443   This will be used if CLUSTER_CONFIGURED is used for the source, otherwise this will be ignored. If unset no HTTPS proxy will be used. */
    public var httpsProxyConfig: String?
    /** HTTP proxy configuration. Examples:     - http://username:password@proxy.vmware.com:8080    - https://proxy.vmware.com:4443   This will be used if CLUSTER_CONFIGURED is used for the source, otherwise this will be ignored. If unset no HTTP proxy will be used. */
    public var httpProxyConfig: String?
    /** List of addresses that should be accessed directly. This will be used if CLUSTER_CONFIGURED is used for the source, otherwise this will be ignored. If unset there won&#39;t be any excluded addresses. */
    public var noProxyConfig: [String]?
    /** Proxy TLS root CA bundle which will be used to verify the proxy&#39;s certificates. Every certificate in the bundle is expected to be in PEM format. This will be used if CLUSTER_CONFIGURED is used for the source, otherwise this will be ignored. If unset only the vCenter certificates applied in VECS (VMware Endpoint Certificate Store) will be used. */
    public var tlsRootCaBundle: String?

    public init(proxySettingsSource: VcenterNamespaceManagementProxySettingsSource, httpsProxyConfig: String?, httpProxyConfig: String?, noProxyConfig: [String]?, tlsRootCaBundle: String?) {
        self.proxySettingsSource = proxySettingsSource
        self.httpsProxyConfig = httpsProxyConfig
        self.httpProxyConfig = httpProxyConfig
        self.noProxyConfig = noProxyConfig
        self.tlsRootCaBundle = tlsRootCaBundle
    }

    public enum CodingKeys: String, CodingKey { 
        case proxySettingsSource = "proxy_settings_source"
        case httpsProxyConfig = "https_proxy_config"
        case httpProxyConfig = "http_proxy_config"
        case noProxyConfig = "no_proxy_config"
        case tlsRootCaBundle = "tls_root_ca_bundle"
    }


}

