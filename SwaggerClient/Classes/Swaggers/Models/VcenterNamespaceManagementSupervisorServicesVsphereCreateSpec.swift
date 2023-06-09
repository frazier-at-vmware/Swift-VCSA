//
// VcenterNamespaceManagementSupervisorServicesVsphereCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorServicesVsphereCreateSpec: Codable {

    /** Supervisor service version specification that provides the service definitions for one Supervisor Service version. */
    public var versionSpec: VcenterNamespaceManagementSupervisorServicesVersionsVsphereCreateSpec

    public init(versionSpec: VcenterNamespaceManagementSupervisorServicesVersionsVsphereCreateSpec) {
        self.versionSpec = versionSpec
    }

    public enum CodingKeys: String, CodingKey { 
        case versionSpec = "version_spec"
    }


}

