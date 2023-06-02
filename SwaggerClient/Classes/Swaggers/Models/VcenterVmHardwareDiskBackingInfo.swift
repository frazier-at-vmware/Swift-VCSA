//
// VcenterVmHardwareDiskBackingInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareDiskBackingInfo: Codable {

    /** Backing type for the virtual disk. */
    public var type: VcenterVmHardwareDiskBackingType
    /** Path of the VMDK file backing the virtual disk. This field is optional and it is only relevant when the value of Disk.BackingInfo.type is VMDK_FILE. */
    public var vmdkFile: String?

    public init(type: VcenterVmHardwareDiskBackingType, vmdkFile: String?) {
        self.type = type
        self.vmdkFile = vmdkFile
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case vmdkFile = "vmdk_file"
    }


}

