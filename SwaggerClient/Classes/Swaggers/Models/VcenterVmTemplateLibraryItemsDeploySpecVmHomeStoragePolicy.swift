//
// VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicy.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicy: Codable {

    /** Policy type to be used when creating the deployed virtual machine&#39;s configuration and log files. */
    public var type: VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicyType
    /** Identifier for the storage policy to use. */
    public var policy: String?

    public init(type: VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicyType, policy: String?) {
        self.type = type
        self.policy = policy
    }


}
