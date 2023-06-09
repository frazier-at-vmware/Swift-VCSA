//
// VcenterVmGuestFilesystemFilesList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestFilesystemFilesList: Codable {

    /** The guest authentication data. */
    public var credentials: VcenterVmGuestCredentials
    /** The complete path to the directory or file to query. */
    public var path: String
    /** The specification of a page of results to be retrieved. If unset, the first page will be retrieved. */
    public var iteration: VcenterVmGuestFilesystemFilesIterationSpec?
    /** Specification to match files for which information should be returned. If unset, the behavior is the equivalent to a Files.FilterSpec with all fields unset which means all filenames match the filter. */
    public var filter: VcenterVmGuestFilesystemFilesFilterSpec?

    public init(credentials: VcenterVmGuestCredentials, path: String, iteration: VcenterVmGuestFilesystemFilesIterationSpec?, filter: VcenterVmGuestFilesystemFilesFilterSpec?) {
        self.credentials = credentials
        self.path = path
        self.iteration = iteration
        self.filter = filter
    }


}

