//
// VcenterGuestCustomizationSpecsImportSpecification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterGuestCustomizationSpecsImportSpecification: Codable {

    /** content to be converted to the spec. */
    public var customizationSpec: String

    public init(customizationSpec: String) {
        self.customizationSpec = customizationSpec
    }

    public enum CodingKeys: String, CodingKey { 
        case customizationSpec = "customization_spec"
    }


}

