//
// VcenterNamespacesInstancesSummaryV2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespacesInstancesSummaryV2: Codable {

    /** Identifier for the Supervisor hosting the namespace. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. */
    public var supervisor: String
    /** Identifier of the namespace. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespaces.Instance. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespaces.Instance. */
    public var namespace: String
    /** Description of the namespace. */
    public var _description: String
    /** Current setting for Instances.ConfigStatus. */
    public var configStatus: VcenterNamespacesInstancesConfigStatus
    /** Basic runtime statistics for the namespace. */
    public var stats: VcenterNamespacesInstancesStats
    /** Flag to indicate the self service namespace. If unset, the namespace is not marked as self service namespace. */
    public var selfServiceNamespace: Bool?

    public init(supervisor: String, namespace: String, _description: String, configStatus: VcenterNamespacesInstancesConfigStatus, stats: VcenterNamespacesInstancesStats, selfServiceNamespace: Bool?) {
        self.supervisor = supervisor
        self.namespace = namespace
        self._description = _description
        self.configStatus = configStatus
        self.stats = stats
        self.selfServiceNamespace = selfServiceNamespace
    }

    public enum CodingKeys: String, CodingKey { 
        case supervisor
        case namespace
        case _description = "description"
        case configStatus = "config_status"
        case stats
        case selfServiceNamespace = "self_service_namespace"
    }


}
