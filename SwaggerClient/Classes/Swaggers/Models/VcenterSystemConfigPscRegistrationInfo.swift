//
// VcenterSystemConfigPscRegistrationInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterSystemConfigPscRegistrationInfo: Codable {

    /** The IP address or DNS resolvable name of the PSC this appliance is registered with. */
    public var address: String
    /** The HTTPs port used by the external PSC. */
    public var httpsPort: Int64
    /** The Single Sign-On domain name of the external PSC. */
    public var ssoDomain: String

    public init(address: String, httpsPort: Int64, ssoDomain: String) {
        self.address = address
        self.httpsPort = httpsPort
        self.ssoDomain = ssoDomain
    }

    public enum CodingKeys: String, CodingKey { 
        case address
        case httpsPort = "https_port"
        case ssoDomain = "sso_domain"
    }


}
