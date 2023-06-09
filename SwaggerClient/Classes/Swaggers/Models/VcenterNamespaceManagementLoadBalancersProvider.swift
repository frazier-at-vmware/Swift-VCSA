//
// VcenterNamespaceManagementLoadBalancersProvider.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The LoadBalancers.Provider enumerates the kinds of load balancers supported by vSphere Namespaces. */
public enum VcenterNamespaceManagementLoadBalancersProvider: String, Codable {
    case haProxy = "HA_PROXY"
    case avi = "AVI"

}
