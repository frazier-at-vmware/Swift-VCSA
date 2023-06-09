//
// VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateSpec: Codable {

    /** Public certificate used by every host in the cluster. */
    public var certificate: String
    /** Private part of the certificate. If unset, the update request is for a public/private client certificate pair, not for a signed CSR. */
    public var privateKey: String?

    public init(certificate: String, privateKey: String?) {
        self.certificate = certificate
        self.privateKey = privateKey
    }

    public enum CodingKeys: String, CodingKey { 
        case certificate
        case privateKey = "private_key"
    }


}

