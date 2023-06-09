//
// VcenterVmGuestFilesystemFilesMove.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemFilesMove: Codable {

    /** The guest authentication data. */
    public var credentials: VcenterVmGuestCredentials
    /** The complete path to the original file or symbolic link to be moved. */
    public var path: String
    /** The complete path to the new file. It cannot be a path to an existing directory. */
    public var newPath: String
    /** If true, the destination file is overwritten. If unset, the destination file is not overwritten. */
    public var overwrite: Bool?

    public init(credentials: VcenterVmGuestCredentials, path: String, newPath: String, overwrite: Bool?) {
        self.credentials = credentials
        self.path = path
        self.newPath = newPath
        self.overwrite = overwrite
    }

    public enum CodingKeys: String, CodingKey { 
        case credentials
        case path
        case newPath = "new_path"
        case overwrite
    }


}

