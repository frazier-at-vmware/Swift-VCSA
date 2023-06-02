//
// VcenterVmHardwareMemoryUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareMemoryUpdateSpec: Codable {

    /** New memory size in mebibytes.   The supported range of memory sizes is constrained by the configured guest operating system and virtual hardware version of the virtual machine.    If the virtual machine is running, this value may only be changed if Memory.Info.hot-add-enabled is true, and the new memory size must satisfy the constraints specified by Memory.Info.hot-add-increment-size-mib and Memory.Info.hot-add-limit-mib.  If unset, the value is unchanged. */
    public var sizeMiB: Int64?
    /** Flag indicating whether adding memory while the virtual machine is running should be enabled.   Some guest operating systems may consume more resources or perform less efficiently when they run on hardware that supports adding memory while the machine is running.    This field may only be modified if the virtual machine is not powered on.  If unset, the value is unchanged. */
    public var hotAddEnabled: Bool?

    public init(sizeMiB: Int64?, hotAddEnabled: Bool?) {
        self.sizeMiB = sizeMiB
        self.hotAddEnabled = hotAddEnabled
    }

    public enum CodingKeys: String, CodingKey { 
        case sizeMiB = "size_MiB"
        case hotAddEnabled = "hot_add_enabled"
    }


}
