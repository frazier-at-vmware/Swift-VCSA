//
// VcenterDeploymentInstallPscReplicatedCheck.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentInstallPscReplicatedCheck: Codable {

    /** Information to configure a replicated PSC. */
    public var spec: VcenterDeploymentReplicatedPscSpec

    public init(spec: VcenterDeploymentReplicatedPscSpec) {
        self.spec = spec
    }


}

