//
// VcenterVmToolsInstallerInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmToolsInstallerInfo: Codable {

    /** Flag indicating whether the VMware Tools installer is mounted as a CD-ROM. */
    public var isConnected: Bool

    public init(isConnected: Bool) {
        self.isConnected = isConnected
    }

    public enum CodingKeys: String, CodingKey { 
        case isConnected = "is_connected"
    }


}

