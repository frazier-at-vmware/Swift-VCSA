//
// VcenterVMFilterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVMFilterSpec: Codable {

    /** Identifiers of virtual machines that can match the filter. If unset or empty, virtual machines with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine. */
    public var vms: [String]?
    /** Names that virtual machines must have to match the filter (see VM.Info.name). If unset or empty, virtual machines with any name match the filter. */
    public var names: [String]?
    /** Folders that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. */
    public var folders: [String]?
    /** Datacenters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. */
    public var datacenters: [String]?
    /** Hosts that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines on any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. */
    public var hosts: [String]?
    /** Clusters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. */
    public var clusters: [String]?
    /** Resource pools that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool. */
    public var resourcePools: [String]?
    /** Power states that a virtual machine must be in to match the filter (see Power.Info.state. If unset or empty, virtual machines in any power state match the filter. */
    public var powerStates: [VcenterVmPowerState]?

    public init(vms: [String]?, names: [String]?, folders: [String]?, datacenters: [String]?, hosts: [String]?, clusters: [String]?, resourcePools: [String]?, powerStates: [VcenterVmPowerState]?) {
        self.vms = vms
        self.names = names
        self.folders = folders
        self.datacenters = datacenters
        self.hosts = hosts
        self.clusters = clusters
        self.resourcePools = resourcePools
        self.powerStates = powerStates
    }

    public enum CodingKeys: String, CodingKey { 
        case vms
        case names
        case folders
        case datacenters
        case hosts
        case clusters
        case resourcePools = "resource_pools"
        case powerStates = "power_states"
    }


}

