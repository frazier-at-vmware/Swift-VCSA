//
// VcenterIdentityProvidersUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterIdentityProvidersUpdate: Codable {

    /** the UpdateSpec contains the information used to update the provider */
    public var spec: VcenterIdentityProvidersUpdateSpec

    public init(spec: VcenterIdentityProvidersUpdateSpec) {
        self.spec = spec
    }


}
