//
// VcenterVmHardwareDiskCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareDiskCreate: Codable {

    /** Specification for the new virtual disk. */
    public var spec: VcenterVmHardwareDiskCreateSpec

    public init(spec: VcenterVmHardwareDiskCreateSpec) {
        self.spec = spec
    }


}

