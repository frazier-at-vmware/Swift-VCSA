//
// VcenterVmHardwareUpgradePolicy.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Hardware.UpgradePolicy enumerated type defines the valid virtual hardware upgrade policies for a virtual machine. */
public enum VcenterVmHardwareUpgradePolicy: String, Codable {
    case never = "NEVER"
    case afterCleanShutdown = "AFTER_CLEAN_SHUTDOWN"
    case always = "ALWAYS"

}