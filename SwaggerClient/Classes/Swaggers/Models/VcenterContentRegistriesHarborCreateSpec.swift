//
// VcenterContentRegistriesHarborCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterContentRegistriesHarborCreateSpec: Codable {

    /** Identifier of the cluster hosting the registry. */
    public var cluster: String?
    /** Garbage collection configuration for the Harbor registry. */
    public var garbageCollection: VcenterContentRegistriesHarborGarbageCollection?
    /** Storage associated with the Harbor registry. The list contains only one storage backing in this version. */
    public var storage: [VcenterContentRegistriesHarborStorageSpec]

    public init(cluster: String?, garbageCollection: VcenterContentRegistriesHarborGarbageCollection?, storage: [VcenterContentRegistriesHarborStorageSpec]) {
        self.cluster = cluster
        self.garbageCollection = garbageCollection
        self.storage = storage
    }

    public enum CodingKeys: String, CodingKey { 
        case cluster
        case garbageCollection = "garbage_collection"
        case storage
    }


}
