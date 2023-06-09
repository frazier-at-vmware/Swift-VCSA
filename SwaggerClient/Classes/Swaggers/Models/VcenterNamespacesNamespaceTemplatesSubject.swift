//
// VcenterNamespacesNamespaceTemplatesSubject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespacesNamespaceTemplatesSubject: Codable {

    /** Type of the subject. */
    public var subjectType: VcenterNamespacesAccessSubjectType
    /** Name of the subject. */
    public var subject: String
    /** Domain of the subject. */
    public var domain: String

    public init(subjectType: VcenterNamespacesAccessSubjectType, subject: String, domain: String) {
        self.subjectType = subjectType
        self.subject = subject
        self.domain = domain
    }

    public enum CodingKeys: String, CodingKey { 
        case subjectType = "subject_type"
        case subject
        case domain
    }


}

