//
// VcenterVmTemplateLibraryItemsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsInfo: Codable {

    /** Configured guest operating system of the virtual machine template. */
    public var guestOS: VcenterVmGuestOS
    /** CPU configuration of the virtual machine template. */
    public var cpu: VcenterVmTemplateLibraryItemsCpuInfo
    /** Memory configuration of the virtual machine template. */
    public var memory: VcenterVmTemplateLibraryItemsMemoryInfo
    /** Storage information about the virtual machine template&#39;s configuration and log files. */
    public var vmHomeStorage: VcenterVmTemplateLibraryItemsVmHomeStorageInfo
    /** Storage information about the virtual machine template&#39;s virtual disks. */
    public var disks: [VcenterVmTemplateLibraryItemsInfoDisks]
    /** Information about the virtual machine template&#39;s virtual ethernet adapters. */
    public var nics: [VcenterVmTemplateLibraryItemsInfoNics]
    /** Identifier of the latest virtual machine template contained in the library item. This {@term field} is the managed object identifier used to identify the virtual machine template in the vSphere Management (SOAP) API. */
    public var vmTemplate: String

    public init(guestOS: VcenterVmGuestOS, cpu: VcenterVmTemplateLibraryItemsCpuInfo, memory: VcenterVmTemplateLibraryItemsMemoryInfo, vmHomeStorage: VcenterVmTemplateLibraryItemsVmHomeStorageInfo, disks: [VcenterVmTemplateLibraryItemsInfoDisks], nics: [VcenterVmTemplateLibraryItemsInfoNics], vmTemplate: String) {
        self.guestOS = guestOS
        self.cpu = cpu
        self.memory = memory
        self.vmHomeStorage = vmHomeStorage
        self.disks = disks
        self.nics = nics
        self.vmTemplate = vmTemplate
    }

    public enum CodingKeys: String, CodingKey { 
        case guestOS = "guest_OS"
        case cpu
        case memory
        case vmHomeStorage = "vm_home_storage"
        case disks
        case nics
        case vmTemplate = "vm_template"
    }


}
