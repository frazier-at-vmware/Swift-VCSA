//
// VcenterVmHardwareUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareUpdate: Codable {

    /** Specification for updating the virtual hardware settings of the virtual machine. */
    public var spec: VcenterVmHardwareUpdateSpec

    public init(spec: VcenterVmHardwareUpdateSpec) {
        self.spec = spec
    }


}

