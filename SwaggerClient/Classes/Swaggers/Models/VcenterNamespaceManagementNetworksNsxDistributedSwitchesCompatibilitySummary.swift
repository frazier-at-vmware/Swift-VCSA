//
// VcenterNamespaceManagementNetworksNsxDistributedSwitchesCompatibilitySummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNetworksNsxDistributedSwitchesCompatibilitySummary: Codable {

    /** Identifier of the switch. The value of this field refers to the UUID of a vim.DistributedVirtualSwitch. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vSphereDistributedSwitch. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vSphereDistributedSwitch. */
    public var distributedSwitch: String
    /** Human-readable identifier of the switch. */
    public var name: String
    /** Compatibility of this Distributed Switch with the vSphere Namespaces. */
    public var compatible: Bool
    /** List of reasons for incompatibility. If empty, this Distributed Switch is compatible. */
    public var incompatibilityReasons: [VapiStdLocalizableMessage]

    public init(distributedSwitch: String, name: String, compatible: Bool, incompatibilityReasons: [VapiStdLocalizableMessage]) {
        self.distributedSwitch = distributedSwitch
        self.name = name
        self.compatible = compatible
        self.incompatibilityReasons = incompatibilityReasons
    }

    public enum CodingKeys: String, CodingKey { 
        case distributedSwitch = "distributed_switch"
        case name
        case compatible
        case incompatibilityReasons = "incompatibility_reasons"
    }


}

