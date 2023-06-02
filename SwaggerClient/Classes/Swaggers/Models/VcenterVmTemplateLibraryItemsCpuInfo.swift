//
// VcenterVmTemplateLibraryItemsCpuInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsCpuInfo: Codable {

    /** Number of CPU cores. */
    public var count: Int64
    /** Number of CPU cores per socket. */
    public var coresPerSocket: Int64

    public init(count: Int64, coresPerSocket: Int64) {
        self.count = count
        self.coresPerSocket = coresPerSocket
    }

    public enum CodingKeys: String, CodingKey { 
        case count
        case coresPerSocket = "cores_per_socket"
    }


}

