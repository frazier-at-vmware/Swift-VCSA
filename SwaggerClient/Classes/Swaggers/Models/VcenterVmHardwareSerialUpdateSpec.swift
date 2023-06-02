//
// VcenterVmHardwareSerialUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareSerialUpdateSpec: Codable {

    /** CPU yield behavior. If set to true, the virtual machine will periodically relinquish the processor if its sole task is polling the virtual serial port. The amount of time it takes to regain the processor will depend on the degree of other virtual machine activity on the host.   This field may be modified at any time, and changes applied to a connected virtual serial port take effect immediately.  If unset, the value is unchanged. */
    public var yieldOnPoll: Bool?
    /** Physical resource backing for the virtual serial port.   This field may only be modified if the virtual machine is not powered on or the virtual serial port is not connected.  If unset, the value is unchanged. */
    public var backing: VcenterVmHardwareSerialBackingSpec?
    /** Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. If unset, the value is unchanged. */
    public var startConnected: Bool?
    /** Flag indicating whether the guest can connect and disconnect the device. If unset, the value is unchanged. */
    public var allowGuestControl: Bool?

    public init(yieldOnPoll: Bool?, backing: VcenterVmHardwareSerialBackingSpec?, startConnected: Bool?, allowGuestControl: Bool?) {
        self.yieldOnPoll = yieldOnPoll
        self.backing = backing
        self.startConnected = startConnected
        self.allowGuestControl = allowGuestControl
    }

    public enum CodingKeys: String, CodingKey { 
        case yieldOnPoll = "yield_on_poll"
        case backing
        case startConnected = "start_connected"
        case allowGuestControl = "allow_guest_control"
    }


}

