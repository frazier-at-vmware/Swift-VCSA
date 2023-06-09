//
// VcenterVmGuestEnvironmentGet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestEnvironmentGet: Codable {

    /** The guest authentication data. See Credentials. */
    public var credentials: VcenterVmGuestCredentials

    public init(credentials: VcenterVmGuestCredentials) {
        self.credentials = credentials
    }


}

