//
// VcenterContentRegistriesHarborStorageSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterContentRegistriesHarborStorageSpec: Codable {

    /** Identifier of the storage policy. */
    public var policy: String
    /** The maximum amount of storage (in mebibytes) which can be utilized by the registry for this specification. */
    public var limit: Int64?

    public init(policy: String, limit: Int64?) {
        self.policy = policy
        self.limit = limit
    }


}

