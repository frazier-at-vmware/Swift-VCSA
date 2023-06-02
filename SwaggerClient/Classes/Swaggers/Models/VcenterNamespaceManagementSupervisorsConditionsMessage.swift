//
// VcenterNamespaceManagementSupervisorsConditionsMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorsConditionsMessage: Codable {

    /** Type of the message. */
    public var severity: VcenterNamespaceManagementSupervisorsConditionsSeverity
    /** Details about the message. If unset, message details are not required for taking actions. */
    public var details: VapiStdLocalizableMessage?

    public init(severity: VcenterNamespaceManagementSupervisorsConditionsSeverity, details: VapiStdLocalizableMessage?) {
        self.severity = severity
        self.details = details
    }


}
