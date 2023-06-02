//
// VcenterVmHardwareUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareUpdateSpec: Codable {

    /** Scheduled upgrade policy.   If set to NEVER, the Hardware.Info.upgrade-version field will be reset to unset.  If unset, the value is unchanged. */
    public var upgradePolicy: VcenterVmHardwareUpgradePolicy?
    /** Target hardware version to be used on the next scheduled virtual hardware upgrade.   If specified, this field must represent a newer virtual hardware version than the current virtual hardware version reported in Hardware.Info.version.  If Hardware.UpdateSpec.upgrade-policy is set to NEVER, this field must be unset. Otherwise, if this field is unset, default to the most recent virtual hardware version supported by the server. */
    public var upgradeVersion: VcenterVmHardwareVersion?

    public init(upgradePolicy: VcenterVmHardwareUpgradePolicy?, upgradeVersion: VcenterVmHardwareVersion?) {
        self.upgradePolicy = upgradePolicy
        self.upgradeVersion = upgradeVersion
    }

    public enum CodingKeys: String, CodingKey { 
        case upgradePolicy = "upgrade_policy"
        case upgradeVersion = "upgrade_version"
    }


}
