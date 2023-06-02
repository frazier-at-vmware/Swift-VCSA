//
// VcenterVmGuestCredentials.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterVmGuestCredentials: Codable {

    /** If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. */
    public var interactiveSession: Bool
    /** The guest credentials type */
    public var type: VcenterVmGuestCredentialsType
    /** For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. */
    public var userName: String?
    /** password This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. */
    public var password: String?
    /** SAML Bearer Token This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. */
    public var samlToken: String?

    public init(interactiveSession: Bool, type: VcenterVmGuestCredentialsType, userName: String?, password: String?, samlToken: String?) {
        self.interactiveSession = interactiveSession
        self.type = type
        self.userName = userName
        self.password = password
        self.samlToken = samlToken
    }

    public enum CodingKeys: String, CodingKey { 
        case interactiveSession = "interactive_session"
        case type
        case userName = "user_name"
        case password
        case samlToken = "saml_token"
    }


}

