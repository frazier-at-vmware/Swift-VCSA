//
// VcenterDeploymentNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentNotification: Codable {

    /** The notification id. */
    public var _id: String
    /** The time the notification was raised/found. Only set if the time information is available. */
    public var time: Date?
    /** The notification message. */
    public var message: VapiStdLocalizableMessage
    /** The resolution message, if any. Only set for warnings and errors. */
    public var resolution: VapiStdLocalizableMessage?

    public init(_id: String, time: Date?, message: VapiStdLocalizableMessage, resolution: VapiStdLocalizableMessage?) {
        self._id = _id
        self.time = time
        self.message = message
        self.resolution = resolution
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case time
        case message
        case resolution
    }


}
