//
// VcenterTrustedInfrastructureX509CertChain.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureX509CertChain: Codable {

    /** Certificate chain in base64 format */
    public var certChain: [String]

    public init(certChain: [String]) {
        self.certChain = certChain
    }

    public enum CodingKeys: String, CodingKey { 
        case certChain = "cert_chain"
    }


}

