//
// VcenterNamespaceManagementSupervisorServicesVersionsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorServicesVersionsInfo: Codable {

    /** The human readable name of the Supervisor Service version. */
    public var displayName: String
    /** A human-readable description of the Supervisor Service version. If unset, no description is available for the Supervisor Service version. */
    public var _description: String?
    /** The End User License Agreement (EULA) associated with the Supervisor Service version. If unset, no EULA is available for the Supervisor Service version. */
    public var EULA: String?
    /** The content type of Versions.Info.content. */
    public var contentType: VcenterNamespaceManagementSupervisorServicesVersionsContentType
    /** Inline content that contains base64 encoded service definition for the version. If unset, no content is available for the Supervisor Service version. */
    public var content: String?
    /** If true, the Supervisor Service version is from trusted provider and the trust is verified. */
    public var trustVerified: Bool
    /** The current Versions.State of the version. */
    public var state: VcenterNamespaceManagementSupervisorServicesVersionsState

    public init(displayName: String, _description: String?, EULA: String?, contentType: VcenterNamespaceManagementSupervisorServicesVersionsContentType, content: String?, trustVerified: Bool, state: VcenterNamespaceManagementSupervisorServicesVersionsState) {
        self.displayName = displayName
        self._description = _description
        self.EULA = EULA
        self.contentType = contentType
        self.content = content
        self.trustVerified = trustVerified
        self.state = state
    }

    public enum CodingKeys: String, CodingKey { 
        case displayName = "display_name"
        case _description = "description"
        case EULA
        case contentType = "content_type"
        case content
        case trustVerified = "trust_verified"
        case state
    }


}
