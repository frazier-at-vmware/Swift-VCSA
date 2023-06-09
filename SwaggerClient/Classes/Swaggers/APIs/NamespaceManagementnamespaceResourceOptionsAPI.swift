//
// NamespaceManagementnamespaceResourceOptionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class NamespaceManagementnamespaceResourceOptionsAPI {
    /**
     Get the information about the objects used to set and update resource quota keys for version of Kubernetes running on {#link cluster}. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
     
     - parameter cluster: (path) Identifier for the cluster hosting the namespace on which the resource quota needs to be set. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(cluster: String, completion: @escaping ((_ data: VcenterNamespaceManagementNamespaceResourceOptionsInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(cluster: cluster).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the information about the objects used to set and update resource quota keys for version of Kubernetes running on {#link cluster}. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
     - GET /api/vcenter/namespace-management/clusters/{cluster}/workload-resource-options
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter cluster: (path) Identifier for the cluster hosting the namespace on which the resource quota needs to be set. The parameter must be an identifier for the resource type: ClusterComputeResource. 

     - returns: RequestBuilder<VcenterNamespaceManagementNamespaceResourceOptionsInfo> 
     */
    open class func callGetWithRequestBuilder(cluster: String) -> RequestBuilder<VcenterNamespaceManagementNamespaceResourceOptionsInfo> {
        var path = "/api/vcenter/namespace-management/clusters/{cluster}/workload-resource-options"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterNamespaceManagementNamespaceResourceOptionsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
