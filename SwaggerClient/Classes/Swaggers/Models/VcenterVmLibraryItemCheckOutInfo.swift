//
// VcenterVmLibraryItemCheckOutInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmLibraryItemCheckOutInfo: Codable {

    /** Identifier of the library item that the virtual machine is checked out from. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: content.library.Item. When operations return a value of this structure as a result, the field will be an identifier for the resource type: content.library.Item. */
    public var libraryItem: String

    public init(libraryItem: String) {
        self.libraryItem = libraryItem
    }

    public enum CodingKeys: String, CodingKey { 
        case libraryItem = "library_item"
    }


}

