//
// NamespaceManagementsupportBundleAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class NamespaceManagementsupportBundleAPI {
    /**
     Returns the location SupportBundle.Location information for downloading the Namespaces-related support bundle for the specified cluster.   Retrieving a support bundle involves two steps:      - Step 1: Invoke operation to provision a token and a URI.    - Step 2: Make an HTTP GET request using URI and one time used token returned in step 1 to generate the support bundle and return it.   There can only be one valid token per cluster at any given time. If this operation is invoked again for the same cluster identifier while a token still valid, the API will return the same SupportBundle.Location response.   The HTTP GET request will:      -  return 401 (Not Authorized) if the download URL is recognized, but the token is invalid.    -  otherwise return 200 (OK), mark the token used (invalidating it for any future use), open a application/tar download stream for the client, and start the bundle process. As part of its work, the API will orchestrate support bundling on the worker nodes of a cluster. If a failure occurs during the collection of support bundle from worker node, the API will not abort the request, but will log a warning and move on to processing other worker nodes' bundles. The API will only abort its operation if the content of the stream has been corrupted. When the API has to abort its operation (and the response stream), it will not provide any indication of failures to the client. The client will need to verify validity of the resultant file based on the format specified in the response's Content-Disposition header.   if you do not have all of the privileges described as follows:     -  Operation execution requires Global.Diagnostics.  
     
     - parameter cluster: (path) Identifier of cluster for which the Namespaces-related support bundle should be generated. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(cluster: String, completion: @escaping ((_ data: VcenterNamespaceManagementSupportBundleLocation?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(cluster: cluster).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns the location SupportBundle.Location information for downloading the Namespaces-related support bundle for the specified cluster.   Retrieving a support bundle involves two steps:      - Step 1: Invoke operation to provision a token and a URI.    - Step 2: Make an HTTP GET request using URI and one time used token returned in step 1 to generate the support bundle and return it.   There can only be one valid token per cluster at any given time. If this operation is invoked again for the same cluster identifier while a token still valid, the API will return the same SupportBundle.Location response.   The HTTP GET request will:      -  return 401 (Not Authorized) if the download URL is recognized, but the token is invalid.    -  otherwise return 200 (OK), mark the token used (invalidating it for any future use), open a application/tar download stream for the client, and start the bundle process. As part of its work, the API will orchestrate support bundling on the worker nodes of a cluster. If a failure occurs during the collection of support bundle from worker node, the API will not abort the request, but will log a warning and move on to processing other worker nodes' bundles. The API will only abort its operation if the content of the stream has been corrupted. When the API has to abort its operation (and the response stream), it will not provide any indication of failures to the client. The client will need to verify validity of the resultant file based on the format specified in the response's Content-Disposition header.   if you do not have all of the privileges described as follows:     -  Operation execution requires Global.Diagnostics.  
     - POST /api/vcenter/namespace-management/clusters/{cluster}/support-bundle
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter cluster: (path) Identifier of cluster for which the Namespaces-related support bundle should be generated. The parameter must be an identifier for the resource type: ClusterComputeResource. 

     - returns: RequestBuilder<VcenterNamespaceManagementSupportBundleLocation> 
     */
    open class func createWithRequestBuilder(cluster: String) -> RequestBuilder<VcenterNamespaceManagementSupportBundleLocation> {
        var path = "/api/vcenter/namespace-management/clusters/{cluster}/support-bundle"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterNamespaceManagementSupportBundleLocation>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
