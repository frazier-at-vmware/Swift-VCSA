//
// VcenterNamespaceManagementClustersNCPClusterNetworkInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementClustersNCPClusterNetworkInfo: Codable {

    /** CIDR blocks from which Kubernetes allocates pod IP addresses. */
    public var podCidrs: [VcenterNamespaceManagementIpv4Cidr]
    /** CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. */
    public var ingressCidrs: [VcenterNamespaceManagementIpv4Cidr]
    /** CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. */
    public var egressCidrs: [VcenterNamespaceManagementIpv4Cidr]
    /** vSphere Distributed Switch used to connect this cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vSphereDistributedSwitch. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vSphereDistributedSwitch. */
    public var clusterDistributedSwitch: String
    /** NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes Ingresses, and NSX SNAT. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXEdgeCluster. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXEdgeCluster. */
    public var nsxEdgeCluster: String
    /** PEM-encoded x509 certificate used by NSX as a default fallback certificate for Kubernetes Ingress services. */
    public var defaultIngressTlsCertificate: String
    /** NSX Tier0 Gateway used for this cluster. This is set when the cluster uses NSX-T. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXTier0Gateway. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXTier0Gateway. */
    public var nsxTier0Gateway: String?
    /** Size of the subnet reserved for namespaces segments. If unset, defaults to 28. */
    public var namespaceSubnetPrefix: Int64?
    /** Routed mode for this cluster. If unset, defaults to False. */
    public var routedMode: Bool?

    public init(podCidrs: [VcenterNamespaceManagementIpv4Cidr], ingressCidrs: [VcenterNamespaceManagementIpv4Cidr], egressCidrs: [VcenterNamespaceManagementIpv4Cidr], clusterDistributedSwitch: String, nsxEdgeCluster: String, defaultIngressTlsCertificate: String, nsxTier0Gateway: String?, namespaceSubnetPrefix: Int64?, routedMode: Bool?) {
        self.podCidrs = podCidrs
        self.ingressCidrs = ingressCidrs
        self.egressCidrs = egressCidrs
        self.clusterDistributedSwitch = clusterDistributedSwitch
        self.nsxEdgeCluster = nsxEdgeCluster
        self.defaultIngressTlsCertificate = defaultIngressTlsCertificate
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
        case defaultIngressTlsCertificate = "default_ingress_tls_certificate"
        case nsxTier0Gateway = "nsx_tier0_gateway"
        case namespaceSubnetPrefix = "namespace_subnet_prefix"
        case routedMode = "routed_mode"
    }


}

