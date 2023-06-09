//
// VcenterTrustedInfrastructureHostsHardwareTpmInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureHostsHardwareTpmInfo: Codable {

    /** The TPM major version number. */
    public var majorVersion: Int64
    /** The TPM minor version number. */
    public var minorVersion: Int64
    /** The TPM status.   Inactive TPMs cannot be used for sealing or attestation.  */
    public var active: Bool
    /** The TPM manufacturer. if unset, manufacturer is not available. */
    public var manufacturer: String?
    /** The TPM model. if unset, model is not available. */
    public var model: String?
    /** The TPM firmware version. if unset, firmware version is not available. */
    public var firmwareVersion: String?
    /** The list of the PCR banks of the TPM device. */
    public var banks: [VcenterTrustedInfrastructureHostsHardwareTpmPcrBank]

    public init(majorVersion: Int64, minorVersion: Int64, active: Bool, manufacturer: String?, model: String?, firmwareVersion: String?, banks: [VcenterTrustedInfrastructureHostsHardwareTpmPcrBank]) {
        self.majorVersion = majorVersion
        self.minorVersion = minorVersion
        self.active = active
        self.manufacturer = manufacturer
        self.model = model
        self.firmwareVersion = firmwareVersion
        self.banks = banks
    }

    public enum CodingKeys: String, CodingKey { 
        case majorVersion = "major_version"
        case minorVersion = "minor_version"
        case active
        case manufacturer
        case model
        case firmwareVersion = "firmware_version"
        case banks
    }


}

