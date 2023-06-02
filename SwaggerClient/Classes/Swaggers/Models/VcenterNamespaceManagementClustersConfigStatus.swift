//
// VcenterNamespaceManagementClustersConfigStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Clusters.ConfigStatus enumerated type describes the status of reaching the desired state configuration for the cluster. */
public enum VcenterNamespaceManagementClustersConfigStatus: String, Codable {
    case configuring = "CONFIGURING"
    case removing = "REMOVING"
    case running = "RUNNING"
    case error = "ERROR"

}