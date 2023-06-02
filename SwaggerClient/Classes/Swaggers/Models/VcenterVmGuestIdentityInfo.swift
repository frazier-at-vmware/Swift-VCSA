//
// VcenterVmGuestIdentityInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestIdentityInfo: Codable {

    /** Guest operating system identifier (short name). */
    public var name: VcenterVmGuestOS
    /** Guest operating system family. */
    public var family: VcenterVmGuestOSFamily
    /** Guest operating system full name. */
    public var fullName: VapiStdLocalizableMessage
    /** Hostname of the guest operating system. */
    public var hostName: String
    /** IP address assigned by the guest operating system. If unset the guest does not have an IP address. */
    public var ipAddress: String?

    public init(name: VcenterVmGuestOS, family: VcenterVmGuestOSFamily, fullName: VapiStdLocalizableMessage, hostName: String, ipAddress: String?) {
        self.name = name
        self.family = family
        self.fullName = fullName
        self.hostName = hostName
        self.ipAddress = ipAddress
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case family
        case fullName = "full_name"
        case hostName = "host_name"
        case ipAddress = "ip_address"
    }


}

