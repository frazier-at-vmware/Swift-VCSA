//
// VcenterSystemConfigDeploymentTypeReconfigureSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterSystemConfigDeploymentTypeReconfigureSpec: Codable {

    /** The type of the appliance. */
    public var type: VcenterDeploymentApplianceType
    /** External PSC to register with when reconfiguring a VCSA_EMBEDDED appliance to a VCSA_EXTERNAL appliance. Only required when reconfiguring an VCSA_EMBEDDED node to a VCSA_EXTERNAL. */
    public var remotePsc: VcenterDeploymentRemotePscSpec?

    public init(type: VcenterDeploymentApplianceType, remotePsc: VcenterDeploymentRemotePscSpec?) {
        self.type = type
        self.remotePsc = remotePsc
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case remotePsc = "remote_psc"
    }


}

