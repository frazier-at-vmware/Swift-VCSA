//
// VcenterVmHardwareMemoryUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareMemoryUpdate: Codable {

    /** Specification for updating the memory-related settings of the virtual machine. */
    public var spec: VcenterVmHardwareMemoryUpdateSpec

    public init(spec: VcenterVmHardwareMemoryUpdateSpec) {
        self.spec = spec
    }


}
