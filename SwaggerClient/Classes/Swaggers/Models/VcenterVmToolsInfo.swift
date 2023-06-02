//
// VcenterVmToolsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmToolsInfo: Codable {

    /** Set if the virtual machine supports auto-upgrading Tools via Tools.UpgradePolicy. */
    public var autoUpdateSupported: Bool
    /** Number of attempts that have been made to install or upgrade the version of Tools installed on this virtual machine. This field will be unset if there have been no Tools install or upgrade attempt. */
    public var installAttemptCount: Int64?
    /** Error that happened, if any, during last attempt to upgrade or install Tools. This field will be unset if a the last Tools install or upgrade attempt succeeded. */
    public var error: String?
    /** Version of VMware Tools installed on the guest operating system. This field wil be unset if VMWare Tools is not installed. This is an integer constructed as follows: (((MJR) &lt;&lt; 10) + ((MNR) &lt;&lt; 5) + (REV)) Where MJR is tha major verson, MNR is the minor version and REV is the revision. Tools version &#x3D; T Tools Version Major &#x3D; MJR &#x3D; (T / 1024) Tools Version Minor &#x3D; MNR &#x3D; ((T % 1024) / 32) Tools Version Revision &#x3D; BASE &#x3D; ((T % 1024) % 32) Tools actual version &#x3D; MJR.MNR.REV */
    public var versionNumber: Int64?
    /** Version of VMware Tools installed on the guest operating system. This is a human-readable value that should not be parsed. This field wil be unset if VMWare Tools is not installed. */
    public var version: String?
    /** Tools upgrade policy setting for the virtual machine. Tools.UpgradePolicy */
    public var upgradePolicy: VcenterVmToolsUpgradePolicy
    /** Current version status of VMware Tools in the guest operating system, if known. This field will be unset if the version status is not known, for example if VMware Tools is too old to report the information. */
    public var versionStatus: VcenterVmToolsVersionStatus?
    /** Current installation type of VMware Tools in the guest operating system. This field will be unset if the installation type is not known, for example if VMware Tools is too old to report the information. */
    public var installType: VcenterVmToolsToolsInstallType?
    /** Current run state of VMware Tools in the guest operating system. */
    public var runState: VcenterVmToolsRunState

    public init(autoUpdateSupported: Bool, installAttemptCount: Int64?, error: String?, versionNumber: Int64?, version: String?, upgradePolicy: VcenterVmToolsUpgradePolicy, versionStatus: VcenterVmToolsVersionStatus?, installType: VcenterVmToolsToolsInstallType?, runState: VcenterVmToolsRunState) {
        self.autoUpdateSupported = autoUpdateSupported
        self.installAttemptCount = installAttemptCount
        self.error = error
        self.versionNumber = versionNumber
        self.version = version
        self.upgradePolicy = upgradePolicy
        self.versionStatus = versionStatus
        self.installType = installType
        self.runState = runState
    }

    public enum CodingKeys: String, CodingKey { 
        case autoUpdateSupported = "auto_update_supported"
        case installAttemptCount = "install_attempt_count"
        case error
        case versionNumber = "version_number"
        case version
        case upgradePolicy = "upgrade_policy"
        case versionStatus = "version_status"
        case installType = "install_type"
        case runState = "run_state"
    }


}

