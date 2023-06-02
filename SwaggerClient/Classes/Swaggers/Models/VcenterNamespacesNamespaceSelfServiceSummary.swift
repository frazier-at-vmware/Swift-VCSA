//
// VcenterNamespacesNamespaceSelfServiceSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespacesNamespaceSelfServiceSummary: Codable {

    /** Identifier for the cluster to which namespace service is associated. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. */
    public var cluster: String
    /** The self-service namespace capability of the cluster with vSphere Namespaces enabled. */
    public var capability: VcenterNamespacesNamespaceSelfServiceCapability
    /** The current status of the namespace-self-service. */
    public var status: VcenterNamespacesNamespaceSelfServiceStatus

    public init(cluster: String, capability: VcenterNamespacesNamespaceSelfServiceCapability, status: VcenterNamespacesNamespaceSelfServiceStatus) {
        self.cluster = cluster
        self.capability = capability
        self.status = status
    }


}
