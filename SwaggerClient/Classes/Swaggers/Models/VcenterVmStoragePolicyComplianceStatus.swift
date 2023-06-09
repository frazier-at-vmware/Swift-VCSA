//
// VcenterVmStoragePolicyComplianceStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Compliance.Status enumerated type defines the storage compliance status of a virtual machine and its applicable entities. */
public enum VcenterVmStoragePolicyComplianceStatus: String, Codable {
    case compliant = "COMPLIANT"
    case nonCompliant = "NON_COMPLIANT"
    case unknownCompliance = "UNKNOWN_COMPLIANCE"
    case notApplicable = "NOT_APPLICABLE"
    case outOfDate = "OUT_OF_DATE"

}
