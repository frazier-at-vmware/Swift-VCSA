//
// VcenterVmGuestPowerInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestPowerInfo: Codable {

    /** The power state of the guest operating system. */
    public var state: VcenterVmGuestPowerState
    /** Flag indicating if the virtual machine is ready to process soft power operations. */
    public var operationsReady: Bool

    public init(state: VcenterVmGuestPowerState, operationsReady: Bool) {
        self.state = state
        self.operationsReady = operationsReady
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case operationsReady = "operations_ready"
    }


}

