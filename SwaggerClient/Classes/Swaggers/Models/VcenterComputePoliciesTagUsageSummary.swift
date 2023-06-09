//
// VcenterComputePoliciesTagUsageSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterComputePoliciesTagUsageSummary: Codable {

    /** Identifier of the policy that uses the tag indicated by TagUsage.Summary.tag. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.compute.Policy. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.compute.Policy. */
    public var policy: String
    /** Identifier of the tag type used by the policy indicated by TagUsage.Summary.policy. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.resource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.resource. */
    public var tagType: String
    /** Identifier of the tag used by the policy indicated by TagUsage.Summary.policy. When clients pass a value of this structure as a parameter, the field TagUsage.Summary.tag-type must contain the actual resource type. When operations return a value of this structure as a result, the field TagUsage.Summary.tag-type will contain the actual resource type. */
    public var tag: String
    /** Name of the tag used by the policy indicated by TagUsage.Summary.policy. */
    public var tagName: String
    /** Name of the category that has TagUsage.Summary.tag. */
    public var categoryName: String

    public init(policy: String, tagType: String, tag: String, tagName: String, categoryName: String) {
        self.policy = policy
        self.tagType = tagType
        self.tag = tag
        self.tagName = tagName
        self.categoryName = categoryName
    }

    public enum CodingKeys: String, CodingKey { 
        case policy
        case tagType = "tag_type"
        case tag
        case tagName = "tag_name"
        case categoryName = "category_name"
    }


}

