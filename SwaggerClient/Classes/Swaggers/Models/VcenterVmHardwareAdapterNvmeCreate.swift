//
// VcenterVmHardwareAdapterNvmeCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareAdapterNvmeCreate: Codable {

    /** Specification for the new virtual NVMe adapter. */
    public var spec: VcenterVmHardwareAdapterNvmeCreateSpec

    public init(spec: VcenterVmHardwareAdapterNvmeCreateSpec) {
        self.spec = spec
    }


}

