//
// VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpec: Codable {

    /** Source of truth for the configuration of the Attestation Service. */
    public var type: VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpecSourceType
    /** The service&#39;s unique ID. This field is optional and it is only relevant when the value of Services.CreateSpec.type is SERVICE. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service. */
    public var service: String?
    /** The attestation cluster&#39;s unique ID. This field is optional and it is only relevant when the value of Services.CreateSpec.type is CLUSTER. */
    public var trustAuthorityCluster: String?

    public init(type: VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpecSourceType, service: String?, trustAuthorityCluster: String?) {
        self.type = type
        self.service = service
        self.trustAuthorityCluster = trustAuthorityCluster
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case service
        case trustAuthorityCluster = "trust_authority_cluster"
    }


}
