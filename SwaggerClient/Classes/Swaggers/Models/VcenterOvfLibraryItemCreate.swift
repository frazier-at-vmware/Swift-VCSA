//
// VcenterOvfLibraryItemCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterOvfLibraryItemCreate: Codable {

    /** Client-generated token used to retry a request if the client fails to get a response from the server. If the original request succeeded, the result of that request will be returned, otherwise the operation will be retried. */
    public var clientToken: String?
    /** Identifier of the virtual machine or virtual appliance to use as the source. */
    public var source: VcenterOvfLibraryItemDeployableIdentity
    /** Specification of the target content library and library item. */
    public var target: VcenterOvfLibraryItemCreateTarget
    /** Information used to create the OVF package from the source virtual machine or virtual appliance. */
    public var createSpec: VcenterOvfLibraryItemCreateSpec

    public init(clientToken: String?, source: VcenterOvfLibraryItemDeployableIdentity, target: VcenterOvfLibraryItemCreateTarget, createSpec: VcenterOvfLibraryItemCreateSpec) {
        self.clientToken = clientToken
        self.source = source
        self.target = target
        self.createSpec = createSpec
    }

    public enum CodingKeys: String, CodingKey { 
        case clientToken = "client_token"
        case source
        case target
        case createSpec = "create_spec"
    }


}

