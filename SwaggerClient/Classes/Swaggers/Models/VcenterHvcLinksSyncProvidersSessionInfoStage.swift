//
// VcenterHvcLinksSyncProvidersSessionInfoStage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The {@name Stage} {@term structure} defines the different stages of Sync. *Warning:* This enumeration is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. */
public enum VcenterHvcLinksSyncProvidersSessionInfoStage: String, Codable {
    case changeDetection = "CHANGE_DETECTION"
    case changeEnumeration = "CHANGE_ENUMERATION"
    case changeApplication = "CHANGE_APPLICATION"
    case completed = "COMPLETED"
    case failed = "FAILED"
    case waiting = "WAITING"

}
