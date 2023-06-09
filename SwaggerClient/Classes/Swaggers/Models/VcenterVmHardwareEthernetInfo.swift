//
// VcenterVmHardwareEthernetInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareEthernetInfo: Codable {

    /** Device label. */
    public var label: String
    /** Ethernet adapter emulation type. */
    public var type: VcenterVmHardwareEthernetEmulationType
    /** Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.Info.type is VMXNET3. */
    public var uptCompatibilityEnabled: Bool?
    /** MAC address type. */
    public var macType: VcenterVmHardwareEthernetMacAddressType
    /** MAC address. May be unset if Ethernet.Info.mac-type is MANUAL and has not been specified, or if Ethernet.Info.mac-type is GENERATED and the virtual machine has never been powered on since the Ethernet adapter was created. */
    public var macAddress: String?
    /** Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid, the server will change it when the VM is started or as the device is hot added. May be unset if the virtual machine has never been powered on since the adapter was created. */
    public var pciSlotNumber: Int64?
    /** Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter. */
    public var wakeOnLanEnabled: Bool
    /** Physical resource backing for the virtual Ethernet adapter. */
    public var backing: VcenterVmHardwareEthernetBackingInfo
    /** Connection status of the virtual device. */
    public var state: VcenterVmHardwareConnectionState
    /** Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. */
    public var startConnected: Bool
    /** Flag indicating whether the guest can connect and disconnect the device. */
    public var allowGuestControl: Bool

    public init(label: String, type: VcenterVmHardwareEthernetEmulationType, uptCompatibilityEnabled: Bool?, macType: VcenterVmHardwareEthernetMacAddressType, macAddress: String?, pciSlotNumber: Int64?, wakeOnLanEnabled: Bool, backing: VcenterVmHardwareEthernetBackingInfo, state: VcenterVmHardwareConnectionState, startConnected: Bool, allowGuestControl: Bool) {
        self.label = label
        self.type = type
        self.uptCompatibilityEnabled = uptCompatibilityEnabled
        self.macType = macType
        self.macAddress = macAddress
        self.pciSlotNumber = pciSlotNumber
        self.wakeOnLanEnabled = wakeOnLanEnabled
        self.backing = backing
        self.state = state
        self.startConnected = startConnected
        self.allowGuestControl = allowGuestControl
    }

    public enum CodingKeys: String, CodingKey { 
        case label
        case type
        case uptCompatibilityEnabled = "upt_compatibility_enabled"
        case macType = "mac_type"
        case macAddress = "mac_address"
        case pciSlotNumber = "pci_slot_number"
        case wakeOnLanEnabled = "wake_on_lan_enabled"
        case backing
        case state
        case startConnected = "start_connected"
        case allowGuestControl = "allow_guest_control"
    }


}

