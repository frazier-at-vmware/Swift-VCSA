//
// VcenterOvfLibraryItemDeploy.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterOvfLibraryItemDeploy: Codable {

    /** Client-generated token used to retry a request if the client fails to get a response from the server. If the original request succeeded, the result of that request will be returned, otherwise the operation will be retried. */
    public var clientToken: String?
    /** Specification of the deployment target. */
    public var target: VcenterOvfLibraryItemDeploymentTarget
    /** Specification of how the OVF package should be deployed to the target. */
    public var deploymentSpec: VcenterOvfLibraryItemResourcePoolDeploymentSpec

    public init(clientToken: String?, target: VcenterOvfLibraryItemDeploymentTarget, deploymentSpec: VcenterOvfLibraryItemResourcePoolDeploymentSpec) {
        self.clientToken = clientToken
        self.target = target
        self.deploymentSpec = deploymentSpec
    }

    public enum CodingKeys: String, CodingKey { 
        case clientToken = "client_token"
        case target
        case deploymentSpec = "deployment_spec"
    }


}

