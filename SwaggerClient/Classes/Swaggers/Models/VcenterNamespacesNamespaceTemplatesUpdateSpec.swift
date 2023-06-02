//
// VcenterNamespacesNamespaceTemplatesUpdateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespacesNamespaceTemplatesUpdateSpec: Codable {

    /** Resource quota on the namespace. Refer to vcenter.namespace_management.NamespaceResourceOptions.Info#createResourceQuotaType and use vcenter.namespace_management.NamespaceResourceOptions#get for retrieving the type for the value for this field. For an example of this, see ResourceQuotaOptionsV1. If unset, no resource limits will be set on the namespace. */
    public var resourceSpec: JSONValue?
    /** Storage that this template defines and will be associated with a namespace after namespace realization. If unset then no update will be made. */
    public var storageSpecs: [VcenterNamespacesInstancesStorageSpec]?
    /** vSphere Namespaces network objects to be associated with the namespace. The values of this list need to reference names of pre-existing vcenter.namespace_management.Networks.Info structures. The field must be left unset if the cluster hosting the namespace uses NSXT_CONTAINER_PLUGIN as the network provider, since the network(s) for this namespace will be managed by NSX-T Container Plugin. If field is unset when the cluster hosting the namespace uses VSPHERE_NETWORK as its network provider, the namespace will automatically be associated with the cluster&#39;s Supervisor Primary Workload Network. The field currently accepts at most only 1 vSphere Namespaces network object reference. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.namespace_management.Network. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.namespace_management.Network. */
    public var networks: [String]?
    /** Permissions associated with namespace template. If unset, only users with the Administrator role can use this template; for example, this template is applied to the namespace created by self-service-users with the Administrator role. */
    public var permissions: [VcenterNamespacesNamespaceTemplatesSubject]?
    /** VM Service specification to be associated with the namespace template. The virtual machine classes and Content Library associations of the template will be updated according to the NamespaceTemplates.UpdateSpec.vm-service-spec. If unset, the virtual machine classes and Content Library associations of the template will not be modified. */
    public var vmServiceSpec: VcenterNamespacesInstancesVMServiceSpec?

    public init(resourceSpec: JSONValue?, storageSpecs: [VcenterNamespacesInstancesStorageSpec]?, networks: [String]?, permissions: [VcenterNamespacesNamespaceTemplatesSubject]?, vmServiceSpec: VcenterNamespacesInstancesVMServiceSpec?) {
        self.resourceSpec = resourceSpec
        self.storageSpecs = storageSpecs
        self.networks = networks
        self.permissions = permissions
        self.vmServiceSpec = vmServiceSpec
    }

    public enum CodingKeys: String, CodingKey { 
        case resourceSpec = "resource_spec"
        case storageSpecs = "storage_specs"
        case networks
        case permissions
        case vmServiceSpec = "vm_service_spec"
    }


}
