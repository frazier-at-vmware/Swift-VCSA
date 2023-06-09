//
// VcenterStoragePoliciesComplianceSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterStoragePoliciesComplianceSummary: Codable {

    /** Identifier of virtual machine When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will be an identifier for the resource type: VirtualMachine. */
    public var vm: String
    /** Compliance status of the virtual machine home. If unset or empty, vmHome is not associated with a storage policy. */
    public var vmHome: VcenterStoragePoliciesComplianceStatus?
    /** List of the virtual hard disk. If unset or empty, virtual machine entity does not have any disks or its disks are not associated with a storage policy. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. */
    public var disks: [VcenterStoragePoliciesComplianceSummaryDisks]?

    public init(vm: String, vmHome: VcenterStoragePoliciesComplianceStatus?, disks: [VcenterStoragePoliciesComplianceSummaryDisks]?) {
        self.vm = vm
        self.vmHome = vmHome
        self.disks = disks
    }

    public enum CodingKeys: String, CodingKey { 
        case vm
        case vmHome = "vm_home"
        case disks
    }


}

