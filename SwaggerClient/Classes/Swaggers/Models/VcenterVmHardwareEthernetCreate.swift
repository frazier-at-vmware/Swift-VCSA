//
// VcenterVmHardwareEthernetCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareEthernetCreate: Codable {

    /** Specification for the new virtual Ethernet adapter. */
    public var spec: VcenterVmHardwareEthernetCreateSpec

    public init(spec: VcenterVmHardwareEthernetCreateSpec) {
        self.spec = spec
    }


}
