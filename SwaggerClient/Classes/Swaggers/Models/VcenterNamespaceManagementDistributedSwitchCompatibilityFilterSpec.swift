//
// VcenterNamespaceManagementDistributedSwitchCompatibilityFilterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementDistributedSwitchCompatibilityFilterSpec: Codable {

    /** Compatibility criteria for matching the filter. If true, only Distributed Switches which are compatible with vSphere Namespaces match the filter. If false, only Distributed Switches which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Distributed Switches match the filter. */
    public var compatible: Bool?
    /** The network provider whose networks will be considered. If unset, this will default to NSXT_CONTAINER_PLUGIN. This field is optional because it was added in a newer version than its parent node. */
    public var networkProvider: VcenterNamespaceManagementClustersNetworkProvider?

    public init(compatible: Bool?, networkProvider: VcenterNamespaceManagementClustersNetworkProvider?) {
        self.compatible = compatible
        self.networkProvider = networkProvider
    }

    public enum CodingKeys: String, CodingKey { 
        case compatible
        case networkProvider = "network_provider"
    }


}

