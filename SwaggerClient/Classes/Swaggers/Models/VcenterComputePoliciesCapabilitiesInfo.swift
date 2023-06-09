//
// VcenterComputePoliciesCapabilitiesInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterComputePoliciesCapabilitiesInfo: Codable {

    /** Name of the capability. */
    public var name: String
    /** Description of the capability. */
    public var _description: String
    /** Identifier of the structure used to create a policy based on this capability. See Policies.create. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.structure. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.structure. */
    public var createSpecType: String
    /** Identifier of the structure returned when retrieving information about a policy based on this capability. See Policies.get. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.structure. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.structure. */
    public var infoType: String

    public init(name: String, _description: String, createSpecType: String, infoType: String) {
        self.name = name
        self._description = _description
        self.createSpecType = createSpecType
        self.infoType = infoType
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case _description = "description"
        case createSpecType = "create_spec_type"
        case infoType = "info_type"
    }


}

