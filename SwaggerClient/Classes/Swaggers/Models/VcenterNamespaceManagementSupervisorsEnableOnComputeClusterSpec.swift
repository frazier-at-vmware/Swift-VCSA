//
// VcenterNamespaceManagementSupervisorsEnableOnComputeClusterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorsEnableOnComputeClusterSpec: Codable {

    /** Supervisors.EnableOnComputeClusterSpec.zone describes consumption fault domain zone available to the Supervisor and its workloads. Zone will be created and associated with the cluster. If unset, the zone name will be generated based on the cluster managed object ID. The zone can be managed with the zone api {@link #vcenter.consumption-domains.Zones} When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.consumption_domains.Zone. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.consumption_domains.Zone. */
    public var zone: String?
    /** A Supervisors.EnableSpec.name is a user-friendly identifier for this Supervisor. */
    public var name: String
    /** Supervisors.EnableSpec.control-plane specifies configuration for the Supervisor control plane. */
    public var controlPlane: VcenterNamespaceManagementSupervisorsControlPlane
    /** Supervisors.EnableSpec.workloads specifies configuration for compute, network, and storage for workloads. */
    public var workloads: VcenterNamespaceManagementSupervisorsWorkloads

    public init(zone: String?, name: String, controlPlane: VcenterNamespaceManagementSupervisorsControlPlane, workloads: VcenterNamespaceManagementSupervisorsWorkloads) {
        self.zone = zone
        self.name = name
        self.controlPlane = controlPlane
        self.workloads = workloads
    }

    public enum CodingKeys: String, CodingKey { 
        case zone
        case name
        case controlPlane = "control_plane"
        case workloads
    }


}
