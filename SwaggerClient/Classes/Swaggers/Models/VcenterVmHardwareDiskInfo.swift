//
// VcenterVmHardwareDiskInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmHardwareDiskInfo: Codable {

    /** Device label. */
    public var label: String
    /** Type of host bus adapter to which the device is attached. */
    public var type: VcenterVmHardwareDiskHostBusAdapterType
    /** Address of device attached to a virtual IDE adapter. Workaround for PR1459646 */
    public var ide: VcenterVmHardwareIdeAddressInfo?
    /** Address of device attached to a virtual SCSI adapter. Workaround for PR1459646 */
    public var scsi: VcenterVmHardwareScsiAddressInfo?
    /** Address of device attached to a virtual SATA adapter. Workaround for PR1459646 */
    public var sata: VcenterVmHardwareSataAddressInfo?
    /** Address of device attached to a virtual NVMe adapter. This field is optional and it is only relevant when the value of Disk.Info.type is NVME. */
    public var nvme: VcenterVmHardwareNvmeAddressInfo?
    /** Physical resource backing for the virtual disk. */
    public var backing: VcenterVmHardwareDiskBackingInfo
    /** Capacity of the virtual disk in bytes. If unset, virtual disk is inaccessible or disk capacity is 0. */
    public var capacity: Int64?

    public init(label: String, type: VcenterVmHardwareDiskHostBusAdapterType, ide: VcenterVmHardwareIdeAddressInfo?, scsi: VcenterVmHardwareScsiAddressInfo?, sata: VcenterVmHardwareSataAddressInfo?, nvme: VcenterVmHardwareNvmeAddressInfo?, backing: VcenterVmHardwareDiskBackingInfo, capacity: Int64?) {
        self.label = label
        self.type = type
        self.ide = ide
        self.scsi = scsi
        self.sata = sata
        self.nvme = nvme
        self.backing = backing
        self.capacity = capacity
    }


}

