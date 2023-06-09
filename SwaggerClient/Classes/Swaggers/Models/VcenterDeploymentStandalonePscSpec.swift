//
// VcenterDeploymentStandalonePscSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentStandalonePscSpec: Codable {

    /** The SSO site name used for this PSC. If unset, default-first-site will be used. */
    public var ssoSiteName: String?
    /** The SSO administrator account password. */
    public var ssoAdminPassword: String
    /** The SSO domain name to be used to configure this appliance. If unset, vsphere.local will be used. */
    public var ssoDomainName: String?

    public init(ssoSiteName: String?, ssoAdminPassword: String, ssoDomainName: String?) {
        self.ssoSiteName = ssoSiteName
        self.ssoAdminPassword = ssoAdminPassword
        self.ssoDomainName = ssoDomainName
    }

    public enum CodingKeys: String, CodingKey { 
        case ssoSiteName = "sso_site_name"
        case ssoAdminPassword = "sso_admin_password"
        case ssoDomainName = "sso_domain_name"
    }


}

