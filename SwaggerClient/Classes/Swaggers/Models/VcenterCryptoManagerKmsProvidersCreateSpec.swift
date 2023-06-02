//
// VcenterCryptoManagerKmsProvidersCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCryptoManagerKmsProvidersCreateSpec: Codable {

    /** Provider identifier.   A unique string provided by the client.  When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.crypto_manager.kms.provider. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.crypto_manager.kms.provider. */
    public var provider: String
    /** The constraints on the provider. If unset there are no constraints on the provider. */
    public var constraints: VcenterCryptoManagerKmsProvidersConstraintsSpec?
    /** Native provider create spec. This field is required when creating a NATIVE provider. */
    public var nativeSpec: VcenterCryptoManagerKmsProvidersNativeProviderCreateSpec?

    public init(provider: String, constraints: VcenterCryptoManagerKmsProvidersConstraintsSpec?, nativeSpec: VcenterCryptoManagerKmsProvidersNativeProviderCreateSpec?) {
        self.provider = provider
        self.constraints = constraints
        self.nativeSpec = nativeSpec
    }

    public enum CodingKeys: String, CodingKey { 
        case provider
        case constraints
        case nativeSpec = "native_spec"
    }


}

