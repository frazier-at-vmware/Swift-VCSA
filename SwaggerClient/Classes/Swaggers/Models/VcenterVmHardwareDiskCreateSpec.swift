//
// VcenterVmHardwareDiskCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareDiskCreateSpec: Codable {

    /** Type of host bus adapter to which the device should be attached. If unset, guest-specific default values will be used */
    public var type: VcenterVmHardwareDiskHostBusAdapterType?
    /** Address for attaching the device to a virtual IDE adapter. If unset, the server will choose an available address; if none is available, the request will fail. */
    public var ide: VcenterVmHardwareIdeAddressSpec?
    /** Address for attaching the device to a virtual SCSI adapter. If unset, the server will choose an available address; if none is available, the request will fail. */
    public var scsi: VcenterVmHardwareScsiAddressSpec?
    /** Address for attaching the device to a virtual SATA adapter. If unset, the server will choose an available address; if none is available, the request will fail. */
    public var sata: VcenterVmHardwareSataAddressSpec?
    /** Address for attaching the device to a virtual NVMe adapter. If unset, the server will choose an available address; if none is available, the request will fail. */
    public var nvme: VcenterVmHardwareNvmeAddressSpec?
    /** Existing physical resource backing for the virtual disk. Exactly one of Disk.CreateSpec.backing or Disk.CreateSpec.new-vmdk must be specified. If unset, the virtual disk will not be connected to an existing backing. */
    public var backing: VcenterVmHardwareDiskBackingSpec?
    /** Specification for creating a new VMDK backing for the virtual disk. Exactly one of Disk.CreateSpec.backing or Disk.CreateSpec.new-vmdk must be specified. If unset, a new VMDK backing will not be created. */
    public var newVmdk: VcenterVmHardwareDiskVmdkCreateSpec?

    public init(type: VcenterVmHardwareDiskHostBusAdapterType?, ide: VcenterVmHardwareIdeAddressSpec?, scsi: VcenterVmHardwareScsiAddressSpec?, sata: VcenterVmHardwareSataAddressSpec?, nvme: VcenterVmHardwareNvmeAddressSpec?, backing: VcenterVmHardwareDiskBackingSpec?, newVmdk: VcenterVmHardwareDiskVmdkCreateSpec?) {
        self.type = type
        self.ide = ide
        self.scsi = scsi
        self.sata = sata
        self.nvme = nvme
        self.backing = backing
        self.newVmdk = newVmdk
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case ide
        case scsi
        case sata
        case nvme
        case backing
        case newVmdk = "new_vmdk"
    }


}

