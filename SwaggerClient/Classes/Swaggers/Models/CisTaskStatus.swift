//
// CisTaskStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Status enumerated type defines the status values that can be reported for an operation. */
public enum CisTaskStatus: String, Codable {
    case pending = "PENDING"
    case running = "RUNNING"
    case blocked = "BLOCKED"
    case succeeded = "SUCCEEDED"
    case failed = "FAILED"

}
