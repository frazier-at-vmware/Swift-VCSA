//
// VcenterContentRegistriesHealthInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterContentRegistriesHealthInfo: Codable {

    /** Container registry status. */
    public var status: VcenterContentRegistriesHealthStatus
    /** Details about the status. */
    public var details: VapiStdLocalizableMessage?

    public init(status: VcenterContentRegistriesHealthStatus, details: VapiStdLocalizableMessage?) {
        self.status = status
        self.details = details
    }


}

