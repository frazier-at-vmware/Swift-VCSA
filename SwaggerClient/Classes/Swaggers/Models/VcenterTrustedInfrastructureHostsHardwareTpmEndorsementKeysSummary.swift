//
// VcenterTrustedInfrastructureHostsHardwareTpmEndorsementKeysSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureHostsHardwareTpmEndorsementKeysSummary: Codable {

    /** A unique identifier for the TPM endorsement key. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.hosts.hardware.tpm.EndorsementKey. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.hosts.hardware.tpm.EndorsementKey. */
    public var key: String
    /** The TPM endorsement key type. */
    public var type: VcenterTrustedInfrastructureHostsHardwareTpmEndorsementKeysType

    public init(key: String, type: VcenterTrustedInfrastructureHostsHardwareTpmEndorsementKeysType) {
        self.key = key
        self.type = type
    }


}
