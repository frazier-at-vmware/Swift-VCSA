//
// VcenterTrustedInfrastructureKmsServicesSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureKmsServicesSummary: Codable {

    /** The service&#39;s unique identifier. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service. */
    public var service: String
    /** The service&#39;s address. */
    public var address: VcenterTrustedInfrastructureNetworkAddress
    /** The group determines the Attestation Service instances this Key Provider Service can accept reports from. */
    public var group: String
    /** The cluster specifies the Trust Authority Cluster this Key Provider service belongs to. */
    public var trustAuthorityCluster: String

    public init(service: String, address: VcenterTrustedInfrastructureNetworkAddress, group: String, trustAuthorityCluster: String) {
        self.service = service
        self.address = address
        self.group = group
        self.trustAuthorityCluster = trustAuthorityCluster
    }

    public enum CodingKeys: String, CodingKey { 
        case service
        case address
        case group
        case trustAuthorityCluster = "trust_authority_cluster"
    }


}
