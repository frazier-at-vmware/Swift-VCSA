//
// VcenterVchaClusterNodeRuntimeInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVchaClusterNodeRuntimeInfo: Codable {

    /** Last known state of the node.  The active node&#39;s management vCenter server credentials are not required to populate Cluster.NodeRuntimeInfo.state. If unset, then information is unavailable or the passive and witness nodes are not cloned yet. */
    public var state: VcenterVchaClusterNodeState?
    /** Last known role of the node.  The active node&#39;s management vCenter server credentials are not required to populate Cluster.NodeRuntimeInfo.role. If unset, then information is unavailable or the passive and witness nodes are not cloned yet. */
    public var role: VcenterVchaClusterNodeRole?
    /** Placement information of the node.  The active node&#39;s management vCenter server credentials are required to populate most fields of Cluster.NodeRuntimeInfo.placement. If unset, then the information is unavailable or the specified Active vCenter server management credentials are invalid or the node is not cloned yet or the VCHA cluster was deployed in a manual fashion. */
    public var placement: VcenterVchaPlacementInfo?

    public init(state: VcenterVchaClusterNodeState?, role: VcenterVchaClusterNodeRole?, placement: VcenterVchaPlacementInfo?) {
        self.state = state
        self.role = role
        self.placement = placement
    }


}

