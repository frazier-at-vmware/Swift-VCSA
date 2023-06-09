//
// VcenterDatastoreFilterSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDatastoreFilterSpec: Codable {

    /** Identifiers of datastores that can match the filter. If unset or empty, datastores with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datastore. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datastore. */
    public var datastores: [String]?
    /** Names that datastores must have to match the filter (see Datastore.Info.name). If unset or empty, datastores with any name match the filter. */
    public var names: [String]?
    /** Types that datastores must have to match the filter (see Datastore.Summary.type). If unset or empty, datastores with any type match the filter. */
    public var types: [VcenterDatastoreType]?
    /** Folders that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. */
    public var folders: [String]?
    /** Datacenters that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. */
    public var datacenters: [String]?

    public init(datastores: [String]?, names: [String]?, types: [VcenterDatastoreType]?, folders: [String]?, datacenters: [String]?) {
        self.datastores = datastores
        self.names = names
        self.types = types
        self.folders = folders
        self.datacenters = datacenters
    }


}

