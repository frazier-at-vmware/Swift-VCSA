//
// VcenterNamespaceManagementSupervisorsImageRegistry.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorsImageRegistry: Codable {

    /** IP address or the hostname of container image registry. */
    public var hostname: String
    /** Port number of the container image registry. If unset, defaults to 443. */
    public var port: Int64?

    public init(hostname: String, port: Int64?) {
        self.hostname = hostname
        self.port = port
    }


}

