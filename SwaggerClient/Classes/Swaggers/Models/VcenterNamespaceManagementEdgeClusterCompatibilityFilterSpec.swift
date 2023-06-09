//
// VcenterNamespaceManagementEdgeClusterCompatibilityFilterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementEdgeClusterCompatibilityFilterSpec: Codable {

    /** Compatibility criteria for matching the filter. If true, only Edge Clusters which are compatible with vSphere Namespaces match the filter. If false, only Edge Clusters which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Edge Clusters match the filter. */
    public var compatible: Bool?

    public init(compatible: Bool?) {
        self.compatible = compatible
    }


}

