//
// VcenterConsumptionDomainsZonesFilterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterConsumptionDomainsZonesFilterSpec: Codable {

    /** Matches all zones corresponding to the specified set of zone identifiers. If unset or empty, results will not be filtered for specific zone identifiers. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.consumption_domains.Zone. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.consumption_domains.Zone. */
    public var zones: [String]?

    public init(zones: [String]?) {
        self.zones = zones
    }


}
