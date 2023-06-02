//
// VcenterNamespaceManagementNetworksNsxNetworkSetSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementNetworksNsxNetworkSetSpec: Codable {

    /** CIDR blocks from which Kubernetes allocates IP addresses for all workloads that attach to the namespace, including PodVMs, TKGS and VM Service VMs. Only appending additional Cidr is allowed. Modification to existing Cidr ranges will result in the operation failing with a ResourceInUse error. Appending invalid Cidr e.g. overlapping or broadcast or reserved Cidr will result in the operation failing with a InvalidArgument error. If unset, the current value will be retained. */
    public var namespaceNetworkCidrs: [VcenterNamespaceManagementIpv4Cidr]?
    /** CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. Only appending additional Cidr is allowed. Modification to existing Cidr ranges will result in the operation failing with a ResourceInUse error. Appending invalid Cidr e.g. overlapping or broadcast or reserved Cidr will result in the operation failing with a InvalidArgument error. If unset, the current value will be retained. */
    public var ingressCidrs: [VcenterNamespaceManagementIpv4Cidr]?
    /** CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. Only appending additional Cidr is allowed. Modification to existing Cidr ranges will result in the operation failing with a ResourceInUse error. Appending invalid Cidr e.g. overlapping or broadcast or reserved Cidr will result in the operation failing with a InvalidArgument error. If unset, the current value will be retained. */
    public var egressCidrs: [VcenterNamespaceManagementIpv4Cidr]?

    public init(namespaceNetworkCidrs: [VcenterNamespaceManagementIpv4Cidr]?, ingressCidrs: [VcenterNamespaceManagementIpv4Cidr]?, egressCidrs: [VcenterNamespaceManagementIpv4Cidr]?) {
        self.namespaceNetworkCidrs = namespaceNetworkCidrs
        self.ingressCidrs = ingressCidrs
        self.egressCidrs = egressCidrs
    }

    public enum CodingKeys: String, CodingKey { 
        case namespaceNetworkCidrs = "namespace_network_cidrs"
        case ingressCidrs = "ingress_cidrs"
        case egressCidrs = "egress_cidrs"
    }


}

