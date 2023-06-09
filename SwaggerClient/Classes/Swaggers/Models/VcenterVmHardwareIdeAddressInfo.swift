//
// VcenterVmHardwareIdeAddressInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareIdeAddressInfo: Codable {

    /** Flag specifying whether the device is attached to the primary or secondary IDE adapter of the virtual machine. */
    public var primary: Bool
    /** Flag specifying whether the device is the master or slave device on the IDE adapter. */
    public var master: Bool

    public init(primary: Bool, master: Bool) {
        self.primary = primary
        self.master = master
    }


}

