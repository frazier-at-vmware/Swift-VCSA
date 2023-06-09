//
// VcenterVchaClusterPassiveCheckSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVchaClusterPassiveCheckSpec: Codable {

    /** Contains the active node&#39;s management vCenter server credentials. If unset, then the active vCenter Server instance is assumed to be either self-managed or else in enhanced linked mode and managed by a linked vCenter Server instance. */
    public var vcSpec: VcenterVchaCredentialsSpec?
    /** Contains the node&#39;s placement information for validation. */
    public var placement: VcenterVchaPlacementSpec

    public init(vcSpec: VcenterVchaCredentialsSpec?, placement: VcenterVchaPlacementSpec) {
        self.vcSpec = vcSpec
        self.placement = placement
    }

    public enum CodingKeys: String, CodingKey { 
        case vcSpec = "vc_spec"
        case placement
    }


}

