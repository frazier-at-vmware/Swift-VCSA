//
// VcenterCertificateManagementVcenterTlsCsrCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCertificateManagementVcenterTlsCsrCreate: Codable {

    /** The information needed to create a CSR. */
    public var spec: VcenterCertificateManagementVcenterTlsCsrSpec

    public init(spec: VcenterCertificateManagementVcenterTlsCsrSpec) {
        self.spec = spec
    }


}

