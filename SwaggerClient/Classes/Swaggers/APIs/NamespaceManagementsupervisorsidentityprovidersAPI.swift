//
// NamespaceManagementsupervisorsidentityprovidersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class NamespaceManagementsupervisorsidentityprovidersAPI {
    /**
     Returns information about an identity provider configured for a Supervisor.
     
     - parameter supervisor: (path) identifier for the Supervisor for which the identity provider is being read. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter provider: (path) identifier for the identity provider that is being read. The parameter must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(supervisor: String, provider: String, completion: @escaping ((_ data: VcenterNamespaceManagementSupervisorsIdentityProvidersInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(supervisor: supervisor, provider: provider).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about an identity provider configured for a Supervisor.
     - GET /api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers/{provider}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter supervisor: (path) identifier for the Supervisor for which the identity provider is being read. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter provider: (path) identifier for the identity provider that is being read. The parameter must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. 

     - returns: RequestBuilder<VcenterNamespaceManagementSupervisorsIdentityProvidersInfo> 
     */
    open class func callGetWithRequestBuilder(supervisor: String, provider: String) -> RequestBuilder<VcenterNamespaceManagementSupervisorsIdentityProvidersInfo> {
        var path = "/api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers/{provider}"
        let supervisorPreEscape = "\(supervisor)"
        let supervisorPostEscape = supervisorPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supervisor}", with: supervisorPostEscape, options: .literal, range: nil)
        let providerPreEscape = "\(provider)"
        let providerPostEscape = providerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provider}", with: providerPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterNamespaceManagementSupervisorsIdentityProvidersInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update the entire configuration for an existing identity provider used with a Supervisor.
     
     - parameter supervisor: (path) the identifier for the Supervisor associated with the identity provider to be updated. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter provider: (path) the identifier for the identity provider that is to be updated. The parameter must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callSet(supervisor: String, provider: String, requestBody: VcenterNamespaceManagementSupervisorsIdentityProvidersSet? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        callSetWithRequestBuilder(supervisor: supervisor, provider: provider, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update the entire configuration for an existing identity provider used with a Supervisor.
     - PUT /api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers/{provider}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter supervisor: (path) the identifier for the Supervisor associated with the identity provider to be updated. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter provider: (path) the identifier for the identity provider that is to be updated. The parameter must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func callSetWithRequestBuilder(supervisor: String, provider: String, requestBody: VcenterNamespaceManagementSupervisorsIdentityProvidersSet? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers/{provider}"
        let supervisorPreEscape = "\(supervisor)"
        let supervisorPostEscape = supervisorPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supervisor}", with: supervisorPostEscape, options: .literal, range: nil)
        let providerPreEscape = "\(provider)"
        let providerPostEscape = providerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provider}", with: providerPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a new identity provider to be used with a Supervisor. Currently, only a single identity provider can be created.
     
     - parameter supervisor: (path) the Supervisor for which the identity provider is being registered. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(supervisor: String, requestBody: VcenterNamespaceManagementSupervisorsIdentityProvidersCreate? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(supervisor: supervisor, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a new identity provider to be used with a Supervisor. Currently, only a single identity provider can be created.
     - POST /api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter supervisor: (path) the Supervisor for which the identity provider is being registered. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createWithRequestBuilder(supervisor: String, requestBody: VcenterNamespaceManagementSupervisorsIdentityProvidersCreate? = nil) -> RequestBuilder<String> {
        var path = "/api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers"
        let supervisorPreEscape = "\(supervisor)"
        let supervisorPostEscape = supervisorPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supervisor}", with: supervisorPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Remove an identity provider configured with a given Supervisor. This will result in users no longer being able to log in to either the Supervisor or any of its workload clusters with that identity provider.
     
     - parameter supervisor: (path) the identifier of the Supervisor which is associated with the identity provider being removed. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter provider: (path) the identifier for the identity provider that is to be deleted. The parameter must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func delete(supervisor: String, provider: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteWithRequestBuilder(supervisor: supervisor, provider: provider).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Remove an identity provider configured with a given Supervisor. This will result in users no longer being able to log in to either the Supervisor or any of its workload clusters with that identity provider.
     - DELETE /api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers/{provider}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter supervisor: (path) the identifier of the Supervisor which is associated with the identity provider being removed. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter provider: (path) the identifier for the identity provider that is to be deleted. The parameter must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(supervisor: String, provider: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers/{provider}"
        let supervisorPreEscape = "\(supervisor)"
        let supervisorPostEscape = supervisorPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supervisor}", with: supervisorPostEscape, options: .literal, range: nil)
        let providerPreEscape = "\(provider)"
        let providerPostEscape = providerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provider}", with: providerPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List the identity providers configured for a given Supervisor.
     
     - parameter supervisor: (path) the Supervisor for which identity providers are being listed. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(supervisor: String, completion: @escaping ((_ data: [VcenterNamespaceManagementSupervisorsIdentityProvidersSummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder(supervisor: supervisor).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List the identity providers configured for a given Supervisor.
     - GET /api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter supervisor: (path) the Supervisor for which identity providers are being listed. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 

     - returns: RequestBuilder<[VcenterNamespaceManagementSupervisorsIdentityProvidersSummary]> 
     */
    open class func listWithRequestBuilder(supervisor: String) -> RequestBuilder<[VcenterNamespaceManagementSupervisorsIdentityProvidersSummary]> {
        var path = "/api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers"
        let supervisorPreEscape = "\(supervisor)"
        let supervisorPostEscape = supervisorPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supervisor}", with: supervisorPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterNamespaceManagementSupervisorsIdentityProvidersSummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an existing identity provider used with a Supervisor.
     
     - parameter supervisor: (path) the identifier for the Supervisor associated with the identity provider to be updated. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter provider: (path) the identifier for the identity provider that is to be updated. The parameter must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(supervisor: String, provider: String, requestBody: VcenterNamespaceManagementSupervisorsIdentityProvidersUpdate? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(supervisor: supervisor, provider: provider, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update an existing identity provider used with a Supervisor.
     - PATCH /api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers/{provider}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter supervisor: (path) the identifier for the Supervisor associated with the identity provider to be updated. The parameter must be an identifier for the resource type: vcenter.namespace_management.supervisor.Supervisor. 
     - parameter provider: (path) the identifier for the identity provider that is to be updated. The parameter must be an identifier for the resource type: vcenter.namespace_management.identity.Provider. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateWithRequestBuilder(supervisor: String, provider: String, requestBody: VcenterNamespaceManagementSupervisorsIdentityProvidersUpdate? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/namespace-management/supervisors/{supervisor}/identity/providers/{provider}"
        let supervisorPreEscape = "\(supervisor)"
        let supervisorPostEscape = supervisorPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supervisor}", with: supervisorPostEscape, options: .literal, range: nil)
        let providerPreEscape = "\(provider)"
        let providerPostEscape = providerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provider}", with: providerPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
