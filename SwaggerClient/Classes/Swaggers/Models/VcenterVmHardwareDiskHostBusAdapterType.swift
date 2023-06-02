//
// VcenterVmHardwareDiskHostBusAdapterType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Disk.HostBusAdapterType enumerated type defines the valid types of host bus adapters that may be used for attaching a virtual storage device to a virtual machine. */
public enum VcenterVmHardwareDiskHostBusAdapterType: String, Codable {
    case ide = "IDE"
    case scsi = "SCSI"
    case sata = "SATA"
    case nvme = "NVME"

}