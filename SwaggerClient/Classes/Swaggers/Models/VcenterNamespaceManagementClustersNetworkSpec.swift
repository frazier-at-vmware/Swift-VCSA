//
// VcenterNamespaceManagementClustersNetworkSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementClustersNetworkSpec: Codable {

    /** Optionally specify the Floating IP used by the cluster control plane in case of DHCP. If unset, the existing effective management network floating IP will be used. */
    public var floatingIP: String?
    /** Identifier for the network. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network. */
    public var network: String
    /** The address assignment mode. */
    public var mode: VcenterNamespaceManagementClustersNetworkSpecIpv4Mode
    /** Settings for the interfaces on the network. This field is optional and it is only relevant when the value of Clusters.NetworkSpec.mode is STATICRANGE. */
    public var addressRange: VcenterNamespaceManagementClustersIpv4Range?

    public init(floatingIP: String?, network: String, mode: VcenterNamespaceManagementClustersNetworkSpecIpv4Mode, addressRange: VcenterNamespaceManagementClustersIpv4Range?) {
        self.floatingIP = floatingIP
        self.network = network
        self.mode = mode
        self.addressRange = addressRange
    }

    public enum CodingKeys: String, CodingKey { 
        case floatingIP = "floating_IP"
        case network
        case mode
        case addressRange = "address_range"
    }


}

