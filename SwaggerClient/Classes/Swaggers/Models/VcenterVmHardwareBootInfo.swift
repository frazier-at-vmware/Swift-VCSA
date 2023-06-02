//
// VcenterVmHardwareBootInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareBootInfo: Codable {

    /** Firmware type used by the virtual machine. */
    public var type: VcenterVmHardwareBootType
    /** Flag indicating whether to use EFI legacy boot mode. This field is optional and it is only relevant when the value of Boot.Info.type is EFI. */
    public var efiLegacyBoot: Bool?
    /** Protocol to use when attempting to boot the virtual machine over the network. This field is optional and it is only relevant when the value of Boot.Info.type is EFI. */
    public var networkProtocol: VcenterVmHardwareBootNetworkProtocol?
    /** Delay in milliseconds before beginning the firmware boot process when the virtual machine is powered on. This delay may be used to provide a time window for users to connect to the virtual machine console and enter BIOS setup mode. */
    public var delay: Int64
    /** Flag indicating whether the virtual machine will automatically retry the boot process after a failure. */
    public var retry: Bool
    /** Delay in milliseconds before retrying the boot process after a failure; applicable only when Boot.Info.retry is true. */
    public var retryDelay: Int64
    /** Flag indicating whether the firmware boot process will automatically enter setup mode the next time the virtual machine boots. Note that this flag will automatically be reset to false once the virtual machine enters setup mode. */
    public var enterSetupMode: Bool

    public init(type: VcenterVmHardwareBootType, efiLegacyBoot: Bool?, networkProtocol: VcenterVmHardwareBootNetworkProtocol?, delay: Int64, retry: Bool, retryDelay: Int64, enterSetupMode: Bool) {
        self.type = type
        self.efiLegacyBoot = efiLegacyBoot
        self.networkProtocol = networkProtocol
        self.delay = delay
        self.retry = retry
        self.retryDelay = retryDelay
        self.enterSetupMode = enterSetupMode
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case efiLegacyBoot = "efi_legacy_boot"
        case networkProtocol = "network_protocol"
        case delay
        case retry
        case retryDelay = "retry_delay"
        case enterSetupMode = "enter_setup_mode"
    }


}
