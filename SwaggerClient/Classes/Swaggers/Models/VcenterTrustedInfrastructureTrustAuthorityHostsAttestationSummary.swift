//
// VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummary: Codable {

    /** Defines the verbosity of the summary. */
    public var summaryType: VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummaryType
    /** The trusted ESX on which the service runs. This field is optional and it is only relevant when the value of Attestation.Summary.summary-type is one of BRIEF, NORMAL, or FULL. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem. */
    public var host: String?
    /** The service&#39;s address. This field is optional and it is only relevant when the value of Attestation.Summary.summary-type is one of BRIEF, NORMAL, or FULL. */
    public var address: VcenterTrustedInfrastructureNetworkAddress?
    /** The group ID determines which Attestation Service instances this Attestation Service can communicate with. This field is optional and it is only relevant when the value of Attestation.Summary.summary-type is one of NORMAL or FULL. */
    public var group: String?
    /** The opaque string identifier of the cluster in which the Attestation Service is part of. This field is optional and it is only relevant when the value of Attestation.Summary.summary-type is one of NORMAL or FULL. */
    public var cluster: String?
    /** The service&#39;s TLS certificate chain. This field is optional and it is only relevant when the value of Attestation.Summary.summary-type is FULL. */
    public var trustedCA: VcenterTrustedInfrastructureX509CertChain?

    public init(summaryType: VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummaryType, host: String?, address: VcenterTrustedInfrastructureNetworkAddress?, group: String?, cluster: String?, trustedCA: VcenterTrustedInfrastructureX509CertChain?) {
        self.summaryType = summaryType
        self.host = host
        self.address = address
        self.group = group
        self.cluster = cluster
        self.trustedCA = trustedCA
    }

    public enum CodingKeys: String, CodingKey { 
        case summaryType = "summary_type"
        case host
        case address
        case group
        case cluster
        case trustedCA = "trusted_CA"
    }


}

