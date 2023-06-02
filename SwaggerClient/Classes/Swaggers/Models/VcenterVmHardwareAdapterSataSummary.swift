//
// VcenterVmHardwareAdapterSataSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareAdapterSataSummary: Codable {

    /** Identifier of the virtual SATA adapter. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.vm.hardware.SataAdapter. */
    public var adapter: String

    public init(adapter: String) {
        self.adapter = adapter
    }


}
