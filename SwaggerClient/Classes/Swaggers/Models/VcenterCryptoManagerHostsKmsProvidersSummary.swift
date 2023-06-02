//
// VcenterCryptoManagerHostsKmsProvidersSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCryptoManagerHostsKmsProvidersSummary: Codable {

    /** Identifier of the provider When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.crypto_manager.kms.provider. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.crypto_manager.kms.provider. */
    public var provider: String
    /** Provider type */
    public var type: VcenterCryptoManagerHostsKmsProvidersType
    /** Health status of the provider */
    public var health: VcenterCryptoManagerHostsKmsProvidersHealth

    public init(provider: String, type: VcenterCryptoManagerHostsKmsProvidersType, health: VcenterCryptoManagerHostsKmsProvidersHealth) {
        self.provider = provider
        self.type = type
        self.health = health
    }


}
