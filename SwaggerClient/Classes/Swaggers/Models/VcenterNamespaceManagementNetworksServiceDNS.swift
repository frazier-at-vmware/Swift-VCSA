//
// VcenterNamespaceManagementNetworksServiceDNS.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNetworksServiceDNS: Codable {

    /**  DNS.servers is a list of IP addresses that clients may use for DNS resolution on a given network in priority order.   If empty, no DNS servers will be configured.  */
    public var servers: [String]
    /**  DNS.search-domains is a list of DNS search domains to be used on this network.   This field is useful for corporate networks or local domains that are not publicly resolvable.   If empty, no search domains will be configured.  */
    public var searchDomains: [String]

    public init(servers: [String], searchDomains: [String]) {
        self.servers = servers
        self.searchDomains = searchDomains
    }

    public enum CodingKeys: String, CodingKey { 
        case servers
        case searchDomains = "search_domains"
    }


}

