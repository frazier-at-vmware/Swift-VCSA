//
// VcenterOvfLibraryItemDeploymentTarget.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterOvfLibraryItemDeploymentTarget: Codable {

    /** Identifier of the resource pool to which the virtual machine or virtual appliance should be attached. */
    public var resourcePoolId: String
    /** Identifier of the target host on which the virtual machine or virtual appliance will run. The target host must be a member of the cluster that contains the resource pool identified by {@link #resourcePoolId}. */
    public var hostId: String?
    /** Identifier of the vCenter folder that should contain the virtual machine or virtual appliance. The folder must be virtual machine folder. */
    public var folderId: String?

    public init(resourcePoolId: String, hostId: String?, folderId: String?) {
        self.resourcePoolId = resourcePoolId
        self.hostId = hostId
        self.folderId = folderId
    }

    public enum CodingKeys: String, CodingKey { 
        case resourcePoolId = "resource_pool_id"
        case hostId = "host_id"
        case folderId = "folder_id"
    }


}

