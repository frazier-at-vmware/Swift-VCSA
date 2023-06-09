//
// VcenterDeploymentMigrateSourceVcWindows.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentMigrateSourceVcWindows: Codable {

    /** The IP address or DNS resolvable name of the source Windows machine. */
    public var hostname: String
    /** The SSO account with administrative privilege to perform the migration operation. */
    public var username: String
    /** The SSO administrator account password. */
    public var password: String

    public init(hostname: String, username: String, password: String) {
        self.hostname = hostname
        self.username = username
        self.password = password
    }


}

