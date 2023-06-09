//
// VcenterTrustedInfrastructureAttestationServicesFilterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureAttestationServicesFilterSpec: Codable {

    /** A set of IDs by which to filter the services. If unset, the services will not be filtered by ID. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.trusted_infrastructure.attestation.Service. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.trusted_infrastructure.attestation.Service. */
    public var services: [String]?
    /** A set of address by which to filter. If unset, the services will not be filtered by address. */
    public var address: [VcenterTrustedInfrastructureNetworkAddress]?
    /** The group specifies the Key Provider Service instances that can accept reports issued by this Attestation Service instance. If unset, the services will not be filtered by group. */
    public var group: [String]?
    /** The cluster specifies the Trust Authority Cluster this Attestation Service belongs to. If unset, the services will not be filtered by trustAuthorityCluster. */
    public var trustAuthorityCluster: [String]?

    public init(services: [String]?, address: [VcenterTrustedInfrastructureNetworkAddress]?, group: [String]?, trustAuthorityCluster: [String]?) {
        self.services = services
        self.address = address
        self.group = group
        self.trustAuthorityCluster = trustAuthorityCluster
    }

    public enum CodingKeys: String, CodingKey { 
        case services
        case address
        case group
        case trustAuthorityCluster = "trust_authority_cluster"
    }


}

