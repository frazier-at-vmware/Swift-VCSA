//
// VcenterComputePoliciesSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterComputePoliciesSummary: Codable {

    /** Identifier of the policy. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.compute.Policy. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.compute.Policy. */
    public var policy: String
    /** Name of the policy. */
    public var name: String
    /** Description of the policy. */
    public var _description: String
    /** Identifier of the capability this policy is based on. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.compute.policies.Capability. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.compute.policies.Capability. */
    public var capability: String

    public init(policy: String, name: String, _description: String, capability: String) {
        self.policy = policy
        self.name = name
        self._description = _description
        self.capability = capability
    }

    public enum CodingKeys: String, CodingKey { 
        case policy
        case name
        case _description = "description"
        case capability
    }


}
