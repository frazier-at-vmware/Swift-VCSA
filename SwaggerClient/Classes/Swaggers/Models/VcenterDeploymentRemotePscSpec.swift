//
// VcenterDeploymentRemotePscSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentRemotePscSpec: Codable {

    /** The IP address or DNS resolvable name of the remote PSC to which this configuring vCenter Server will be registered to. */
    public var pscHostname: String
    /** The HTTPS port of the external PSC appliance. If unset, port 443 will be used. */
    public var httpsPort: Int64?
    /** The SSO administrator account password. */
    public var ssoAdminPassword: String
    /** SHA1 thumbprint of the server SSL certificate will be used for verification when ssl_verify field is set to true. This field is only relevant if RemotePscSpec.ssl-verify is unset or has the value true. */
    public var sslThumbprint: String?
    /** SSL verification should be enabled or disabled. If RemotePscSpec.ssl-verify is true and and RemotePscSpec.ssl-thumbprint is unset, the CA certificate will be used for verification. If RemotePscSpec.ssl-verify is true and RemotePscSpec.ssl-thumbprint is set then the thumbprint will be used for verification. No verification will be performed if RemotePscSpec.ssl-verify value is set to false. If unset, RemotePscSpec.ssl-verify true will be used. */
    public var sslVerify: Bool?

    public init(pscHostname: String, httpsPort: Int64?, ssoAdminPassword: String, sslThumbprint: String?, sslVerify: Bool?) {
        self.pscHostname = pscHostname
        self.httpsPort = httpsPort
        self.ssoAdminPassword = ssoAdminPassword
        self.sslThumbprint = sslThumbprint
        self.sslVerify = sslVerify
    }

    public enum CodingKeys: String, CodingKey { 
        case pscHostname = "psc_hostname"
        case httpsPort = "https_port"
        case ssoAdminPassword = "sso_admin_password"
        case sslThumbprint = "ssl_thumbprint"
        case sslVerify = "ssl_verify"
    }


}

