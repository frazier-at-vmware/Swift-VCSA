//
// TrustedInfrastructuretrustedClustersservicesAppliedConfigAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TrustedInfrastructuretrustedClustersservicesAppliedConfigAPI {
    /**
     Delete all Trust Authority Components configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Trust Authority Component configurations from any Trusted Hosts within the given cluster.
     
     - parameter cluster: (path) The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletetask(cluster: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        deletetaskWithRequestBuilder(cluster: cluster).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete all Trust Authority Components configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Trust Authority Component configurations from any Trusted Hosts within the given cluster.
     - DELETE /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/services-applied-config?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter cluster: (path) The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. 

     - returns: RequestBuilder<String> 
     */
    open class func deletetaskWithRequestBuilder(cluster: String) -> RequestBuilder<String> {
        var path = "/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/services-applied-config?vmw-task=true"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns detailed information about the health of the applied Trust Authority Component configurations in the given cluster.
     
     - parameter cluster: (path) The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func gettask(cluster: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        gettaskWithRequestBuilder(cluster: cluster).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns detailed information about the health of the applied Trust Authority Component configurations in the given cluster.
     - GET /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/services-applied-config?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter cluster: (path) The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. 

     - returns: RequestBuilder<String> 
     */
    open class func gettaskWithRequestBuilder(cluster: String) -> RequestBuilder<String> {
        var path = "/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/services-applied-config?vmw-task=true"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update all applied Trust Authority Component configuration on the given cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will remove all Trust Authority Component configuration from the Trusted Hosts in the cluster, if such hosts are found.
     
     - parameter cluster: (path) The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatetask(cluster: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        updatetaskWithRequestBuilder(cluster: cluster).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update all applied Trust Authority Component configuration on the given cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will remove all Trust Authority Component configuration from the Trusted Hosts in the cluster, if such hosts are found.
     - PATCH /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/services-applied-config?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter cluster: (path) The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. 

     - returns: RequestBuilder<String> 
     */
    open class func updatetaskWithRequestBuilder(cluster: String) -> RequestBuilder<String> {
        var path = "/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/services-applied-config?vmw-task=true"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
