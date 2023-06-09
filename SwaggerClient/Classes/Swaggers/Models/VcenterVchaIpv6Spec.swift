//
// VcenterVchaIpv6Spec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVchaIpv6Spec: Codable {

    /** IPv6 address to be used to configure the interface. */
    public var address: String
    /** The CIDR prefix for the interface. */
    public var _prefix: Int64

    public init(address: String, _prefix: Int64) {
        self.address = address
        self._prefix = _prefix
    }

    public enum CodingKeys: String, CodingKey { 
        case address
        case _prefix = "prefix"
    }


}

