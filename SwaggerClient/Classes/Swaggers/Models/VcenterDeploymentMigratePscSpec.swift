//
// VcenterDeploymentMigratePscSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentMigratePscSpec: Codable {

    /** Customer experience improvement program should be enabled or disabled for this Platform Services Controller migration. */
    public var ceipEnabled: Bool

    public init(ceipEnabled: Bool) {
        self.ceipEnabled = ceipEnabled
    }

    public enum CodingKeys: String, CodingKey { 
        case ceipEnabled = "ceip_enabled"
    }


}

