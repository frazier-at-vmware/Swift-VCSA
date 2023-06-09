//
// VcenterHvcManagementAdministratorsRemove.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterHvcManagementAdministratorsRemove: Codable {

    /** Name of the group to be removed. Ex - xyz@abc.com where xyz is the group name and abc.com is the domain name */
    public var groupName: String

    public init(groupName: String) {
        self.groupName = groupName
    }

    public enum CodingKeys: String, CodingKey { 
        case groupName = "group_name"
    }


}

