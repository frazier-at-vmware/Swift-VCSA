//
// VcenterVmTemplateLibraryItemsCheckOutsCheckOutSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsCheckOutsCheckOutSpec: Codable {

    /** Name of the virtual machine to check out of the library item. */
    public var name: String?
    /** Information used to place the checked out virtual machine. */
    public var placement: VcenterVmTemplateLibraryItemsCheckOutsPlacementSpec?
    /** Specifies whether the virtual machine should be powered on after check out. */
    public var poweredOn: Bool?

    public init(name: String?, placement: VcenterVmTemplateLibraryItemsCheckOutsPlacementSpec?, poweredOn: Bool?) {
        self.name = name
        self.placement = placement
        self.poweredOn = poweredOn
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case placement
        case poweredOn = "powered_on"
    }


}
