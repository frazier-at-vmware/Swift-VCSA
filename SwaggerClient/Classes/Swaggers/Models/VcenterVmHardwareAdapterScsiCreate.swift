//
// VcenterVmHardwareAdapterScsiCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareAdapterScsiCreate: Codable {

    /** Specification for the new virtual SCSI adapter. */
    public var spec: VcenterVmHardwareAdapterScsiCreateSpec

    public init(spec: VcenterVmHardwareAdapterScsiCreateSpec) {
        self.spec = spec
    }


}

