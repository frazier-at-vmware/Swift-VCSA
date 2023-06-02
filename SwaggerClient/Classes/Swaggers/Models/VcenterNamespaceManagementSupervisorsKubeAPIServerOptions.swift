//
// VcenterNamespaceManagementSupervisorsKubeAPIServerOptions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorsKubeAPIServerOptions: Codable {

    /**  KubeAPIServerOptions.security allows you to specify configuration options for the API server security.  If unset, default security parameters will be configured. */
    public var security: VcenterNamespaceManagementSupervisorsKubeAPIServerSecurity?

    public init(security: VcenterNamespaceManagementSupervisorsKubeAPIServerSecurity?) {
        self.security = security
    }


}

