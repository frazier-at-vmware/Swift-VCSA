//
// VcenterDeploymentMigrateCheck.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentMigrateCheck: Codable {

    /** MigrateSpec parameters to run sanity check on. */
    public var spec: VcenterDeploymentMigrateMigrateSpec

    public init(spec: VcenterDeploymentMigrateMigrateSpec) {
        self.spec = spec
    }


}

