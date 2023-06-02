//
// VcenterResourcePoolCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterResourcePoolCreateSpec: Codable {

    /** Name of the resource pool. */
    public var name: String
    /** Parent of the created resource pool. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ResourcePool. */
    public var parent: String
    /** Resource allocation for CPU. if unset or empty, use the default CPU allocation specification. */
    public var cpuAllocation: VcenterResourcePoolResourceAllocationCreateSpec?
    /** Resource allocation for memory. if unset or empty, use the default memory allocation specification. */
    public var memoryAllocation: VcenterResourcePoolResourceAllocationCreateSpec?

    public init(name: String, parent: String, cpuAllocation: VcenterResourcePoolResourceAllocationCreateSpec?, memoryAllocation: VcenterResourcePoolResourceAllocationCreateSpec?) {
        self.name = name
        self.parent = parent
        self.cpuAllocation = cpuAllocation
        self.memoryAllocation = memoryAllocation
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case parent
        case cpuAllocation = "cpu_allocation"
        case memoryAllocation = "memory_allocation"
    }


}
