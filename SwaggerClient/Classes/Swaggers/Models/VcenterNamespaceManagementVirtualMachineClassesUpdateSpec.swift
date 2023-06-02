//
// VcenterNamespaceManagementVirtualMachineClassesUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementVirtualMachineClassesUpdateSpec: Codable {

    /** The number of CPUs configured for virtual machine of this class. If unset the current value the will not be modified. */
    public var cpuCount: Int64?
    /** The percentage of total available CPUs reserved for a virtual machine. We multiply this percentage by the minimum frequency amongst all the cluster nodes to get the CPU reservation that is specified to vSphere in MHz. If unset, no CPU reservation is requested for the virtual machine. */
    public var cpuReservation: Int64?
    /** The amount of memory in MB configured for virtual machine of this class. If unset the current value the will not be modified. */
    public var memoryMB: Int64?
    /** The percentage of available memory reserved for a virtual machine of this class. Memory reservation must be set to 100% for VM class with vGPU or Dynamic DirectPath I/O devices. If unset, no memory reservation is requested for virtual machine. */
    public var memoryReservation: Int64?
    /** Description for the VM class. If unset, description is not updated. */
    public var _description: String?
    /** Virtual devices corresponding to the VM class. If unset, virtual devices will not be updated. */
    public var devices: VcenterNamespaceManagementVirtualMachineClassesVirtualDevices?
    /** Instance storage associated with the VM class. If unset, instance storage specification will not be updated. */
    public var instanceStorage: VcenterNamespaceManagementVirtualMachineClassesInstanceStorage?

    public init(cpuCount: Int64?, cpuReservation: Int64?, memoryMB: Int64?, memoryReservation: Int64?, _description: String?, devices: VcenterNamespaceManagementVirtualMachineClassesVirtualDevices?, instanceStorage: VcenterNamespaceManagementVirtualMachineClassesInstanceStorage?) {
        self.cpuCount = cpuCount
        self.cpuReservation = cpuReservation
        self.memoryMB = memoryMB
        self.memoryReservation = memoryReservation
        self._description = _description
        self.devices = devices
        self.instanceStorage = instanceStorage
    }

    public enum CodingKeys: String, CodingKey { 
        case cpuCount = "cpu_count"
        case cpuReservation = "cpu_reservation"
        case memoryMB = "memory_MB"
        case memoryReservation = "memory_reservation"
        case _description = "description"
        case devices
        case instanceStorage = "instance_storage"
    }


}

