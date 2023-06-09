//
// VcenterNamespaceManagementNamespaceResourceOptionsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNamespaceResourceOptionsInfo: Codable {

    /** Identifier of the structure used to set resource quotas on the namespace. See vcenter.namespaces.Instances#create and vcenter.namespaces.Instances#set. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.structure. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.structure. */
    public var createResourceQuotaType: String
    /** Identifier of the structure used to update resource quotas on the namespace. See vcenter.namespaces.Instances#update. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.structure. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.structure. */
    public var updateResourceQuotaType: String

    public init(createResourceQuotaType: String, updateResourceQuotaType: String) {
        self.createResourceQuotaType = createResourceQuotaType
        self.updateResourceQuotaType = updateResourceQuotaType
    }

    public enum CodingKeys: String, CodingKey { 
        case createResourceQuotaType = "create_resource_quota_type"
        case updateResourceQuotaType = "update_resource_quota_type"
    }


}

