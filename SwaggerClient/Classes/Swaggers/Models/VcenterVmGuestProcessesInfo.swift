//
// VcenterVmGuestProcessesInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestProcessesInfo: Codable {

    /** The process name. */
    public var name: String
    /** The process owner. */
    public var owner: String
    /** The full command line of the process. */
    public var command: String
    /** The start time of the process. */
    public var started: Date
    /** If the process was started using Processes.create then the process completion time will be available if queried within 5 minutes after it completes. Set if the process was started with Processes.create and has recently exited. */
    public var finished: Date?
    /** If the process was started using Processes.create then the process exit code will be available if queried within 5 minutes after it completes. Set if the process was started with Processes.create and has recently exited. */
    public var exitCode: Int64?

    public init(name: String, owner: String, command: String, started: Date, finished: Date?, exitCode: Int64?) {
        self.name = name
        self.owner = owner
        self.command = command
        self.started = started
        self.finished = finished
        self.exitCode = exitCode
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case owner
        case command
        case started
        case finished
        case exitCode = "exit_code"
    }


}
