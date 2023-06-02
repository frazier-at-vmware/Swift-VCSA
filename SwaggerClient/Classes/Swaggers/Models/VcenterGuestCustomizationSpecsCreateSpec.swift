//
// VcenterGuestCustomizationSpecsCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterGuestCustomizationSpecsCreateSpec: Codable {

    /** The specification object. */
    public var spec: VcenterGuestCustomizationSpec
    /** Description of the specification. */
    public var _description: String
    /** Name of the specification. */
    public var name: String

    public init(spec: VcenterGuestCustomizationSpec, _description: String, name: String) {
        self.spec = spec
        self._description = _description
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case spec
        case _description = "description"
        case name
    }


}
