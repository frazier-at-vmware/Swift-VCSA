//
// VcenterNamespaceManagementHostsConfigInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementHostsConfigInfo: Codable {

    /** True if vSphere Namespace feature is supported in this VC. */
    public var namespacesSupported: Bool
    /** True if vSphere Namespace feature is licensed on any hosts in this VC. */
    public var namespacesLicensed: Bool

    public init(namespacesSupported: Bool, namespacesLicensed: Bool) {
        self.namespacesSupported = namespacesSupported
        self.namespacesLicensed = namespacesLicensed
    }

    public enum CodingKeys: String, CodingKey { 
        case namespacesSupported = "namespaces_supported"
        case namespacesLicensed = "namespaces_licensed"
    }


}
