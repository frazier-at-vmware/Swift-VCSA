//
// VcenterLcmDiscoveryInteropReportSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterLcmDiscoveryInteropReportSpec: Codable {

    /** The vCenter Server version.   It is used for checking against the other products registered with that instance of vCenter Server.  */
    public var targetVersion: String

    public init(targetVersion: String) {
        self.targetVersion = targetVersion
    }

    public enum CodingKeys: String, CodingKey { 
        case targetVersion = "target_version"
    }


}

