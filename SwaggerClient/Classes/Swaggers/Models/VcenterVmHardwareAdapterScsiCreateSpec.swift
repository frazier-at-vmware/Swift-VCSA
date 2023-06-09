//
// VcenterVmHardwareAdapterScsiCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareAdapterScsiCreateSpec: Codable {

    /** Adapter type. If unset, a guest-specific default value will be used. */
    public var type: VcenterVmHardwareAdapterScsiType?
    /** SCSI bus number. If unset, the server will choose an available bus number; if none is available, the request will fail. */
    public var bus: Int64?
    /** Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server will change it when the VM is started or as the device is hot added. If unset, the server will choose an available address when the virtual machine is powered on. */
    public var pciSlotNumber: Int64?
    /** Bus sharing mode. If unset, the adapter will default to NONE. */
    public var sharing: VcenterVmHardwareAdapterScsiSharing?

    public init(type: VcenterVmHardwareAdapterScsiType?, bus: Int64?, pciSlotNumber: Int64?, sharing: VcenterVmHardwareAdapterScsiSharing?) {
        self.type = type
        self.bus = bus
        self.pciSlotNumber = pciSlotNumber
        self.sharing = sharing
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case bus
        case pciSlotNumber = "pci_slot_number"
        case sharing
    }


}

