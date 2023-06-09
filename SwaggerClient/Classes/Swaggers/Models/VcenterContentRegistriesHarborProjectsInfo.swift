//
// VcenterContentRegistriesHarborProjectsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterContentRegistriesHarborProjectsInfo: Codable {

    /** Name of the Harbor project. Should be between 1-63 characters long alphanumeric string and may contain the following characters: a-z,0-9, and &#39;-&#39;. Must be starting with characters or numbers, with the &#39;-&#39; character allowed anywhere except the first or last character. */
    public var name: String
    /** The status of the Harbor project. */
    public var configStatus: VcenterContentRegistriesHarborProjectsConfigStatus
    /** The access type of a Harbor project. */
    public var scope: VcenterContentRegistriesHarborProjectsScope
    /** The date and time when the harbor project creation API was triggered and project identifier generated. */
    public var creationTime: Date
    /** The date and time when the harbor project purge API was triggered. In case no purge was triggered, {@name #updateTime} is same as {@name #creationTime}. */
    public var updateTime: Date?
    /** URL to access the harbor project through docker client. */
    public var accessUrl: String?
    /** Details about the ERROR project status. */
    public var message: VapiStdLocalizableMessage?

    public init(name: String, configStatus: VcenterContentRegistriesHarborProjectsConfigStatus, scope: VcenterContentRegistriesHarborProjectsScope, creationTime: Date, updateTime: Date?, accessUrl: String?, message: VapiStdLocalizableMessage?) {
        self.name = name
        self.configStatus = configStatus
        self.scope = scope
        self.creationTime = creationTime
        self.updateTime = updateTime
        self.accessUrl = accessUrl
        self.message = message
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case configStatus = "config_status"
        case scope
        case creationTime = "creation_time"
        case updateTime = "update_time"
        case accessUrl = "access_url"
        case message
    }


}

