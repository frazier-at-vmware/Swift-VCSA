//
// VcenterVmTemplateLibraryItemsCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsCreate: Codable {

    /** information used to create the library item from the source virtual machine. */
    public var spec: VcenterVmTemplateLibraryItemsCreateSpec

    public init(spec: VcenterVmTemplateLibraryItemsCreateSpec) {
        self.spec = spec
    }


}

