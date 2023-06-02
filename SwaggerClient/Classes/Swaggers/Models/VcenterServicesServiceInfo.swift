//
// VcenterServicesServiceInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterServicesServiceInfo: Codable {

    /** Service name key. Can be used to lookup resource bundle */
    public var nameKey: String
    /** Service description key. Can be used to lookup resource bundle */
    public var descriptionKey: String
    /** Startup Type. */
    public var startupType: VcenterServicesServiceStartupType
    /** Running State. */
    public var state: VcenterServicesServiceState
    /** Health of service. This field is optional and it is only relevant when the value of Service.Info.state is STARTED. */
    public var health: VcenterServicesServiceHealth?
    /** Localizable messages associated with the health of the service This field is optional and it is only relevant when the value of Service.Info.state is STARTED. */
    public var healthMessages: [VapiStdLocalizableMessage]?

    public init(nameKey: String, descriptionKey: String, startupType: VcenterServicesServiceStartupType, state: VcenterServicesServiceState, health: VcenterServicesServiceHealth?, healthMessages: [VapiStdLocalizableMessage]?) {
        self.nameKey = nameKey
        self.descriptionKey = descriptionKey
        self.startupType = startupType
        self.state = state
        self.health = health
        self.healthMessages = healthMessages
    }

    public enum CodingKeys: String, CodingKey { 
        case nameKey = "name_key"
        case descriptionKey = "description_key"
        case startupType = "startup_type"
        case state
        case health
        case healthMessages = "health_messages"
    }


}

