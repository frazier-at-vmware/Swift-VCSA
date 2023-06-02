//
// VcenterNamespaceManagementNetworksIPAssignmentAssignment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** IPAssignment.Assignment lists the different entities that require IP ranges. These assignments fulfill different needs in the Kubernetes environment. */
public enum VcenterNamespaceManagementNetworksIPAssignmentAssignment: String, Codable {
    case pod = "POD"
    case node = "NODE"
    case service = "SERVICE"

}