//
// VcenterOvfImportFlagInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterOvfImportFlagInfo: Codable {

    /** The name of the import flag that is supported by the deployment platform. */
    public var option: String
    /** Localizable description of the import flag. */
    public var _description: VapiStdLocalizableMessage

    public init(option: String, _description: VapiStdLocalizableMessage) {
        self.option = option
        self._description = _description
    }

    public enum CodingKeys: String, CodingKey { 
        case option
        case _description = "description"
    }


}

