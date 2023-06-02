//
// VcenterTrustedInfrastructureHostsHardwareTpmSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureHostsHardwareTpmSummary: Codable {

    /** A unique identifier for the TPM instance. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.hosts.hardware.Tpm. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.hosts.hardware.Tpm. */
    public var tpm: String
    /** The TPM major version number. */
    public var majorVersion: Int64
    /** The TPM minor version number. */
    public var minorVersion: Int64
    /** The TPM status.   Inactive TPMs cannot be used for sealing or attestation.  */
    public var active: Bool

    public init(tpm: String, majorVersion: Int64, minorVersion: Int64, active: Bool) {
        self.tpm = tpm
        self.majorVersion = majorVersion
        self.minorVersion = minorVersion
        self.active = active
    }

    public enum CodingKeys: String, CodingKey { 
        case tpm
        case majorVersion = "major_version"
        case minorVersion = "minor_version"
        case active
    }


}
