//
// VcenterContentRegistriesHarborSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterContentRegistriesHarborSummary: Codable {

    /** Identifier of the cluster. */
    public var cluster: String?
    /** Identifier of the registry. */
    public var registry: String
    /** Version of the registry. */
    public var version: String
    /** URL to access the UI of the registry. */
    public var uiAccessUrl: String

    public init(cluster: String?, registry: String, version: String, uiAccessUrl: String) {
        self.cluster = cluster
        self.registry = registry
        self.version = version
        self.uiAccessUrl = uiAccessUrl
    }

    public enum CodingKeys: String, CodingKey { 
        case cluster
        case registry
        case version
        case uiAccessUrl = "ui_access_url"
    }


}

