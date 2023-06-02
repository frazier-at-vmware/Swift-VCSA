//
// VcenterCertificateManagementVcenterTlsCsrSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCertificateManagementVcenterTlsCsrSpec: Codable {

    /** The size of the key to be used for public and private key generation. If unset, the key size will be 3072 bits. */
    public var keySize: Int64?
    /** Common name field in certificate subject. If unset, the common name will be the PNID. */
    public var commonName: String?
    /** Organization field in certificate subject */
    public var organization: String
    /** Organization unit field in certificate subject */
    public var organizationUnit: String
    /** Locality field in certificate subject */
    public var locality: String
    /** State field in certificate subject */
    public var stateOrProvince: String
    /** Country field in certificate subject */
    public var country: String
    /** Email field in Certificate extensions */
    public var emailAddress: String
    /** Subject Alternative Name field is list of Dns Names and Ip addresses. If unset, the subject alternative name will contain the PNID. */
    public var subjectAltName: [String]?

    public init(keySize: Int64?, commonName: String?, organization: String, organizationUnit: String, locality: String, stateOrProvince: String, country: String, emailAddress: String, subjectAltName: [String]?) {
        self.keySize = keySize
        self.commonName = commonName
        self.organization = organization
        self.organizationUnit = organizationUnit
        self.locality = locality
        self.stateOrProvince = stateOrProvince
        self.country = country
        self.emailAddress = emailAddress
        self.subjectAltName = subjectAltName
    }

    public enum CodingKeys: String, CodingKey { 
        case keySize = "key_size"
        case commonName = "common_name"
        case organization
        case organizationUnit = "organization_unit"
        case locality
        case stateOrProvince = "state_or_province"
        case country
        case emailAddress = "email_address"
        case subjectAltName = "subject_alt_name"
    }


}

