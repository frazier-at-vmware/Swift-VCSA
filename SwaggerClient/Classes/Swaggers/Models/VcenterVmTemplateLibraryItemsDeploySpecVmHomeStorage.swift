//
// VcenterVmTemplateLibraryItemsDeploySpecVmHomeStorage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsDeploySpecVmHomeStorage: Codable {

    /** Identifier of the datastore for the deployed virtual machine&#39;s configuration and log files. */
    public var datastore: String?
    /** Storage policy for the deployed virtual machine&#39;s configuration and log files. */
    public var storagePolicy: VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicy?

    public init(datastore: String?, storagePolicy: VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicy?) {
        self.datastore = datastore
        self.storagePolicy = storagePolicy
    }

    public enum CodingKeys: String, CodingKey { 
        case datastore
        case storagePolicy = "storage_policy"
    }


}

