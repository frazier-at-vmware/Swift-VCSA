//
// VcenterResourcePoolUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterResourcePoolUpdate: Codable {

    /** Specification for updating the configuration of the resource pool. */
    public var spec: VcenterResourcePoolUpdateSpec

    public init(spec: VcenterResourcePoolUpdateSpec) {
        self.spec = spec
    }


}

