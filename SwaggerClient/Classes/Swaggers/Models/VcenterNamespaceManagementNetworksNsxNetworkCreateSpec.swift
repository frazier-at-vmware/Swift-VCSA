//
// VcenterNamespaceManagementNetworksNsxNetworkCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNetworksNsxNetworkCreateSpec: Codable {

    /** CIDR blocks from which Kubernetes allocates IP addresss for all workloads that attach to the namespace, including PodVMs, TKGS and VM Service VMs. This range should not overlap with those in Networks.NsxNetworkCreateSpec.ingress-cidrs, Networks.NsxNetworkCreateSpec.egress-cidrs, or other services running in the datacenter. This field is required when Networks.NsxNetworkCreateSpec.nsx-tier0-gateway or any of Networks.NsxNetworkCreateSpec.ingress-cidrs, Networks.NsxNetworkCreateSpec.egress-cidrs are specified. An update operation only allows for addition of new CIDR blocks to the existing list. */
    public var namespaceNetworkCidrs: [VcenterNamespaceManagementIpv4Cidr]?
    /** CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. These ranges should not overlap with those in Networks.NsxNetworkCreateSpec.namespace-network-cidrs, Networks.NsxNetworkCreateSpec.egress-cidrs, or other services running in the datacenter. This field is required when Networks.NsxNetworkCreateSpec.nsx-tier0-gateway or any of Networks.NsxNetworkCreateSpec.namespace-network-cidrs, Networks.NsxNetworkCreateSpec.egress-cidrs is specified. An update operation only allows for addition of new CIDR blocks to the existing list. */
    public var ingressCidrs: [VcenterNamespaceManagementIpv4Cidr]?
    /** CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. These ranges should not overlap with those in Networks.NsxNetworkCreateSpec.namespace-network-cidrs, Networks.NsxNetworkCreateSpec.ingress-cidrs, or other services running in the datacenter. This field is required when Networks.NsxNetworkCreateSpec.routed-mode is set to False and Networks.NsxNetworkCreateSpec.nsx-tier0-gateway or any of Networks.NsxNetworkCreateSpec.namespace-network-cidrs, Networks.NsxNetworkCreateSpec.ingress-cidrs is specified. When Networks.NsxNetworkCreateSpec.routed-mode is set to True, this field is not allowed. An update operation only allows for addition of new CIDR blocks to the existing list. */
    public var egressCidrs: [VcenterNamespaceManagementIpv4Cidr]?
    /** NSX Tier0 Gateway used for the namespace. This field does not allow update once applied. This field is required when configuring a cluster that uses NSX-T. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXTier0Gateway. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXTier0Gateway. */
    public var nsxTier0Gateway: String?
    /** Size of the subnet reserved for namespace segments. If unset, defaults to 28. This field does not allow update once applied. */
    public var subnetPrefixLength: Int64?
    /** Routed mode for thw namespace. When set to True, the traffic in the namespace is not NATed. If unset, defaults to False. When this field is set to True, Networks.NsxNetworkCreateSpec.egress-cidrs is not allowed. This field does not allow update once applied. */
    public var routedMode: Bool?
    /** The size of the NSX Load Balancer used by the namespace. This field does not allow update once applied. If unset, defaults to SMALL. */
    public var loadBalancerSize: VcenterNamespaceManagementNetworksLoadBalancerSize?

    public init(namespaceNetworkCidrs: [VcenterNamespaceManagementIpv4Cidr]?, ingressCidrs: [VcenterNamespaceManagementIpv4Cidr]?, egressCidrs: [VcenterNamespaceManagementIpv4Cidr]?, nsxTier0Gateway: String?, subnetPrefixLength: Int64?, routedMode: Bool?, loadBalancerSize: VcenterNamespaceManagementNetworksLoadBalancerSize?) {
        self.namespaceNetworkCidrs = namespaceNetworkCidrs
        self.ingressCidrs = ingressCidrs
        self.egressCidrs = egressCidrs
        self.nsxTier0Gateway = nsxTier0Gateway
        self.subnetPrefixLength = subnetPrefixLength
        self.routedMode = routedMode
        self.loadBalancerSize = loadBalancerSize
    }

    public enum CodingKeys: String, CodingKey { 
        case namespaceNetworkCidrs = "namespace_network_cidrs"
        case ingressCidrs = "ingress_cidrs"
        case egressCidrs = "egress_cidrs"
        case nsxTier0Gateway = "nsx_tier0_gateway"
        case subnetPrefixLength = "subnet_prefix_length"
        case routedMode = "routed_mode"
        case loadBalancerSize = "load_balancer_size"
    }


}

