//
// VcenterVmPowerInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmPowerInfo: Codable {

    /** Power state of the virtual machine. */
    public var state: VcenterVmPowerState
    /** Flag indicating whether the virtual machine was powered off cleanly. This field may be used to detect that the virtual machine crashed unexpectedly and should be restarted. This field is optional and it is only relevant when the value of Power.Info.state is POWERED_OFF. */
    public var cleanPowerOff: Bool?

    public init(state: VcenterVmPowerState, cleanPowerOff: Bool?) {
        self.state = state
        self.cleanPowerOff = cleanPowerOff
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case cleanPowerOff = "clean_power_off"
    }


}

