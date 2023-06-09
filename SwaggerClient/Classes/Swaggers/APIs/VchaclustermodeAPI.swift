//
// VchaclustermodeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VchaclustermodeAPI {
    /**
     Retrieves the current mode of a VCHA cluster.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(completion: @escaping ((_ data: VcenterVchaClusterModeInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieves the current mode of a VCHA cluster.
     - GET /api/vcenter/vcha/cluster/mode
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterVchaClusterModeInfo> 
     */
    open class func callGetWithRequestBuilder() -> RequestBuilder<VcenterVchaClusterModeInfo> {
        let path = "/api/vcenter/vcha/cluster/mode"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVchaClusterModeInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieves the current mode of a VCHA cluster.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(completion: @escaping ((_ data: VcenterVchaClusterModeResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieves the current mode of a VCHA cluster.
     - GET /rest/vcenter/vcha/cluster/mode
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterVchaClusterModeResp> 
     */
    open class func callGet_0WithRequestBuilder() -> RequestBuilder<VcenterVchaClusterModeResp> {
        let path = "/rest/vcenter/vcha/cluster/mode"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVchaClusterModeResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func settask(requestBody: VcenterVchaClusterModeSetTask, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        settaskWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
     - PUT /api/vcenter/vcha/cluster/mode?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<String> 
     */
    open class func settaskWithRequestBuilder(requestBody: VcenterVchaClusterModeSetTask) -> RequestBuilder<String> {
        let path = "/api/vcenter/vcha/cluster/mode?vmw-task=true"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func settask_0(requestBody: VcenterVchaClusterModeSetTask, completion: @escaping ((_ data: VcenterVchaClusterModeSetTaskResp?,_ error: Error?) -> Void)) {
        settask_0WithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
     - PUT /rest/vcenter/vcha/cluster/mode?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<VcenterVchaClusterModeSetTaskResp> 
     */
    open class func settask_0WithRequestBuilder(requestBody: VcenterVchaClusterModeSetTask) -> RequestBuilder<VcenterVchaClusterModeSetTaskResp> {
        let path = "/rest/vcenter/vcha/cluster/mode?vmw-task=true"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVchaClusterModeSetTaskResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
