//
// VcenterVmTemplateLibraryItemsEthernetInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmTemplateLibraryItemsEthernetInfo: Codable {

    /** Network backing type for the virtual Ethernet adapter. */
    public var backingType: VcenterVmTemplateLibraryItemsEthernetInfoNetworkBackingType
    /** MAC address type of the ethernet adapter. */
    public var macType: VcenterVmTemplateLibraryItemsEthernetInfoMacAddressType
    /** Identifier of the network backing the virtual Ethernet adapter. */
    public var network: String?

    public init(backingType: VcenterVmTemplateLibraryItemsEthernetInfoNetworkBackingType, macType: VcenterVmTemplateLibraryItemsEthernetInfoMacAddressType, network: String?) {
        self.backingType = backingType
        self.macType = macType
        self.network = network
    }

    public enum CodingKeys: String, CodingKey { 
        case backingType = "backing_type"
        case macType = "mac_type"
        case network
    }


}

