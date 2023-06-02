//
// TrustedInfrastructuretrustAuthorityClusterskmsprovidersclientCertificateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TrustedInfrastructuretrustAuthorityClusterskmsprovidersclientCertificateAPI {
    /**
     Generate a new self signed client certificate. Existing client certificate is overwritten. The key server will use this certificate to validate the client connection.
     
     - parameter cluster: (path) Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter provider: (path) Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createtask(cluster: String, provider: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createtaskWithRequestBuilder(cluster: cluster, provider: provider).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Generate a new self signed client certificate. Existing client certificate is overwritten. The key server will use this certificate to validate the client connection.
     - POST /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter cluster: (path) Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter provider: (path) Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. 

     - returns: RequestBuilder<String> 
     */
    open class func createtaskWithRequestBuilder(cluster: String, provider: String) -> RequestBuilder<String> {
        var path = "/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task=true"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let providerPreEscape = "\(provider)"
        let providerPostEscape = providerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provider}", with: providerPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Return the existing client certificate.
     
     - parameter cluster: (path) Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter provider: (path) Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func gettask(cluster: String, provider: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        gettaskWithRequestBuilder(cluster: cluster, provider: provider).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Return the existing client certificate.
     - GET /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter cluster: (path) Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter provider: (path) Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. 

     - returns: RequestBuilder<String> 
     */
    open class func gettaskWithRequestBuilder(cluster: String, provider: String) -> RequestBuilder<String> {
        var path = "/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task=true"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let providerPreEscape = "\(provider)"
        let providerPostEscape = providerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provider}", with: providerPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update the client certificate.   The key server will use this certificate to validate the client connection. If a client certificate already exists, it will be replaced.    An optional private key can be specified if the certificate has already been provisioned. 
     
     - parameter cluster: (path) Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter provider: (path) Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatetask(cluster: String, provider: String, requestBody: VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateTask? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        updatetaskWithRequestBuilder(cluster: cluster, provider: provider, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update the client certificate.   The key server will use this certificate to validate the client connection. If a client certificate already exists, it will be replaced.    An optional private key can be specified if the certificate has already been provisioned. 
     - PATCH /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter cluster: (path) Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter provider: (path) Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func updatetaskWithRequestBuilder(cluster: String, provider: String, requestBody: VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateTask? = nil) -> RequestBuilder<String> {
        var path = "/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task=true"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let providerPreEscape = "\(provider)"
        let providerPostEscape = providerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{provider}", with: providerPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}