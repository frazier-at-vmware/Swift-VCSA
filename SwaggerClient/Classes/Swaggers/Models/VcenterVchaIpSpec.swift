//
// VcenterVchaIpSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVchaIpSpec: Codable {

    /** Family of the IP address to configure the interface. */
    public var ipFamily: VcenterVchaIpFamily
    /** If the family of the ip is IPV4, then this will point to IPv4 address specification. This field is optional and it is only relevant when the value of IpSpec.ip-family is IPV4. */
    public var ipv4: VcenterVchaIpv4Spec?
    /** If the family of the ip is IPV6, then this will point to IPv6 address specification. This field is optional and it is only relevant when the value of IpSpec.ip-family is IPV6. */
    public var ipv6: VcenterVchaIpv6Spec?
    /** The IP address of the Gateway for this interface. If unset, gateway will not be used for the network interface. */
    public var defaultGateway: String?
    /** The list of IP addresses of the DNS servers for this interface. This list is a comma separated list. If unset, DNS servers will not be used for the network interface. */
    public var dnsServers: [String]?

    public init(ipFamily: VcenterVchaIpFamily, ipv4: VcenterVchaIpv4Spec?, ipv6: VcenterVchaIpv6Spec?, defaultGateway: String?, dnsServers: [String]?) {
        self.ipFamily = ipFamily
        self.ipv4 = ipv4
        self.ipv6 = ipv6
        self.defaultGateway = defaultGateway
        self.dnsServers = dnsServers
    }

    public enum CodingKeys: String, CodingKey { 
        case ipFamily = "ip_family"
        case ipv4
        case ipv6
        case defaultGateway = "default_gateway"
        case dnsServers = "dns_servers"
    }


}
