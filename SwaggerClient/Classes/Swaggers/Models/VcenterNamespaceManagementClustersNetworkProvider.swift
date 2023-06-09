//
// VcenterNamespaceManagementClustersNetworkProvider.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Identifies the network plugin that cluster networking functionalities for this vSphere Namespaces Cluster. */
public enum VcenterNamespaceManagementClustersNetworkProvider: String, Codable {
    case nsxtContainerPlugin = "NSXT_CONTAINER_PLUGIN"
    case vsphereNetwork = "VSPHERE_NETWORK"

}
