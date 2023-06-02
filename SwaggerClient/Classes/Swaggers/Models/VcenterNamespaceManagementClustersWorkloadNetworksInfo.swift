//
// VcenterNamespaceManagementClustersWorkloadNetworksInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementClustersWorkloadNetworksInfo: Codable {

    /** vSphere Namespaces network used by Kubernetes control plane VMs to access load-balanced services on the various workload networks. */
    public var supervisorPrimaryWorkloadNetwork: VcenterNamespaceManagementNetworksInfo
    /** List of vSphere Namespaces networks associated with this cluster. If unset no additional networks are associated with the cluster. */
    public var networkList: [VcenterNamespaceManagementNetworksInfo]?

    public init(supervisorPrimaryWorkloadNetwork: VcenterNamespaceManagementNetworksInfo, networkList: [VcenterNamespaceManagementNetworksInfo]?) {
        self.supervisorPrimaryWorkloadNetwork = supervisorPrimaryWorkloadNetwork
        self.networkList = networkList
    }

    public enum CodingKeys: String, CodingKey { 
        case supervisorPrimaryWorkloadNetwork = "supervisor_primary_workload_network"
        case networkList = "network_list"
    }


}
