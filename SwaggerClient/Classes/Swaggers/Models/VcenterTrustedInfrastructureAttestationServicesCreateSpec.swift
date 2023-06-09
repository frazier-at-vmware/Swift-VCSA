//
// VcenterTrustedInfrastructureAttestationServicesCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureAttestationServicesCreateSpec: Codable {

    /** The service&#39;s address. */
    public var address: VcenterTrustedInfrastructureNetworkAddress
    /** The service&#39;s TLS certificate chain. */
    public var trustedCA: VcenterTrustedInfrastructureX509CertChain
    /** The group specifies the Key Provider Service instances that can accept reports issued by this Attestation Service instance. */
    public var group: String
    /** The cluster specifies the Trust Authority Cluster this Attestation Service belongs to. */
    public var trustAuthorityCluster: String

    public init(address: VcenterTrustedInfrastructureNetworkAddress, trustedCA: VcenterTrustedInfrastructureX509CertChain, group: String, trustAuthorityCluster: String) {
        self.address = address
        self.trustedCA = trustedCA
        self.group = group
        self.trustAuthorityCluster = trustAuthorityCluster
    }

    public enum CodingKeys: String, CodingKey { 
        case address
        case trustedCA = "trusted_CA"
        case group
        case trustAuthorityCluster = "trust_authority_cluster"
    }


}

