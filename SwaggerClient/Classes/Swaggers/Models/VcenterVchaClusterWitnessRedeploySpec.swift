//
// VcenterVchaClusterWitnessRedeploySpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVchaClusterWitnessRedeploySpec: Codable {

    /** Contains the active node&#39;s management vCenter server credentials. If unset, then the active vCenter Server instance is assumed to be either self-managed or else in enhanced linked mode and managed by a linked vCenter Server instance. */
    public var vcSpec: VcenterVchaCredentialsSpec?
    /** Contains the node&#39;s placement information. */
    public var placement: VcenterVchaPlacementSpec
    /** Contains the VCHA HA network configuration of the node. All cluster communication (state replication, heartbeat, cluster messages) happens over this network. If unset, then the stored network configuration for the VCHA HA network for the witness node will be used. */
    public var haIp: VcenterVchaIpSpec?

    public init(vcSpec: VcenterVchaCredentialsSpec?, placement: VcenterVchaPlacementSpec, haIp: VcenterVchaIpSpec?) {
        self.vcSpec = vcSpec
        self.placement = placement
        self.haIp = haIp
    }

    public enum CodingKeys: String, CodingKey { 
        case vcSpec = "vc_spec"
        case placement
        case haIp = "ha_ip"
    }


}
