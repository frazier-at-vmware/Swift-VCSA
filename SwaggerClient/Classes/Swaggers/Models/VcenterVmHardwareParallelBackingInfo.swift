//
// VcenterVmHardwareParallelBackingInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareParallelBackingInfo: Codable {

    /** Backing type for the virtual parallel port. */
    public var type: VcenterVmHardwareParallelBackingType
    /** Path of the file backing the virtual parallel port. This field is optional and it is only relevant when the value of Parallel.BackingInfo.type is FILE. */
    public var file: String?
    /** Name of the device backing the virtual parallel port.    This field will be unset if Parallel.BackingInfo.auto-detect is true and the virtual parallel port is not connected or no suitable device is available on the host. */
    public var hostDevice: String?
    /** Flag indicating whether the virtual parallel port is configured to automatically detect a suitable host device. This field is optional and it is only relevant when the value of Parallel.BackingInfo.type is HOST_DEVICE. */
    public var autoDetect: Bool?

    public init(type: VcenterVmHardwareParallelBackingType, file: String?, hostDevice: String?, autoDetect: Bool?) {
        self.type = type
        self.file = file
        self.hostDevice = hostDevice
        self.autoDetect = autoDetect
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case file
        case hostDevice = "host_device"
        case autoDetect = "auto_detect"
    }


}

