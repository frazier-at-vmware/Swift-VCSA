//
// VcenterTaggingAssociationsIterationSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTaggingAssociationsIterationSpec: Codable {

    /** Marker is an opaque token that allows the caller to request the next page of tag associations. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tagging.associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tagging.associations.Marker. */
    public var marker: String?

    public init(marker: String?) {
        self.marker = marker
    }


}
