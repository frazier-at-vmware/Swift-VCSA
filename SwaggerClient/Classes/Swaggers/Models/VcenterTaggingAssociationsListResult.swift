//
// VcenterTaggingAssociationsListResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTaggingAssociationsListResult: Codable {

    /** List of tag associations. */
    public var associations: [VcenterTaggingAssociationsSummary]
    /** Marker is an opaque data structure that allows the caller to request the next page of tag associations. If unset or empty, there are no more tag associations to request. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tagging.associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tagging.associations.Marker. */
    public var marker: String?
    /** The last status for the iterator that indicates whether any more results can be expected if the caller continues to make requests for more data using the iterator. */
    public var status: VcenterTaggingAssociationsLastIterationStatus

    public init(associations: [VcenterTaggingAssociationsSummary], marker: String?, status: VcenterTaggingAssociationsLastIterationStatus) {
        self.associations = associations
        self.marker = marker
        self.status = status
    }


}

