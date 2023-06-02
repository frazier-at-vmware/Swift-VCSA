//
// VcenterNamespaceManagementSupervisorServicesClusterSupervisorServicesMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorServicesClusterSupervisorServicesMessage: Codable {

    /** Type of the message. */
    public var severity: VcenterNamespaceManagementSupervisorServicesClusterSupervisorServicesMessageMessageSeverity
    /** Details about the message. If unset, message details are not required for taking actions. */
    public var details: VapiStdLocalizableMessage?

    public init(severity: VcenterNamespaceManagementSupervisorServicesClusterSupervisorServicesMessageMessageSeverity, details: VapiStdLocalizableMessage?) {
        self.severity = severity
        self.details = details
    }


}
