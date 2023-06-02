//
// VcenterVmGuestFilesystemFilesPosixFileAttributesInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemFilesPosixFileAttributesInfo: Codable {

    /** The owner ID. */
    public var owner: Int64
    /** The group ID. */
    public var group: Int64
    /** The file permissions in chmod(2) format. This field is presented as octal. */
    public var permissions: String

    public init(owner: Int64, group: Int64, permissions: String) {
        self.owner = owner
        self.group = group
        self.permissions = permissions
    }


}

