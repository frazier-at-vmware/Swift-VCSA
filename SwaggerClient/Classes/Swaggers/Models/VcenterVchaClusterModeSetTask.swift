//
// VcenterVchaClusterModeSetTask.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVchaClusterModeSetTask: Codable {

    /** Clustermode to change the VCHA cluster mode to. */
    public var mode: VcenterVchaClusterModeClusterMode

    public init(mode: VcenterVchaClusterModeClusterMode) {
        self.mode = mode
    }


}

