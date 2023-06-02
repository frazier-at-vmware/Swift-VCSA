//
// VcenterNamespacesInstancesNetworkProvider.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Identifies the network plugin that networking functionalities for this vSphere Namespace. */
public enum VcenterNamespacesInstancesNetworkProvider: String, Codable {
    case nsxtContainerPlugin = "NSXT_CONTAINER_PLUGIN"
    case vsphereNetwork = "VSPHERE_NETWORK"

}