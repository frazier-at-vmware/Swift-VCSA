//
// VapiStdLocalizableMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VapiStdLocalizableMessage: Codable {

    /** Unique identifier of the localizable string or message template.   This identifier is typically used to retrieve a locale-specific string or message template from a message catalog.  */
    public var _id: String
    /** The value of this localizable string or message template in the en_US (English) locale. If LocalizableMessage.id refers to a message template, the default message will contain the substituted arguments. This value can be used by clients that do not need to display strings and messages in the native language of the user. It could also be used as a fallback if a client is unable to access the appropriate message catalog. */
    public var defaultMessage: String
    /** Positional arguments to be substituted into the message template. This list will be empty if the message uses named arguments or has no arguments. */
    public var args: [String]
    /** Named arguments to be substituted into the message template. Unset means that the message template requires no arguments or positional arguments are used. */
    public var params: [VapiStdLocalizableMessageParams]?
    /** Localized string value as per request requirements. when the client has not requested specific locale the implementation may not populate this field to conserve resources. */
    public var localized: String?

    public init(_id: String, defaultMessage: String, args: [String], params: [VapiStdLocalizableMessageParams]?, localized: String?) {
        self._id = _id
        self.defaultMessage = defaultMessage
        self.args = args
        self.params = params
        self.localized = localized
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case defaultMessage = "default_message"
        case args
        case params
        case localized
    }


}

