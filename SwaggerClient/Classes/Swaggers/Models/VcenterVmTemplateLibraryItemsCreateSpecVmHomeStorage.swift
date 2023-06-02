//
// VcenterVmTemplateLibraryItemsCreateSpecVmHomeStorage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsCreateSpecVmHomeStorage: Codable {

    /** Identifier of the datastore for the virtual machine template&#39;s configuration and log files. */
    public var datastore: String?
    /** Storage policy for the virtual machine template&#39;s configuration and log files. */
    public var storagePolicy: VcenterVmTemplateLibraryItemsCreateSpecVmHomeStoragePolicy?

    public init(datastore: String?, storagePolicy: VcenterVmTemplateLibraryItemsCreateSpecVmHomeStoragePolicy?) {
        self.datastore = datastore
        self.storagePolicy = storagePolicy
    }

    public enum CodingKeys: String, CodingKey { 
        case datastore
        case storagePolicy = "storage_policy"
    }


}
