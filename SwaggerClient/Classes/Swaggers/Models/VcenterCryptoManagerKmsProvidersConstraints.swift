//
// VcenterCryptoManagerKmsProvidersConstraints.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCryptoManagerKmsProvidersConstraints: Codable {

    /** Determines if a provider is restricted to hosts with TPM 2.0 capability. */
    public var tpmRequired: Bool

    public init(tpmRequired: Bool) {
        self.tpmRequired = tpmRequired
    }

    public enum CodingKeys: String, CodingKey { 
        case tpmRequired = "tpm_required"
    }


}
