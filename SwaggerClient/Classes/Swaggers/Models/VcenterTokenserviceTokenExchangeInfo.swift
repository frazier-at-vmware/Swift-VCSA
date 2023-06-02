//
// VcenterTokenserviceTokenExchangeInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterTokenserviceTokenExchangeInfo: Codable {

    /** The security token issued by the server in response to the token exchange request. Token is base64-encoded. */
    public var accessToken: String
    /** An identifier, that indicates the type of the security token in the {@link Info#access_token} parameter. */
    public var issuedTokenType: String
    /** A case-insensitive value specifying the method of using the access token issued. */
    public var tokenType: String
    /** The validity lifetime, in seconds, of the token issued by the server. */
    public var expiresIn: Int64?
    /** Scope of the issued security token. */
    public var scope: String?
    /** A refresh token can be issued in cases where the client of the token exchange needs the ability to access a resource even when the original credential is no longer valid. */
    public var refreshToken: String?

    public init(accessToken: String, issuedTokenType: String, tokenType: String, expiresIn: Int64?, scope: String?, refreshToken: String?) {
        self.accessToken = accessToken
        self.issuedTokenType = issuedTokenType
        self.tokenType = tokenType
        self.expiresIn = expiresIn
        self.scope = scope
        self.refreshToken = refreshToken
    }

    public enum CodingKeys: String, CodingKey { 
        case accessToken = "access_token"
        case issuedTokenType = "issued_token_type"
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case scope
        case refreshToken = "refresh_token"
    }


}

