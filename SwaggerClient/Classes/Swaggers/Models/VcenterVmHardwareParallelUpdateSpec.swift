//
// VcenterVmHardwareParallelUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareParallelUpdateSpec: Codable {

    /** Physical resource backing for the virtual parallel port.   This field may only be modified if the virtual machine is not powered on or the virtual parallel port is not connected.  If unset, the value is unchanged. */
    public var backing: VcenterVmHardwareParallelBackingSpec?
    /** Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. If unset, the value is unchanged. */
    public var startConnected: Bool?
    /** Flag indicating whether the guest can connect and disconnect the device. If unset, the value is unchanged. */
    public var allowGuestControl: Bool?

    public init(backing: VcenterVmHardwareParallelBackingSpec?, startConnected: Bool?, allowGuestControl: Bool?) {
        self.backing = backing
        self.startConnected = startConnected
        self.allowGuestControl = allowGuestControl
    }

    public enum CodingKeys: String, CodingKey { 
        case backing
        case startConnected = "start_connected"
        case allowGuestControl = "allow_guest_control"
    }


}
