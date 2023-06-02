//
// VcenterNamespaceManagementLoadBalancersConfigSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementLoadBalancersConfigSpec: Codable {

    /** An identifier that identifies a load balancer and can be used to query or configure load balancer properties via these resources. The identifier has DNS_LABEL restrictions as specified in . This must be an alphanumeric (a-z and 0-9) string, with a maximum length of 63 characters and with the &#39;-&#39; character allowed anywhere except the first or last character. This name is unique across all Namespaces in this vCenter server. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespace_management.LoadBalancerConfig. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespace_management.LoadBalancerConfig. */
    public var _id: String
    /** List of address ranges that will be used to derive frontend IP addresses for L4 virtual servers. This field is ignored in case of AVI load balancer provider. In case of HA_PROXY load balancer provider, at least one range must be provided. */
    public var addressRanges: [VcenterNamespaceManagementIPRange]
    /** The LoadBalancers.ConfigSpec.provider selects a provider from the list of available providers to be used with vSphere Namespaces. */
    public var provider: VcenterNamespaceManagementLoadBalancersProvider
    /** The LoadBalancers.HAProxyConfigCreateSpec is a conditional configuration made available upon selecting the HA_PROXY load balancer provider. It is used to configure the load balancer at run time. This field is optional and it is only relevant when the value of LoadBalancers.ConfigSpec.provider is HA_PROXY. */
    public var haProxyConfigCreateSpec: VcenterNamespaceManagementLoadBalancersHAProxyConfigCreateSpec?
    /** The LoadBalancers.AviConfigCreateSpec is a conditional configuration made available upon selecting the AVI load balancer provider. It is used to configure the load balancer at run time. This field is optional and it is only relevant when the value of LoadBalancers.ConfigSpec.provider is AVI. */
    public var aviConfigCreateSpec: VcenterNamespaceManagementLoadBalancersAviConfigCreateSpec?

    public init(_id: String, addressRanges: [VcenterNamespaceManagementIPRange], provider: VcenterNamespaceManagementLoadBalancersProvider, haProxyConfigCreateSpec: VcenterNamespaceManagementLoadBalancersHAProxyConfigCreateSpec?, aviConfigCreateSpec: VcenterNamespaceManagementLoadBalancersAviConfigCreateSpec?) {
        self._id = _id
        self.addressRanges = addressRanges
        self.provider = provider
        self.haProxyConfigCreateSpec = haProxyConfigCreateSpec
        self.aviConfigCreateSpec = aviConfigCreateSpec
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case addressRanges = "address_ranges"
        case provider
        case haProxyConfigCreateSpec = "ha_proxy_config_create_spec"
        case aviConfigCreateSpec = "avi_config_create_spec"
    }


}

