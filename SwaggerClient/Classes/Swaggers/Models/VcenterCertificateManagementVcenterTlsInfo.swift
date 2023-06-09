//
// VcenterCertificateManagementVcenterTlsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCertificateManagementVcenterTlsInfo: Codable {

    /** Version (version number) value from the certificate. */
    public var version: Int64
    /** SerialNumber value from the certificate. */
    public var serialNumber: String
    /** Signature algorithm name from the certificate. */
    public var signatureAlgorithm: String
    /** Issuer (issuer distinguished name) value from the certificate. */
    public var issuerDn: String
    /** validFrom specify the start date of the certificate. */
    public var validFrom: Date
    /** validTo specify the end date of the certificate. */
    public var validTo: Date
    /** Subject (subject distinguished name) value from the certificate. */
    public var subjectDn: String
    /** Thumbprint value from the certificate. */
    public var thumbprint: String
    /** Certificate constraints isCA from the critical BasicConstraints extension, (OID &#x3D; 2.5.29.19). */
    public var isCA: Bool
    /** Certificate constraints path length from the critical BasicConstraints extension, (OID &#x3D; 2.5.29.19). */
    public var pathLengthConstraint: Int64
    /** Collection of keyusage contained in the certificate. */
    public var keyUsage: [String]
    /** Collection of extended keyusage that contains details for which the certificate can be used for. */
    public var extendedKeyUsage: [String]
    /** Collection of subject alternative names. */
    public var subjectAlternativeName: [String]
    /** Collection of authority information access URI. */
    public var authorityInformationAccessUri: [String]
    /** TLS certificate in PEM format. */
    public var cert: String

    public init(version: Int64, serialNumber: String, signatureAlgorithm: String, issuerDn: String, validFrom: Date, validTo: Date, subjectDn: String, thumbprint: String, isCA: Bool, pathLengthConstraint: Int64, keyUsage: [String], extendedKeyUsage: [String], subjectAlternativeName: [String], authorityInformationAccessUri: [String], cert: String) {
        self.version = version
        self.serialNumber = serialNumber
        self.signatureAlgorithm = signatureAlgorithm
        self.issuerDn = issuerDn
        self.validFrom = validFrom
        self.validTo = validTo
        self.subjectDn = subjectDn
        self.thumbprint = thumbprint
        self.isCA = isCA
        self.pathLengthConstraint = pathLengthConstraint
        self.keyUsage = keyUsage
        self.extendedKeyUsage = extendedKeyUsage
        self.subjectAlternativeName = subjectAlternativeName
        self.authorityInformationAccessUri = authorityInformationAccessUri
        self.cert = cert
    }

    public enum CodingKeys: String, CodingKey { 
        case version
        case serialNumber = "serial_number"
        case signatureAlgorithm = "signature_algorithm"
        case issuerDn = "issuer_dn"
        case validFrom = "valid_from"
        case validTo = "valid_to"
        case subjectDn = "subject_dn"
        case thumbprint
        case isCA = "is_CA"
        case pathLengthConstraint = "path_length_constraint"
        case keyUsage = "key_usage"
        case extendedKeyUsage = "extended_key_usage"
        case subjectAlternativeName = "subject_alternative_name"
        case authorityInformationAccessUri = "authority_information_access_uri"
        case cert
    }


}

