//
// VcenterVmGuestFilesystemFilesSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemFilesSummary: Codable {

    /** The name of the file or directory with any leading directories removed. */
    public var filename: String
    /** The type of file. */
    public var type: VcenterVmGuestFilesystemFilesType
    /** The file size in bytes. */
    public var size: Int64

    public init(filename: String, type: VcenterVmGuestFilesystemFilesType, size: Int64) {
        self.filename = filename
        self.type = type
        self.size = size
    }


}

