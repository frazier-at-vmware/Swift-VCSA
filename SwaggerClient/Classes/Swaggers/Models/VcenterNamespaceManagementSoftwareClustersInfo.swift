//
// VcenterNamespaceManagementSoftwareClustersInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSoftwareClustersInfo: Codable {

    /** Current version of the cluster. */
    public var currentVersion: String
    /** Set of available versions can be upgraded to. */
    public var availableVersions: [String]
    /** Date of last successful upgrade. If unset, the cluster has not yet been upgraded. */
    public var lastUpgradedDate: Date?
    /** Current set of messages associated with the cluster version. */
    public var messages: [VcenterNamespaceManagementSoftwareClustersMessage]
    /** Current state of the upgrade. */
    public var state: VcenterNamespaceManagementSoftwareClustersState
    /** Information about upgrade in progress. If unset, the cluster upgrade is not in progress. */
    public var upgradeStatus: VcenterNamespaceManagementSoftwareClustersUpgradeStatus?

    public init(currentVersion: String, availableVersions: [String], lastUpgradedDate: Date?, messages: [VcenterNamespaceManagementSoftwareClustersMessage], state: VcenterNamespaceManagementSoftwareClustersState, upgradeStatus: VcenterNamespaceManagementSoftwareClustersUpgradeStatus?) {
        self.currentVersion = currentVersion
        self.availableVersions = availableVersions
        self.lastUpgradedDate = lastUpgradedDate
        self.messages = messages
        self.state = state
        self.upgradeStatus = upgradeStatus
    }

    public enum CodingKeys: String, CodingKey { 
        case currentVersion = "current_version"
        case availableVersions = "available_versions"
        case lastUpgradedDate = "last_upgraded_date"
        case messages
        case state
        case upgradeStatus = "upgrade_status"
    }


}
