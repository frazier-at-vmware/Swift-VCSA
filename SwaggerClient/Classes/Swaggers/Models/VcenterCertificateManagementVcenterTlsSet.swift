//
// VcenterCertificateManagementVcenterTlsSet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterCertificateManagementVcenterTlsSet: Codable {

    /** The information needed to replace the TLS certificate. */
    public var spec: VcenterCertificateManagementVcenterTlsSpec

    public init(spec: VcenterCertificateManagementVcenterTlsSpec) {
        self.spec = spec
    }


}
