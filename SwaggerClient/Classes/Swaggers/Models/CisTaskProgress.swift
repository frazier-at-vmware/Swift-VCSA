//
// CisTaskProgress.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CisTaskProgress: Codable {

    /** Total amount of the work for the operation. */
    public var total: Int64
    /** The amount of work completed for the operation. The value can only be incremented. */
    public var completed: Int64
    /** Message about the work progress. */
    public var message: VapiStdLocalizableMessage

    public init(total: Int64, completed: Int64, message: VapiStdLocalizableMessage) {
        self.total = total
        self.completed = completed
        self.message = message
    }


}

