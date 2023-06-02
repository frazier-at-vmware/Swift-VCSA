//
// VcenterGuestCustomizationSpecsFilterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterGuestCustomizationSpecsFilterSpec: Codable {

    /** Names that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.name). If unset or empty, guest customization specifications with any name match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.guest.CustomizationSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.guest.CustomizationSpec. */
    public var names: [String]?
    /** Guest operating system type that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.os-type). If unset, guest customization specifications with any guest operating system type match the filter. */
    public var oSType: VcenterGuestCustomizationSpecsOsType?

    public init(names: [String]?, oSType: VcenterGuestCustomizationSpecsOsType?) {
        self.names = names
        self.oSType = oSType
    }

    public enum CodingKeys: String, CodingKey { 
        case names
        case oSType = "OS_type"
    }


}
