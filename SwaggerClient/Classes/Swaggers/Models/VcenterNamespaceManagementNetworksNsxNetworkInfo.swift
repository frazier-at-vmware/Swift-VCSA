//
// VcenterNamespaceManagementNetworksNsxNetworkInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNetworksNsxNetworkInfo: Codable {

    /** CIDR blocks from which Kubernetes allocates IP addresses for all workloads that attach to the namespace, including PodVMs, TKGS and VM Service VMs. If unset, cluster level settings specified in Clusters.NCPClusterNetworkInfo.pod-cidrs will be applied. */
    public var namespaceNetworkCidrs: [VcenterNamespaceManagementIpv4Cidr]?
    /** CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. If unset, cluster level settings specified in Clusters.NCPClusterNetworkInfo.ingress-cidrs will be applied. */
    public var ingressCidrs: [VcenterNamespaceManagementIpv4Cidr]?
    /** CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. If unset, cluster level settings specified in Clusters.NCPClusterNetworkInfo.egress-cidrs will be applied. */
    public var egressCidrs: [VcenterNamespaceManagementIpv4Cidr]?
    /** NSX Tier0 Gateway used for this namespace. If unset, cluster level settings specified in Clusters.NCPClusterNetworkInfo.nsx-tier0-gateway will be applied. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXTier0Gateway. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXTier0Gateway. */
    public var nsxTier0Gateway: String?
    /** Size of the subnet reserved for namespace segments If unset, cluster level settings specified in Clusters.NCPClusterNetworkInfo.namespace-subnet-prefix will be applied. */
    public var subnetPrefixLength: Int64?
    /** Routed mode for this namespace. When set to True, the traffic in the namespace is not NATed. If unset, cluster level settings specified in Clusters.NCPClusterNetworkInfo.routed-mode will be applied. */
    public var routedMode: Bool?
    /** The size of the NSX Load Balancer used by the namespace. If unset, then SMALL is used. */
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

