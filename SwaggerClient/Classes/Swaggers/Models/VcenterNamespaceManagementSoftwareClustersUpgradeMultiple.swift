//
// VcenterNamespaceManagementSoftwareClustersUpgradeMultiple.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifications for upgrading selected clusters. The key in the parameter map must be an identifier for the resource type: ClusterComputeResource. */

public struct VcenterNamespaceManagementSoftwareClustersUpgradeMultiple: Codable {


    public var additionalProperties: [String:VcenterNamespaceManagementSoftwareClustersUpgradeSpec] = [:]

    public subscript(key: String) -> VcenterNamespaceManagementSoftwareClustersUpgradeSpec? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        var nonAdditionalPropertyKeys = Set<String>()
        additionalProperties = try container.decodeMap(VcenterNamespaceManagementSoftwareClustersUpgradeSpec.self, excludedKeys: nonAdditionalPropertyKeys)
    }



}

