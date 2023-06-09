//
// VcenterNamespaceManagementClustersNCPClusterNetworkEnableSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementClustersNCPClusterNetworkEnableSpec: Codable {

    /** CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not overlap with those in Clusters.EnableSpec.service-cidr, Clusters.NCPClusterNetworkEnableSpec.ingress-cidrs, Clusters.NCPClusterNetworkEnableSpec.egress-cidrs, or other services running in the datacenter. All Pod CIDR blocks must be of at least subnet size /23. */
    public var podCidrs: [VcenterNamespaceManagementIpv4Cidr]
    /** CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. These ranges should not overlap with those in Clusters.NCPClusterNetworkEnableSpec.pod-cidrs, Clusters.EnableSpec.service-cidr, Clusters.NCPClusterNetworkEnableSpec.egress-cidrs, or other services running in the datacenter. */
    public var ingressCidrs: [VcenterNamespaceManagementIpv4Cidr]
    /** CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. These ranges should not overlap with those in Clusters.NCPClusterNetworkEnableSpec.pod-cidrs, Clusters.EnableSpec.service-cidr, Clusters.NCPClusterNetworkEnableSpec.ingress-cidrs, or other services running in the datacenter. */
    public var egressCidrs: [VcenterNamespaceManagementIpv4Cidr]
    /** vSphere Distributed Switch used to connect this cluster. This field is required when configuring a cluster that uses NSX-T. If unset and using NSXe, the system will choose a suitable vSphere Distributed Switch. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vSphereDistributedSwitch. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vSphereDistributedSwitch. */
    public var clusterDistributedSwitch: String?
    /** NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes Ingresses, and NSX SNAT. This field is required when configuring a cluster that uses NSX-T. If unset and using NSXe, the system will choose a suitable NSX Edge Cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXEdgeCluster. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXEdgeCluster. */
    public var nsxEdgeCluster: String?
    /** NSX Tier0 Gateway used for this cluster. This field is required when configuring a cluster that uses NSX-T. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXTier0Gateway. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXTier0Gateway. */
    public var nsxTier0Gateway: String?
    /** Size of the subnet reserved for namespaces segments. If unset, defaults to 28. */
    public var namespaceSubnetPrefix: Int64?
    /** Routed mode for this cluster. When set to True, the traffic in the cluster is not NATed. When this field is set to True, Clusters.NCPClusterNetworkEnableSpec.egress-cidrs is not allowed. If unset, defaults to False. */
    public var routedMode: Bool?

    public init(podCidrs: [VcenterNamespaceManagementIpv4Cidr], ingressCidrs: [VcenterNamespaceManagementIpv4Cidr], egressCidrs: [VcenterNamespaceManagementIpv4Cidr], clusterDistributedSwitch: String?, nsxEdgeCluster: String?, nsxTier0Gateway: String?, namespaceSubnetPrefix: Int64?, routedMode: Bool?) {
        self.podCidrs = podCidrs
        self.ingressCidrs = ingressCidrs
        self.egressCidrs = egressCidrs
        self.clusterDistributedSwitch = clusterDistributedSwitch
        self.nsxEdgeCluster = nsxEdgeCluster
        self.nsxTier0Gateway = nsxTier0Gateway
        self.namespaceSubnetPrefix = namespaceSubnetPrefix
        self.routedMode = routedMode
    }

    public enum CodingKeys: String, CodingKey { 
        case podCidrs = "pod_cidrs"
        case ingressCidrs = "ingress_cidrs"
        case egressCidrs = "egress_cidrs"
        case clusterDistributedSwitch = "cluster_distributed_switch"
        case nsxEdgeCluster = "nsx_edge_cluster"
        case nsxTier0Gateway = "nsx_tier0_gateway"
        case namespaceSubnetPrefix = "namespace_subnet_prefix"
        case routedMode = "routed_mode"
    }


}

