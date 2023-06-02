//
// VcenterStoragePoliciesSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterStoragePoliciesSummary: Codable {

    /** Identifier of the storage policy. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.StoragePolicy. */
    public var policy: String
    /** Name of the storage policy. */
    public var name: String
    /** Description of the storage policy. */
    public var _description: String

    public init(policy: String, name: String, _description: String) {
        self.policy = policy
        self.name = name
        self._description = _description
    }

    public enum CodingKeys: String, CodingKey { 
        case policy
        case name
        case _description = "description"
    }


}

