//
// VcenterCryptoManagerKmsProvidersUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCryptoManagerKmsProvidersUpdateSpec: Codable {

    /** New Configuration for NATIVE provider.    If unset, provider configuration will remain unchanged. */
    public var nativeSpec: VcenterCryptoManagerKmsProvidersNativeProviderUpdateSpec?

    public init(nativeSpec: VcenterCryptoManagerKmsProvidersNativeProviderUpdateSpec?) {
        self.nativeSpec = nativeSpec
    }

    public enum CodingKeys: String, CodingKey { 
        case nativeSpec = "native_spec"
    }


}

