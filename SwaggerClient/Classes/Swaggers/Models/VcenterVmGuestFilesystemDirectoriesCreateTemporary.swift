//
// VcenterVmGuestFilesystemDirectoriesCreateTemporary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemDirectoriesCreateTemporary: Codable {

    /** The guest authentication data. */
    public var credentials: VcenterVmGuestCredentials
    /** The prefix to be given to the new temporary directory. */
    public var _prefix: String
    /** The suffix to be given to the new temporary directory. */
    public var suffix: String
    /** The complete path to the directory in which to create the new directory. Directory If unset a guest-specific default will be used. */
    public var parentPath: String?

    public init(credentials: VcenterVmGuestCredentials, _prefix: String, suffix: String, parentPath: String?) {
        self.credentials = credentials
        self._prefix = _prefix
        self.suffix = suffix
        self.parentPath = parentPath
    }

    public enum CodingKeys: String, CodingKey { 
        case credentials
        case _prefix = "prefix"
        case suffix
        case parentPath = "parent_path"
    }


}

