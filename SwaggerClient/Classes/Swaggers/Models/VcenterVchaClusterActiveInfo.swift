//
// VcenterVchaClusterActiveInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVchaClusterActiveInfo: Codable {

    /** IP specification for the Management network. */
    public var management: VcenterVchaIpSpec
    /** IP specification for the HA network. If unset, then the second NIC of the Active Node of the VCHA cluster is not configured. */
    public var ha: VcenterVchaIpSpec?
    /** Contains the placement information of the active node. If unset, the request specified that placement information of the active node should not be included. */
    public var placement: VcenterVchaPlacementInfo?

    public init(management: VcenterVchaIpSpec, ha: VcenterVchaIpSpec?, placement: VcenterVchaPlacementInfo?) {
        self.management = management
        self.ha = ha
        self.placement = placement
    }


}
