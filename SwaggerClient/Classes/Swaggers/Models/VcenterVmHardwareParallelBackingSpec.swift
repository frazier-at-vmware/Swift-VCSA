//
// VcenterVmHardwareParallelBackingSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareParallelBackingSpec: Codable {

    /** Backing type for the virtual parallel port. */
    public var type: VcenterVmHardwareParallelBackingType
    /** Path of the file that should be used as the virtual parallel port backing. This field is optional and it is only relevant when the value of Parallel.BackingSpec.type is FILE. */
    public var file: String?
    /** Name of the device that should be used as the virtual parallel port backing. If unset, the virtual parallel port will be configured to automatically detect a suitable host device. */
    public var hostDevice: String?

    public init(type: VcenterVmHardwareParallelBackingType, file: String?, hostDevice: String?) {
        self.type = type
        self.file = file
        self.hostDevice = hostDevice
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case file
        case hostDevice = "host_device"
    }


}

