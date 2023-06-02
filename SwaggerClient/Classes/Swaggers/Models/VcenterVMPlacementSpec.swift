//
// VcenterVMPlacementSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVMPlacementSpec: Codable {

    /** Virtual machine folder into which the virtual machine should be placed. This field is currently required. In the future, if this field is unset, the system will attempt to choose a suitable folder for the virtual machine; if a folder cannot be chosen, the virtual machine creation operation will fail. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Folder. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Folder. */
    public var folder: String?
    /** Resource pool into which the virtual machine should be placed. This field is currently required if both VM.ComputePlacementSpec.host and VM.ComputePlacementSpec.cluster are unset. In the future, if this field is unset, the system will attempt to choose a suitable resource pool for the virtual machine; if a resource pool cannot be chosen, the virtual machine creation operation will fail. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ResourcePool. */
    public var resourcePool: String?
    /** Host onto which the virtual machine should be placed.   If VM.ComputePlacementSpec.host and VM.ComputePlacementSpec.resource-pool are both specified, VM.ComputePlacementSpec.resource-pool must belong to VM.ComputePlacementSpec.host.    If VM.ComputePlacementSpec.host and VM.ComputePlacementSpec.cluster are both specified, VM.ComputePlacementSpec.host must be a member of VM.ComputePlacementSpec.cluster.  This field may be unset if VM.ComputePlacementSpec.resource-pool or VM.ComputePlacementSpec.cluster is specified. If unset, the system will attempt to choose a suitable host for the virtual machine; if a host cannot be chosen, the virtual machine creation operation will fail. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem. */
    public var host: String?
    /** Cluster into which the virtual machine should be placed.   If VM.ComputePlacementSpec.cluster and VM.ComputePlacementSpec.resource-pool are both specified, VM.ComputePlacementSpec.resource-pool must belong to VM.ComputePlacementSpec.cluster.    If VM.ComputePlacementSpec.cluster and VM.ComputePlacementSpec.host are both specified, VM.ComputePlacementSpec.host must be a member of VM.ComputePlacementSpec.cluster.  If VM.ComputePlacementSpec.resource-pool or VM.ComputePlacementSpec.host is specified, it is recommended that this field be unset. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. */
    public var cluster: String?
    /** Datastore on which the virtual machine&#39;s configuration state should be stored. This datastore will also be used for any virtual disks that are created as part of the virtual machine creation operation. This field is currently required. In the future, if this field is unset, the system will attempt to choose suitable storage for the virtual machine; if storage cannot be chosen, the virtual machine creation operation will fail. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore. */
    public var datastore: String?

    public init(folder: String?, resourcePool: String?, host: String?, cluster: String?, datastore: String?) {
        self.folder = folder
        self.resourcePool = resourcePool
        self.host = host
        self.cluster = cluster
        self.datastore = datastore
    }

    public enum CodingKeys: String, CodingKey { 
        case folder
        case resourcePool = "resource_pool"
        case host
        case cluster
        case datastore
    }


}

