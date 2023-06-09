//
// VcenterHostFilterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterHostFilterSpec: Codable {

    /** Identifiers of hosts that can match the filter. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. */
    public var hosts: [String]?
    /** Names that hosts must have to match the filter (see Host.Summary.name). If unset or empty, hosts with any name match the filter. */
    public var names: [String]?
    /** Folders that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. */
    public var folders: [String]?
    /** Datacenters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. */
    public var datacenters: [String]?
    /** If true, only hosts that are not part of a cluster can match the filter, and if false, only hosts that are are part of a cluster can match the filter. If unset Hosts can match filter independent of whether they are part of a cluster or not. If this field is true and Host.FilterSpec.clusters os not empty, no hosts will match the filter. */
    public var standalone: Bool?
    /** Clusters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any cluster and hosts that are not in a cluster match the filter. If this field is not empty and Host.FilterSpec.standalone is true, no hosts will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. */
    public var clusters: [String]?
    /** Connection states that a host must be in to match the filter (see Host.Summary.connection-state. If unset or empty, hosts in any connection state match the filter. */
    public var connectionStates: [VcenterHostConnectionState]?

    public init(hosts: [String]?, names: [String]?, folders: [String]?, datacenters: [String]?, standalone: Bool?, clusters: [String]?, connectionStates: [VcenterHostConnectionState]?) {
        self.hosts = hosts
        self.names = names
        self.folders = folders
        self.datacenters = datacenters
        self.standalone = standalone
        self.clusters = clusters
        self.connectionStates = connectionStates
    }

    public enum CodingKeys: String, CodingKey { 
        case hosts
        case names
        case folders
        case datacenters
        case standalone
        case clusters
        case connectionStates = "connection_states"
    }


}

