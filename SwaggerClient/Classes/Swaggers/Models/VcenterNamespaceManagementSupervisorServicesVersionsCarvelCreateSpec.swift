//
// VcenterNamespaceManagementSupervisorServicesVersionsCarvelCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorServicesVersionsCarvelCreateSpec: Codable {

    /** Inline content that contains all service definition of the version in Carvel application package format, which shall be base64 encoded. */
    public var content: String

    public init(content: String) {
        self.content = content
    }


}

