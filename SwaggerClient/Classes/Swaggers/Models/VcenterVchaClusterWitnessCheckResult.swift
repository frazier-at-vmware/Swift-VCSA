//
// VcenterVchaClusterWitnessCheckResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVchaClusterWitnessCheckResult: Codable {

    /** A list of problems which may require attention, but which are not fatal. */
    public var warnings: [VapiStdLocalizableMessage]
    /** A list of problems which are fatal to the operation and the operation will fail. */
    public var errors: [VapiStdLocalizableMessage]

    public init(warnings: [VapiStdLocalizableMessage], errors: [VapiStdLocalizableMessage]) {
        self.warnings = warnings
        self.errors = errors
    }


}
