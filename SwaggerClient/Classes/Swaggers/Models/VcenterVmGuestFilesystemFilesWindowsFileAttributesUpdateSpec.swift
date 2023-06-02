//
// VcenterVmGuestFilesystemFilesWindowsFileAttributesUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemFilesWindowsFileAttributesUpdateSpec: Codable {

    /** The file is hidden. If {term unset} the value will not be changed. */
    public var hidden: Bool?
    /** The file is read-only. If {term unset} the value will not be changed. */
    public var readOnly: Bool?

    public init(hidden: Bool?, readOnly: Bool?) {
        self.hidden = hidden
        self.readOnly = readOnly
    }

    public enum CodingKeys: String, CodingKey { 
        case hidden
        case readOnly = "read_only"
    }


}

