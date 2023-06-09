//
// VcenterNamespaceManagementNetworksEdgesNSXConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNetworksEdgesNSXConfig: Codable {

    /** NSXConfig.edge-cluster-id defines the NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes Ingresses, and NSX SNAT. Defaults to a the edge cluster created earliest. */
    public var edgeClusterID: String?
    /** NSXConfig.default-ingress-tls-certificate defines a default certificate that is served on Ingress services, when another certificate is not presented. This configuration applies to all namespaces by default. If unset, there will be no certificate served on Ingress. */
    public var defaultIngressTLSCertificate: String?
    /** NSXConfig.routing-mode enables the network topology in either NAT mode or Routed Mode. Enabling routed mode will result in all the workloads i.e vSphere PODs, VMs and Tanzu clusters Node IPs to be directly accessible from networks beyond the Tier-0 router. Once a namespace mode is applied, it cannot be changed. The default setting is NAT mode. */
    public var routingMode: VcenterNamespaceManagementNetworksEdgesNSXRoutingMode?
    /** NSXConfig.egress-ip-ranges lists the IP Ranges from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. These ranges must not overlap with other IP ranges on this network. If this range is empty, network traffic will not be able to exit the cluster. */
    public var egressIPRanges: [VcenterNamespaceManagementNetworksIPRange]?
    /** NSXConfig.t0-gateway specifies the default Tier-0 gateway ID for the namespaces configuration. If unset, the default Tier-0 gateway from the edge cluster is used. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXTier0Gateway. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXTier0Gateway. */
    public var t0Gateway: String?
    /** NSXConfig.load-balancer-size describes the load balancer sizing options available. Larger sizes support more active virtual servers, but consume more resources. If unset, the size defaults to small. */
    public var loadBalancerSize: VcenterNamespaceManagementNetworksEdgesLoadBalancerSize?

    public init(edgeClusterID: String?, defaultIngressTLSCertificate: String?, routingMode: VcenterNamespaceManagementNetworksEdgesNSXRoutingMode?, egressIPRanges: [VcenterNamespaceManagementNetworksIPRange]?, t0Gateway: String?, loadBalancerSize: VcenterNamespaceManagementNetworksEdgesLoadBalancerSize?) {
        self.edgeClusterID = edgeClusterID
        self.defaultIngressTLSCertificate = defaultIngressTLSCertificate
        self.routingMode = routingMode
        self.egressIPRanges = egressIPRanges
        self.t0Gateway = t0Gateway
        self.loadBalancerSize = loadBalancerSize
    }

    public enum CodingKeys: String, CodingKey { 
        case edgeClusterID = "edge_cluster_ID"
        case defaultIngressTLSCertificate = "default_ingress_TLS_certificate"
        case routingMode = "routing_mode"
        case egressIPRanges = "egress_IP_ranges"
        case t0Gateway = "t0_gateway"
        case loadBalancerSize = "load_balancer_size"
    }


}

