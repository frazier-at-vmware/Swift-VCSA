//
// VcenterVMClone.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVMClone: Codable {

    /** Virtual machine clone specification. */
    public var spec: VcenterVMCloneSpec

    public init(spec: VcenterVMCloneSpec) {
        self.spec = spec
    }


}

