//
// VcenterVmGuestFilesystemFilesGet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemFilesGet: Codable {

    /** The guest authentication data. */
    public var credentials: VcenterVmGuestCredentials

    public init(credentials: VcenterVmGuestCredentials) {
        self.credentials = credentials
    }


}

