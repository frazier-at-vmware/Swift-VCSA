//
// VcenterDeploymentImportHistoryStart.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterDeploymentImportHistoryStart: Codable {

    /** An optional ImportHistory.CreateSpec info that can be passed for creating a new historical data import task and starts it. If unset, default value will be:     - name : vcenter.deployment.history.import    - description : vCenter Server history import  */
    public var spec: VcenterDeploymentImportHistoryCreateSpec?

    public init(spec: VcenterDeploymentImportHistoryCreateSpec?) {
        self.spec = spec
    }


}

