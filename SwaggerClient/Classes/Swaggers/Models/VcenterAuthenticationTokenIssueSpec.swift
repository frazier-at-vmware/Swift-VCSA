//
// VcenterAuthenticationTokenIssueSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterAuthenticationTokenIssueSpec: Codable {

    /** The value of urn:ietf:params:oauth:grant-type:token-exchange indicates that a token exchange is being performed. When clients pass a value of this structure as a parameter, the field must be one of urn:ietf:params:oauth:grant-type:token-exchange. When operations return a value of this structure as a result, the field will be one of urn:ietf:params:oauth:grant-type:token-exchange. */
    public var grantType: String
    /** Indicates the location of the target service or resource where the client intends to use the requested security token. If unset, it is inferred from other arguments. */
    public var resource: String?
    /** The logical name of the target service where the client intends to use the requested security token. This serves a purpose similar to the Token.IssueSpec.resource field, but with the client providing a logical name rather than a location. If unset, it is inferred from other arguments. */
    public var audience: String?
    /** A list of space-delimited, case-sensitive strings, that allow the client to specify the desired scope of the requested security token in the context of the service or resource where the token will be used. If unset, it is inferred from other arguments. */
    public var scope: String?
    /** An identifier for the type of the requested security token. If the requested type is unspecified, the issued token type is at the discretion of the server and may be dictated by knowledge of the requirements of the service or resource indicated by the Token.IssueSpec.resource or Token.IssueSpec.audience field. If unset, it is inferred from other arguments. */
    public var requestedTokenType: String?
    /** A security token that represents the identity of the party on behalf of whom exchange is being made. Typically, the subject of this token will be the subject of the security token issued. Token is base64-encoded.  The field is required when the value of the Token.IssueSpec.grant-type field is urn:ietf:params:oauth:grant-type:token-exchange.  This field is currently required. In the future, the structure may support grant-types other than urn:ietf:params:oauth:grant-type:token-exchange for which the value may be unset. */
    public var subjectToken: String?
    /** An identifier, that indicates the type of the security token in the Token.IssueSpec.subject-token field.  The field is required when the value of the Token.IssueSpec.grant-type field is urn:ietf:params:oauth:grant-type:token-exchange.  This field is currently required. In the future, the structure may support grant-types other than urn:ietf:params:oauth:grant-type:token-exchange for which the value may be unset. */
    public var subjectTokenType: String?
    /** A security token that represents the identity of the acting party. Typically, this will be the party that is authorized to use the requested security token and act on behalf of the subject. unset if not needed for the specific case of exchange. */
    public var actorToken: String?
    /** An identifier, that indicates the type of the security token in the Token.IssueSpec.actor-token field. unset if Token.IssueSpec.actor-token field is not present. */
    public var actorTokenType: String?

    public init(grantType: String, resource: String?, audience: String?, scope: String?, requestedTokenType: String?, subjectToken: String?, subjectTokenType: String?, actorToken: String?, actorTokenType: String?) {
        self.grantType = grantType
        self.resource = resource
        self.audience = audience
        self.scope = scope
        self.requestedTokenType = requestedTokenType
        self.subjectToken = subjectToken
        self.subjectTokenType = subjectTokenType
        self.actorToken = actorToken
        self.actorTokenType = actorTokenType
    }

    public enum CodingKeys: String, CodingKey { 
        case grantType = "grant_type"
        case resource
        case audience
        case scope
        case requestedTokenType = "requested_token_type"
        case subjectToken = "subject_token"
        case subjectTokenType = "subject_token_type"
        case actorToken = "actor_token"
        case actorTokenType = "actor_token_type"
    }


}

