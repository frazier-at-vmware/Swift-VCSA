//
// VcenterNamespacesInstancesAccess.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespacesInstancesAccess: Codable {

    /** Type of the subject. */
    public var subjectType: VcenterNamespacesAccessSubjectType
    /** Name of the subject. */
    public var subject: String
    /** Domain of the subject. */
    public var domain: String
    /** Role of the subject on the namespace instance. */
    public var role: VcenterNamespacesAccessRole
    /** UUID of an external identity provider for the user, if any. Use this field if the user is coming from an external identity provider configured via the vcenter.namespace_management.supervisors.identity.Providers service. If unset, vCenter Single Sign-On will be used as the identity provider. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespace_management.identity.Provider. */
    public var identityProvider: String?

    public init(subjectType: VcenterNamespacesAccessSubjectType, subject: String, domain: String, role: VcenterNamespacesAccessRole, identityProvider: String?) {
        self.subjectType = subjectType
        self.subject = subject
        self.domain = domain
        self.role = role
        self.identityProvider = identityProvider
    }

    public enum CodingKeys: String, CodingKey { 
        case subjectType = "subject_type"
        case subject
        case domain
        case role
        case identityProvider = "identity_provider"
    }


}

