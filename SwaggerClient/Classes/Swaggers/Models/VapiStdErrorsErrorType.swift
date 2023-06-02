//
// VapiStdErrorsErrorType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Enumeration of all standard errors. Used as discriminator in protocols that have no standard means for transporting the error type, e.g. REST. */
public enum VapiStdErrorsErrorType: String, Codable {
    case error = "ERROR"
    case alreadyExists = "ALREADY_EXISTS"
    case alreadyInDesiredState = "ALREADY_IN_DESIRED_STATE"
    case canceled = "CANCELED"
    case concurrentChange = "CONCURRENT_CHANGE"
    case featureInUse = "FEATURE_IN_USE"
    case internalServerError = "INTERNAL_SERVER_ERROR"
    case invalidArgument = "INVALID_ARGUMENT"
    case invalidElementConfiguration = "INVALID_ELEMENT_CONFIGURATION"
    case invalidElementType = "INVALID_ELEMENT_TYPE"
    case invalidRequest = "INVALID_REQUEST"
    case notAllowedInCurrentState = "NOT_ALLOWED_IN_CURRENT_STATE"
    case notFound = "NOT_FOUND"
    case operationNotFound = "OPERATION_NOT_FOUND"
    case resourceBusy = "RESOURCE_BUSY"
    case resourceInUse = "RESOURCE_IN_USE"
    case resourceInaccessible = "RESOURCE_INACCESSIBLE"
    case serviceUnavailable = "SERVICE_UNAVAILABLE"
    case timedOut = "TIMED_OUT"
    case unableToAllocateResource = "UNABLE_TO_ALLOCATE_RESOURCE"
    case unauthenticated = "UNAUTHENTICATED"
    case unauthorized = "UNAUTHORIZED"
    case unexpectedInput = "UNEXPECTED_INPUT"
    case unsupported = "UNSUPPORTED"
    case unverifiedPeer = "UNVERIFIED_PEER"

}