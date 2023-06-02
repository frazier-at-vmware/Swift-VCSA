//
// VcenterStoragePoliciesCompatibilityInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterStoragePoliciesCompatibilityInfo: Codable {

    /** Info about a list of datastores compatible with a specific storage policy. */
    public var compatibleDatastores: [VcenterStoragePoliciesCompatibleDatastoreInfo]

    public init(compatibleDatastores: [VcenterStoragePoliciesCompatibleDatastoreInfo]) {
        self.compatibleDatastores = compatibleDatastores
    }

    public enum CodingKeys: String, CodingKey { 
        case compatibleDatastores = "compatible_datastores"
    }


}

