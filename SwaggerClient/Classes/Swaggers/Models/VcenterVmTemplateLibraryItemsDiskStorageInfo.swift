//
// VcenterVmTemplateLibraryItemsDiskStorageInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsDiskStorageInfo: Codable {

    /** Identifier of the datastore where the disk is stored. */
    public var datastore: String
    /** Identifier of the storage policy associated with the virtual disk. */
    public var storagePolicy: String?

    public init(datastore: String, storagePolicy: String?) {
        self.datastore = datastore
        self.storagePolicy = storagePolicy
    }

    public enum CodingKeys: String, CodingKey { 
        case datastore
        case storagePolicy = "storage_policy"
    }


}

