//
// VcenterGuestHostnameGeneratorType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The HostnameGenerator.Type enumerated type specifies different types of Name Generators. */
public enum VcenterGuestHostnameGeneratorType: String, Codable {
    case fixed = "FIXED"
    case _prefix = "PREFIX"
    case virtualMachine = "VIRTUAL_MACHINE"
    case userInputRequired = "USER_INPUT_REQUIRED"

}
