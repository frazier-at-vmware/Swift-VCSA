//
// VcenterNamespaceManagementNetworksIPAssignment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNetworksIPAssignment: Codable {

    /** IPAssignment.assignee is the role assignee for the given IP Ranges. This field defaults to ANY. */
    public var assignee: VcenterNamespaceManagementNetworksIPAssignmentAssignment?
    /** IPAssignment.ranges lists the available IP addresses that can be consumed by Supervisor to run the cluster. */
    public var ranges: [VcenterNamespaceManagementNetworksIPRange]

    public init(assignee: VcenterNamespaceManagementNetworksIPAssignmentAssignment?, ranges: [VcenterNamespaceManagementNetworksIPRange]) {
        self.assignee = assignee
        self.ranges = ranges
    }


}

