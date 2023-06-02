//
// VcenterVmGuestFilesystemFilesWindowsFileAttributesInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemFilesWindowsFileAttributesInfo: Codable {

    /** The file is hidden. */
    public var hidden: Bool
    /** The file is read-only. */
    public var readOnly: Bool
    /** The date and time the file was created. */
    public var created: Date

    public init(hidden: Bool, readOnly: Bool, created: Date) {
        self.hidden = hidden
        self.readOnly = readOnly
        self.created = created
    }

    public enum CodingKeys: String, CodingKey { 
        case hidden
        case readOnly = "read_only"
        case created
    }


}

