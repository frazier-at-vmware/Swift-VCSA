//
// VcenterVmHardwareScsiAddressSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareScsiAddressSpec: Codable {

    /** Bus number of the adapter to which the device should be attached. */
    public var bus: Int64
    /** Unit number of the device. If unset, the server will choose an available unit number on the specified adapter. If there are no available connections on the adapter, the request will be rejected. */
    public var unit: Int64?

    public init(bus: Int64, unit: Int64?) {
        self.bus = bus
        self.unit = unit
    }


}

