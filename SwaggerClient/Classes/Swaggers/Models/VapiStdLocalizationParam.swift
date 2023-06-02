//
// VapiStdLocalizationParam.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VapiStdLocalizationParam: Codable {

    /** String value associated with the parameter. this field will be set when string value is used. */
    public var s: String?
    /** Date and time value associated with the parameter. Use the LocalizationParam.format field to specify date and time display style. this field will be set when date and time value is used. */
    public var dt: Date?
    /** long value associated with the parameter. this field will be set when long value is used. */
    public var i: Int64?
    /** The double value associated with the parameter. The number of displayed fractional digits is changed via LocalizationParam.precision field. this field will be set when double value is used. */
    public var d: Double?
    /** Nested localizable value associated with the parameter. This is useful construct to convert to human readable localized form enumerated type and boolean values. It can also be used for proper handling of pluralization and gender forms in localization. Recursive NestedLocalizableMessage instances can be used for localizing short lists of items. this field will be set when nested localization message value is used. */
    public var l: VapiStdNestedLocalizableMessage?
    /** Format associated with the date and time value in LocalizationParam.dt field. The enumeration value SHORT_DATETIME will be used as default. this may not be set if enumeration value SHORT_DATETIME default format is appropriate */
    public var format: VapiStdLocalizationParamDateTimeFormat?
    /** Number of fractional digits to include in formatted double value. this will be set when exact precision is required for rendering double numbers. */
    public var precision: Int64?

    public init(s: String?, dt: Date?, i: Int64?, d: Double?, l: VapiStdNestedLocalizableMessage?, format: VapiStdLocalizationParamDateTimeFormat?, precision: Int64?) {
        self.s = s
        self.dt = dt
        self.i = i
        self.d = d
        self.l = l
        self.format = format
        self.precision = precision
    }


}

