//
// VcenterLcmUpdatePendingInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterLcmUpdatePendingInfo: Codable {

    /** Description of the vSphere update */
    public var _description: String
    /** Identifier of the given vSphere update When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.lcm.update.pending. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.lcm.update.pending. */
    public var pendingUpdate: String
    /** Version of the vSphere update or patch */
    public var version: String
    /** Release date of the vSphere update or patch */
    public var releaseDate: Date
    /** Severity of the issues fixed in the vSphere update or patch */
    public var severity: VcenterLcmUpdatePendingSeverityType
    /** Build number of the vCenter Release */
    public var build: String
    /** Type of the Release based on the current vCenter version */
    public var updateType: VcenterLcmUpdatePendingUpdateType
    /** Category of the release based on features bundled on top of previous release */
    public var category: VcenterLcmUpdatePendingCategory
    /** Flag to suggest a reboot after the release is applied */
    public var rebootRequired: Bool
    /** VAMI or ISO URL for update or upgrade execute phase redirection */
    public var executeURL: String
    /** List of URI pointing to patch or update release notes */
    public var releaseNotes: [String]

    public init(_description: String, pendingUpdate: String, version: String, releaseDate: Date, severity: VcenterLcmUpdatePendingSeverityType, build: String, updateType: VcenterLcmUpdatePendingUpdateType, category: VcenterLcmUpdatePendingCategory, rebootRequired: Bool, executeURL: String, releaseNotes: [String]) {
        self._description = _description
        self.pendingUpdate = pendingUpdate
        self.version = version
        self.releaseDate = releaseDate
        self.severity = severity
        self.build = build
        self.updateType = updateType
        self.category = category
        self.rebootRequired = rebootRequired
        self.executeURL = executeURL
        self.releaseNotes = releaseNotes
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case pendingUpdate = "pending_update"
        case version
        case releaseDate = "release_date"
        case severity
        case build
        case updateType = "update_type"
        case category
        case rebootRequired = "reboot_required"
        case executeURL = "execute_URL"
        case releaseNotes = "release_notes"
    }


}

