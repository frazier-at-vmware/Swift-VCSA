//
// VcenterNamespaceManagementNetworksLoadBalancerSize.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Networks.LoadBalancerSize enumerates the kinds of load balancer sizes supported by NSX. Small load balancer can host 10 to 20 virtual servers depending on NSX-T version. Medium load balancer can host 100 virtual servers. Large load balancer can host 1000 virtual servers. */
public enum VcenterNamespaceManagementNetworksLoadBalancerSize: String, Codable {
    case small = "SMALL"
    case medium = "MEDIUM"
    case large = "LARGE"

}
