//
// VcenterCryptoManagerKmsProvidersConstraintsSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCryptoManagerKmsProvidersConstraintsSpec: Codable {

    /** Determines if a provider is restricted to hosts with TPM 2.0 capability. If unset, the constraint does not apply to the provider. */
    public var tpmRequired: Bool?

    public init(tpmRequired: Bool?) {
        self.tpmRequired = tpmRequired
    }

    public enum CodingKeys: String, CodingKey { 
        case tpmRequired = "tpm_required"
    }


}

