//
// VcenterVmToolsRunState.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Current run state of VMware Tools in the guest operating system. */
public enum VcenterVmToolsRunState: String, Codable {
    case notRunning = "NOT_RUNNING"
    case running = "RUNNING"
    case executingScripts = "EXECUTING_SCRIPTS"

}