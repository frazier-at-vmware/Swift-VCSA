//
// VcenterOvfLibraryItemResourcePoolDeploymentSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterOvfLibraryItemResourcePoolDeploymentSpec: Codable {

    /** Name assigned to the deployed target virtual machine or virtual appliance. */
    public var name: String?
    /** Annotation assigned to the deployed target virtual machine or virtual appliance. */
    public var annotation: String?
    /** Whether to accept all End User License Agreements. See {@link OvfSummary#eulas}. */
    public var acceptAllEULA: Bool
    /** Specification of the target network to use for sections of type ovf:NetworkSection in the OVF descriptor. The key in the {@term map} is the section identifier of the ovf:NetworkSection section in the OVF descriptor and the value is the target network to be used for deployment. */
    public var networkMappings: [VcenterOvfLibraryItemResourcePoolDeploymentSpecNetworkMappings]?
    /** Specification of the target storage to use for sections of type vmw:StorageGroupSection in the OVF descriptor. The key in the {@term map} is the section identifier of the ovf:StorageGroupSection section in the OVF descriptor and the value is the target storage specification to be used for deployment. See {@link StorageGroupMapping}. */
    public var storageMappings: [VcenterOvfLibraryItemResourcePoolDeploymentSpecStorageMappings]?
    /** Default storage provisioning type to use for all sections of type vmw:StorageSection in the OVF descriptor. */
    public var storageProvisioning: VcenterOvfDiskProvisioningType?
    /** Default storage profile to use for all sections of type vmw:StorageSection in the OVF descriptor. */
    public var storageProfileId: String?
    /** The locale to use for parsing the OVF descriptor. */
    public var locale: String?
    /** Flags to be use for deployment. The supported flag values can be obtained using {@link ImportFlag#list}. */
    public var flags: [String]?
    /** Additional OVF parameters that may be needed for the deployment. Additional OVF parameters may be required by the OVF descriptor of the OVF package in the library item. Examples of OVF parameters that can be specified through this {@term field} include, but are not limited to: &lt;ul&gt; &lt;li&gt;{@link DeploymentOptionParams}&lt;/li&gt; &lt;li&gt;{@link ExtraConfigParams}&lt;/li&gt; &lt;li&gt;{@link IpAllocationParams}&lt;/li&gt; &lt;li&gt;{@link PropertyParams}&lt;/li&gt; &lt;li&gt;{@link ScaleOutParams}&lt;/li&gt; &lt;li&gt;{@link VcenterExtensionParams}&lt;/li&gt; &lt;/ul&gt; */
    public var additionalParameters: [JSONValue]?
    /** Default datastore to use for all sections of type vmw:StorageSection in the OVF descriptor. */
    public var defaultDatastoreId: String?

    public init(name: String?, annotation: String?, acceptAllEULA: Bool, networkMappings: [VcenterOvfLibraryItemResourcePoolDeploymentSpecNetworkMappings]?, storageMappings: [VcenterOvfLibraryItemResourcePoolDeploymentSpecStorageMappings]?, storageProvisioning: VcenterOvfDiskProvisioningType?, storageProfileId: String?, locale: String?, flags: [String]?, additionalParameters: [JSONValue]?, defaultDatastoreId: String?) {
        self.name = name
        self.annotation = annotation
        self.acceptAllEULA = acceptAllEULA
        self.networkMappings = networkMappings
        self.storageMappings = storageMappings
        self.storageProvisioning = storageProvisioning
        self.storageProfileId = storageProfileId
        self.locale = locale
        self.flags = flags
        self.additionalParameters = additionalParameters
        self.defaultDatastoreId = defaultDatastoreId
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case annotation
        case acceptAllEULA = "accept_all_EULA"
        case networkMappings = "network_mappings"
        case storageMappings = "storage_mappings"
        case storageProvisioning = "storage_provisioning"
        case storageProfileId = "storage_profile_id"
        case locale
        case flags
        case additionalParameters = "additional_parameters"
        case defaultDatastoreId = "default_datastore_id"
    }


}

