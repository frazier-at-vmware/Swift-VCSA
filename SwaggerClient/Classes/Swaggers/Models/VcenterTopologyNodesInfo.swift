//
// VcenterTopologyNodesInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTopologyNodesInfo: Codable {

    /** Domain name of the node. */
    public var domain: String
    /** Appliance type of the node. */
    public var type: VcenterTopologyNodesApplianceType
    /** List of replication partners&#39; node identifiers. Identifiers can be either IP address or DNS resolvable name of the partner node. This field is optional and it is only relevant when the value of Nodes.Info.type is one of VCSA_EMBEDDED or PSC_EXTERNAL. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.VCenter.name. */
    public var replicationPartners: [String]?
    /** Identifier of the affinitized Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the affinitized node. This field is optional and it is only relevant when the value of Nodes.Info.type is VCSA_EXTERNAL. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.VCenter.name. */
    public var clientAffinity: String?

    public init(domain: String, type: VcenterTopologyNodesApplianceType, replicationPartners: [String]?, clientAffinity: String?) {
        self.domain = domain
        self.type = type
        self.replicationPartners = replicationPartners
        self.clientAffinity = clientAffinity
    }

    public enum CodingKeys: String, CodingKey { 
        case domain
        case type
        case replicationPartners = "replication_partners"
        case clientAffinity = "client_affinity"
    }


}
