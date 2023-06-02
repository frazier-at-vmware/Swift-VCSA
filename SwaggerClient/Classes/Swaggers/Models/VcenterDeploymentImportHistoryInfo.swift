//
// VcenterDeploymentImportHistoryInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentImportHistoryInfo: Codable {

    /** The progress info of this task. This field is optional and it is only relevant when the value of CommonInfo#status is one of RUNNING, FAILED, BLOCKED, or SUCCEEDED. */
    public var progress: CisTaskProgress?
    /** Result of the operation. If an operation reports partial results before it completes, this field could be set before the cis.task.CommonInfo#status has the value SUCCEEDED. The value could change as the operation progresses. This field will be unset if result is not available at the current step of the operation. */
    public var result: VcenterDeploymentNotifications?
    /** Description of the operation associated with the task. */
    public var _description: VapiStdLocalizableMessage
    /** Identifier of the service containing the operation. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.service. */
    public var service: String
    /** Identifier of the operation associated with the task. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.operation. */
    public var operation: String
    /** Parent of the current task. This field will be unset if the task has no parent. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: cis.task. When operations return a value of this structure as a result, the field will be an identifier for the resource type: cis.task. */
    public var parent: String?
    /** Identifier of the target created by the operation or an existing one the operation performed on. This field will be unset if the operation has no target or multiple targets. */
    public var target: VapiStdDynamicID?
    /** Status of the operation associated with the task. */
    public var status: CisTaskStatus
    /** Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. */
    public var cancelable: Bool
    /** Description of the error if the operation status is \&quot;FAILED\&quot;. If unset the description of why the operation failed will be included in the result of the operation (see Info.result). */
    public var error: String?
    /** Time when the operation is started. This field is optional and it is only relevant when the value of CommonInfo.status is one of RUNNING, BLOCKED, SUCCEEDED, or FAILED. */
    public var startTime: Date?
    /** Time when the operation is completed. This field is optional and it is only relevant when the value of CommonInfo.status is one of SUCCEEDED or FAILED. */
    public var endTime: Date?
    /** Name of the user who performed the operation. This field will be unset if the operation is performed by the system. */
    public var user: String?

    public init(progress: CisTaskProgress?, result: VcenterDeploymentNotifications?, _description: VapiStdLocalizableMessage, service: String, operation: String, parent: String?, target: VapiStdDynamicID?, status: CisTaskStatus, cancelable: Bool, error: String?, startTime: Date?, endTime: Date?, user: String?) {
        self.progress = progress
        self.result = result
        self._description = _description
        self.service = service
        self.operation = operation
        self.parent = parent
        self.target = target
        self.status = status
        self.cancelable = cancelable
        self.error = error
        self.startTime = startTime
        self.endTime = endTime
        self.user = user
    }

    public enum CodingKeys: String, CodingKey { 
        case progress
        case result
        case _description = "description"
        case service
        case operation
        case parent
        case target
        case status
        case cancelable
        case error
        case startTime = "start_time"
        case endTime = "end_time"
        case user
    }


}

