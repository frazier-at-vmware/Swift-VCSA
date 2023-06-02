//
// VcenterVmTemplateLibraryItemsCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsCreateSpec: Codable {

    /** Identifier of the source virtual machine to create the library item from. */
    public var sourceVm: String
    /** Name of the library item. */
    public var name: String
    /** Description of the library item. */
    public var _description: String?
    /** Identifier of the library in which the new library item should be created. */
    public var library: String
    /** Storage location for the virtual machine template&#39;s configuration and log files. */
    public var vmHomeStorage: VcenterVmTemplateLibraryItemsCreateSpecVmHomeStorage?
    /** Storage specification for the virtual machine template&#39;s disks. */
    public var diskStorage: VcenterVmTemplateLibraryItemsCreateSpecDiskStorage?
    /** Storage specification for individual disks in the virtual machine template. This is specified as a mapping between disk identifiers in the source virtual machine and their respective storage specifications. */
    public var diskStorageOverrides: [VcenterVmTemplateLibraryItemsCreateSpecDiskStorageOverrides]?
    /** Information used to place the virtual machine template. */
    public var placement: VcenterVmTemplateLibraryItemsCreatePlacementSpec?

    public init(sourceVm: String, name: String, _description: String?, library: String, vmHomeStorage: VcenterVmTemplateLibraryItemsCreateSpecVmHomeStorage?, diskStorage: VcenterVmTemplateLibraryItemsCreateSpecDiskStorage?, diskStorageOverrides: [VcenterVmTemplateLibraryItemsCreateSpecDiskStorageOverrides]?, placement: VcenterVmTemplateLibraryItemsCreatePlacementSpec?) {
        self.sourceVm = sourceVm
        self.name = name
        self._description = _description
        self.library = library
        self.vmHomeStorage = vmHomeStorage
        self.diskStorage = diskStorage
        self.diskStorageOverrides = diskStorageOverrides
        self.placement = placement
    }

    public enum CodingKeys: String, CodingKey { 
        case sourceVm = "source_vm"
        case name
        case _description = "description"
        case library
        case vmHomeStorage = "vm_home_storage"
        case diskStorage = "disk_storage"
        case diskStorageOverrides = "disk_storage_overrides"
        case placement
    }


}

