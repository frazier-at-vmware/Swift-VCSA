//
// VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateSpec: Codable {

    /** A unique name for the TPM CA certificate. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.CaCertificate. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.CaCertificate. */
    public var name: String
    /** The CA certificate chain.   Certificates may either be added one at a time, or as a chain. Adding the certificates as a chain allows the group to be managed as a whole. For example, an entire chain can be deleted in one CaCertificates.delete operation.    When certificates are added one at a time, the order must be root first, followed by any intermediates. The intermediates certificates must also be ordered in the direction from root to leaf.    Similarly, when added as a chain the list must be ordered in the direction from root to leaf.  If unset creation will fail. */
    public var certChain: VcenterTrustedInfrastructureX509CertChain?

    public init(name: String, certChain: VcenterTrustedInfrastructureX509CertChain?) {
        self.name = name
        self.certChain = certChain
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case certChain = "cert_chain"
    }


}
