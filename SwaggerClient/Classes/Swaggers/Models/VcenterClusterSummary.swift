//
// VcenterClusterSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterClusterSummary: Codable {

    /** Identifier of the cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. */
    public var cluster: String
    /** Name of the cluster. */
    public var name: String
    /** Flag indicating whether the vSphere HA feature is enabled for the cluster. */
    public var haEnabled: Bool
    /** Flag indicating whether the vSphere DRS service is enabled for the cluster. */
    public var drsEnabled: Bool

    public init(cluster: String, name: String, haEnabled: Bool, drsEnabled: Bool) {
        self.cluster = cluster
        self.name = name
        self.haEnabled = haEnabled
        self.drsEnabled = drsEnabled
    }

    public enum CodingKeys: String, CodingKey { 
        case cluster
        case name
        case haEnabled = "ha_enabled"
        case drsEnabled = "drs_enabled"
    }


}

