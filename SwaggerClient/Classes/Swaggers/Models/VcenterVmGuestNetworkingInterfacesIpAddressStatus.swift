//
// VcenterVmGuestNetworkingInterfacesIpAddressStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Interfaces.IpAddressStatus enumerated type defines the present status of an address on an interface. See RFC 4293 IpAddressStatusTC. */
public enum VcenterVmGuestNetworkingInterfacesIpAddressStatus: String, Codable {
    case preferred = "PREFERRED"
    case deprecated = "DEPRECATED"
    case invalid = "INVALID"
    case inaccessible = "INACCESSIBLE"
    case unknown = "UNKNOWN"
    case tentative = "TENTATIVE"
    case duplicate = "DUPLICATE"

}
