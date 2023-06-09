//
// VcenterOvfLibraryItemStorageGroupMapping.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterOvfLibraryItemStorageGroupMapping: Codable {

    /** Type of storage deployment target to use for the vmw:StorageGroupSection section. The specified value must be {@link Type#DATASTORE} or {@link Type#STORAGE_PROFILE}. */
    public var type: VcenterOvfLibraryItemStorageGroupMappingType
    /** Target datastore to be used for the storage group. */
    public var datastoreId: String?
    /** Target storage profile to be used for the storage group. */
    public var storageProfileId: String?
    /** Target provisioning type to use for the storage group. */
    public var provisioning: VcenterOvfDiskProvisioningType?

    public init(type: VcenterOvfLibraryItemStorageGroupMappingType, datastoreId: String?, storageProfileId: String?, provisioning: VcenterOvfDiskProvisioningType?) {
        self.type = type
        self.datastoreId = datastoreId
        self.storageProfileId = storageProfileId
        self.provisioning = provisioning
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case datastoreId = "datastore_id"
        case storageProfileId = "storage_profile_id"
        case provisioning
    }


}

