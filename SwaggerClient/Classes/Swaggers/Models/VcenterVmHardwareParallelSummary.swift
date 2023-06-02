//
// VcenterVmHardwareParallelSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareParallelSummary: Codable {

    /** Identifier of the virtual parallel port. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. */
    public var port: String

    public init(port: String) {
        self.port = port
    }


}

