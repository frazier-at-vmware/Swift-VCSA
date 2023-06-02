//
// VcenterLcmUpdatePendingCategory.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Pending.Category enumerated type defines the type of payload this release has on top of previous release */
public enum VcenterLcmUpdatePendingCategory: String, Codable {
    case security = "SECURITY"
    case fix = "FIX"
    case update = "UPDATE"
    case upgrade = "UPGRADE"

}
