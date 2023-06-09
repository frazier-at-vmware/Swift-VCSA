//
// VcenterNamespacesInstancesStorageSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespacesInstancesStorageSpec: Codable {

    /** ID of the storage policy. A Kubernetes storage class is created for this storage policy if it does not exist already. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: SpsStorageProfile. When operations return a value of this structure as a result, the field will be an identifier for the resource type: SpsStorageProfile. */
    public var policy: String
    /** The maximum amount of storage (in mebibytes) which can be utilized by the namespace for this specification. If unset, no limits are placed. */
    public var limit: Int64?

    public init(policy: String, limit: Int64?) {
        self.policy = policy
        self.limit = limit
    }


}

