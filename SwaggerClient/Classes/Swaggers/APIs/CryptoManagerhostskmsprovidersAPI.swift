//
// CryptoManagerhostskmsprovidersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CryptoManagerhostskmsprovidersAPI {
    /**
     Get a provider on a host. if you do not have all of the privileges described as follows:     -  The resource HostSystem referenced by the parameter host requires Cryptographer.ReadKeyServersInfo.  
     
     - parameter host: (path) Host identifier. The parameter must be an identifier for the resource type: HostSystem. 
     - parameter provider: (path) Provider identifier. The parameter must be an identifier for the resource type: vcenter.crypto_manager.kms.provider. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(host: String, provider: String, completion: @escaping ((_ data: VcenterCryptoManagerHostsKmsProvidersInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(host: host, provider: provider).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a provider on a host. if you do not have all of the privileges described as follows:     -  The resource HostSystem referenced by the parameter host requires Cryptographer.ReadKeyServersInfo.  
     - GET /api/vcenter/crypto-manager/hosts/{host}/kms/providers/{provider}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter host: (path) Host identifier. The parameter must be an identifier for the resource type: HostSystem. 
     - parameter provider: (path) Provider identifier. The parameter must be an identifier for the resource type: vcenter.crypto_manager.kms.provider. 

     - returns: RequestBuilder<VcenterCryptoManagerHostsKmsProvidersInfo> 
     */
    open class func callGetWithRequestBuilder(host: String, provider: String) -> RequestBuilder<VcenterCryptoManagerHostsKmsProvidersInfo> {
        var path = "/api/vcenter/crypto-manager/hosts/{host}/kms/providers/{provider}"
        let hostPreEscape = "\(host)"
        let hostPostEscape = hostPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{host}", with: hostPostEscape, options: .literal, range: nil)
        let providerPreEscape = "\(provider)"
        let providerPostEscape = providerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provider}", with: providerPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterCryptoManagerHostsKmsProvidersInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter health
     */
    public enum Health_list: String { 
        case _none = "NONE"
        case ok = "OK"
        case warning = "WARNING"
        case error = "ERROR"
    }

    /**
     * enum for parameter types
     */
    public enum Types_list: String { 
        case native = "NATIVE"
        case trustAuthority = "TRUST_AUTHORITY"
    }

    /**
     List the available providers on a host. if you do not have all of the privileges described as follows:     -  The resource HostSystem referenced by the parameter host requires Cryptographer.ReadKeyServersInfo.  
     
     - parameter host: (path) Host identifier. The parameter must be an identifier for the resource type: HostSystem. 
     - parameter providers: (query) Provider identifiers. If unset or empty, the result will not be filtered by provider identifier. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.crypto_manager.kms.provider. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.crypto_manager.kms.provider. (optional)
     - parameter health: (query) Provider health status. If unset or empty, the result will not be filtered by provider health status. (optional)
     - parameter types: (query) Provider types. If unset or empty, the result will not be filtered by provider type. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(host: String, providers: [String]? = nil, health: [String]? = nil, types: [String]? = nil, completion: @escaping ((_ data: [VcenterCryptoManagerHostsKmsProvidersSummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder(host: host, providers: providers, health: health, types: types).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List the available providers on a host. if you do not have all of the privileges described as follows:     -  The resource HostSystem referenced by the parameter host requires Cryptographer.ReadKeyServersInfo.  
     - GET /api/vcenter/crypto-manager/hosts/{host}/kms/providers
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter host: (path) Host identifier. The parameter must be an identifier for the resource type: HostSystem. 
     - parameter providers: (query) Provider identifiers. If unset or empty, the result will not be filtered by provider identifier. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.crypto_manager.kms.provider. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.crypto_manager.kms.provider. (optional)
     - parameter health: (query) Provider health status. If unset or empty, the result will not be filtered by provider health status. (optional)
     - parameter types: (query) Provider types. If unset or empty, the result will not be filtered by provider type. (optional)

     - returns: RequestBuilder<[VcenterCryptoManagerHostsKmsProvidersSummary]> 
     */
    open class func listWithRequestBuilder(host: String, providers: [String]? = nil, health: [String]? = nil, types: [String]? = nil) -> RequestBuilder<[VcenterCryptoManagerHostsKmsProvidersSummary]> {
        var path = "/api/vcenter/crypto-manager/hosts/{host}/kms/providers"
        let hostPreEscape = "\(host)"
        let hostPostEscape = hostPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{host}", with: hostPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "providers": providers, 
            "health": health, 
            "types": types
        ])

        let requestBuilder: RequestBuilder<[VcenterCryptoManagerHostsKmsProvidersSummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
