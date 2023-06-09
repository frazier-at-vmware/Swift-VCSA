//
// VcenterVmHardwareCpuInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareCpuInfo: Codable {

    /** Number of CPU cores. */
    public var count: Int64
    /** Number of CPU cores per socket. */
    public var coresPerSocket: Int64
    /** Flag indicating whether adding CPUs while the virtual machine is running is enabled. */
    public var hotAddEnabled: Bool
    /** Flag indicating whether removing CPUs while the virtual machine is running is enabled. */
    public var hotRemoveEnabled: Bool

    public init(count: Int64, coresPerSocket: Int64, hotAddEnabled: Bool, hotRemoveEnabled: Bool) {
        self.count = count
        self.coresPerSocket = coresPerSocket
        self.hotAddEnabled = hotAddEnabled
        self.hotRemoveEnabled = hotRemoveEnabled
    }

    public enum CodingKeys: String, CodingKey { 
        case count
        case coresPerSocket = "cores_per_socket"
        case hotAddEnabled = "hot_add_enabled"
        case hotRemoveEnabled = "hot_remove_enabled"
    }


}

