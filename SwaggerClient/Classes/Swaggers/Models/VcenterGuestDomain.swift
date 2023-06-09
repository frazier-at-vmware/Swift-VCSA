//
// VcenterGuestDomain.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterGuestDomain: Codable {

    /** The type of network to join after the customization. */
    public var type: VcenterGuestDomainType
    /** The workgroup that the virtual machine should join. This field is optional and it is only relevant when the value of Domain.type is WORKGROUP. */
    public var workgroup: String?
    /** The domain to which the virtual machine should be joined. This field is optional and it is only relevant when the value of Domain.type is DOMAIN. */
    public var domain: String?
    /** The domain user that has permission to join the domain after virtual machine is joined. This field is optional and it is only relevant when the value of Domain.type is DOMAIN. */
    public var domainUsername: String?
    /** The domain user password that has permission to join the Domain.domain-username after customization. This field is optional and it is only relevant when the value of Domain.type is DOMAIN. */
    public var domainPassword: String?

    public init(type: VcenterGuestDomainType, workgroup: String?, domain: String?, domainUsername: String?, domainPassword: String?) {
        self.type = type
        self.workgroup = workgroup
        self.domain = domain
        self.domainUsername = domainUsername
        self.domainPassword = domainPassword
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case workgroup
        case domain
        case domainUsername = "domain_username"
        case domainPassword = "domain_password"
    }


}

