//
// VcenterOvfLibraryItemCreateTarget.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterOvfLibraryItemCreateTarget: Codable {

    /** Identifier of the library in which a new library item should be created. This {@term field} is not used if the {@name #libraryItemId} {@term field} is specified. */
    public var libraryId: String?
    /** Identifier of the library item that should be should be updated. */
    public var libraryItemId: String?

    public init(libraryId: String?, libraryItemId: String?) {
        self.libraryId = libraryId
        self.libraryItemId = libraryItemId
    }

    public enum CodingKeys: String, CodingKey { 
        case libraryId = "library_id"
        case libraryItemId = "library_item_id"
    }


}

