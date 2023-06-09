//
// VcenterVmGuestNetworkingInterfacesIpConfigInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestNetworkingInterfacesIpConfigInfo: Codable {

    /** IP addresses configured on the interface. */
    public var ipAddresses: [VcenterVmGuestNetworkingInterfacesIpAddressInfo]
    /** Client side DHCP for an interface. If unset the IP was not configured by DHCP. */
    public var dhcp: VcenterVmGuestDhcpConfigInfo?

    public init(ipAddresses: [VcenterVmGuestNetworkingInterfacesIpAddressInfo], dhcp: VcenterVmGuestDhcpConfigInfo?) {
        self.ipAddresses = ipAddresses
        self.dhcp = dhcp
    }

    public enum CodingKeys: String, CodingKey { 
        case ipAddresses = "ip_addresses"
        case dhcp
    }


}

