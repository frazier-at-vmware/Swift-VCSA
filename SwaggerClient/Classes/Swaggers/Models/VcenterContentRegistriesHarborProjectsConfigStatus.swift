//
// VcenterContentRegistriesHarborProjectsConfigStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The {@name ConfigStatus} {@term enumerated type} describes the status of reaching the desired configuration state for the Harbor project. */
public enum VcenterContentRegistriesHarborProjectsConfigStatus: String, Codable {
    case pending = "PENDING"
    case removing = "REMOVING"
    case error = "ERROR"
    case ready = "READY"

}
