//
// VcenterNamespaceManagementVirtualMachineClassesCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementVirtualMachineClassesCreateSpec: Codable {

    /** Identifier of the virtual machine class. This has DNS_LABEL restrictions as specified in . This must be an alphanumeric (a-z and 0-9) string and with maximum length of 63 characters and with the &#39;-&#39; character allowed anywhere except the first or last character. This name is unique in this vCenter server. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespace_management.VirtualMachineClass. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespace_management.VirtualMachineClass. */
    public var _id: String
    /** The number of CPUs configured for virtual machine of this class. */
    public var cpuCount: Int64
    /** The percentage of total available CPUs reserved for a virtual machine. We multiply this percentage by the minimum frequency amongst all the cluster nodes to get the CPU reservation that is specified to vSphere in MHz. If unset, no CPU reservation is requested for the virtual machine. */
    public var cpuReservation: Int64?
    /** The amount of memory in MB configured for virtual machine of this class. */
    public var memoryMB: Int64
    /** The percentage of available memory reserved for a virtual machine of this class. Memory reservation must be set to 100% for VM class with vGPU or Dynamic DirectPath I/O devices. If unset, no memory reservation is requested for virtual machine. */
    public var memoryReservation: Int64?
    /** Description for the VM class. If unset, no description is added to the VM class. */
    public var _description: String?
    /** Virtual devices that will be attached to the VMs created with this class. If unset, no Virtual device will be attached to the VMs created with this class. */
    public var devices: VcenterNamespaceManagementVirtualMachineClassesVirtualDevices?
    /** Instance storage that will be attached to the VMs created with this class. If unset, instance storage specification will not be created. */
    public var instanceStorage: VcenterNamespaceManagementVirtualMachineClassesInstanceStorage?

    public init(_id: String, cpuCount: Int64, cpuReservation: Int64?, memoryMB: Int64, memoryReservation: Int64?, _description: String?, devices: VcenterNamespaceManagementVirtualMachineClassesVirtualDevices?, instanceStorage: VcenterNamespaceManagementVirtualMachineClassesInstanceStorage?) {
        self._id = _id
        self.cpuCount = cpuCount
        self.cpuReservation = cpuReservation
        self.memoryMB = memoryMB
        self.memoryReservation = memoryReservation
        self._description = _description
        self.devices = devices
        self.instanceStorage = instanceStorage
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case cpuCount = "cpu_count"
        case cpuReservation = "cpu_reservation"
        case memoryMB = "memory_MB"
        case memoryReservation = "memory_reservation"
        case _description = "description"
        case devices
        case instanceStorage = "instance_storage"
    }


}

