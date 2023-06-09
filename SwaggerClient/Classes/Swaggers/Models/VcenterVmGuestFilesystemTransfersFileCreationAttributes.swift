//
// VcenterVmGuestFilesystemTransfersFileCreationAttributes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemTransfersFileCreationAttributes: Codable {

    /** The size in bytes of the file to be transferred into the guest. */
    public var size: Int64
    /** Whether an existing file should be overwritten. If unset any existing file will not be overwritten. */
    public var overwrite: Bool?
    /** The date and time the file was last modified. If unset the value will be the time when the file is transferred into the guest. */
    public var lastModified: Date?
    /** The date and time the file was last accessed. If unset the value will be the time when the file is transferred into the guest. */
    public var lastAccessed: Date?
    /** Windows-specific file creation information. If unset, the behavior is equivalent to a Transfers.WindowsFileAttributesCreateSpec with all fields unset which means the defaults are used. May only be set if the guest operating system is Windows. */
    public var windows: VcenterVmGuestFilesystemTransfersWindowsFileAttributesCreateSpec?
    /** Posix-specific file creation information. If unset, the behavior is equivalent to a Transfers.PosixFileAttributesCreateSpec with all fields unset which means the defaults are used. May only be set if the guest operating system is Posix. */
    public var posix: VcenterVmGuestFilesystemTransfersPosixFileAttributesCreateSpec?

    public init(size: Int64, overwrite: Bool?, lastModified: Date?, lastAccessed: Date?, windows: VcenterVmGuestFilesystemTransfersWindowsFileAttributesCreateSpec?, posix: VcenterVmGuestFilesystemTransfersPosixFileAttributesCreateSpec?) {
        self.size = size
        self.overwrite = overwrite
        self.lastModified = lastModified
        self.lastAccessed = lastAccessed
        self.windows = windows
        self.posix = posix
    }

    public enum CodingKeys: String, CodingKey { 
        case size
        case overwrite
        case lastModified = "last_modified"
        case lastAccessed = "last_accessed"
        case windows
        case posix
    }


}

