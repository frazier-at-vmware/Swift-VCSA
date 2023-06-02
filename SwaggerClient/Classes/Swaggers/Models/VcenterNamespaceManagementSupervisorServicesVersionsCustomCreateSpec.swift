//
// VcenterNamespaceManagementSupervisorServicesVersionsCustomCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorServicesVersionsCustomCreateSpec: Codable {

    /** The identifier of the Supervisor Service version. This must be a semantic version. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespace_management.supervisor_services.Version. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespace_management.supervisor_services.Version. */
    public var version: String
    /** A human readable name of the Supervisor Service version. */
    public var displayName: String
    /** A human readable description of the Supervisor Service version. If unset, the description for the service version will be empty. */
    public var _description: String?
    /** Inline content that contains all service definition of the version, which shall be base64 encoded. The service definition here follows a plain Kubernetes YAML format. */
    public var content: String
    /** Whether or not the Supervisor Service version is from a trusted provider, this field must be set to false if the service version is not from a trusted provider. If it is set to be true, but the Versions.CustomCreateSpec.content is not signed or the signature is invalid, an InvalidArgument will be thrown. If unset, the default value is true. In this case, the Versions.CustomCreateSpec.content must be signed and will be verified. */
    public var trustedProvider: Bool?

    public init(version: String, displayName: String, _description: String?, content: String, trustedProvider: Bool?) {
        self.version = version
        self.displayName = displayName
        self._description = _description
        self.content = content
        self.trustedProvider = trustedProvider
    }

    public enum CodingKeys: String, CodingKey { 
        case version
        case displayName = "display_name"
        case _description = "description"
        case content
        case trustedProvider = "trusted_provider"
    }


}
