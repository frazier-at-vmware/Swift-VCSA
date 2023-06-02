//
// LcmdiscoveryinteropReportAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class LcmdiscoveryinteropReportAPI {
    /**
     Creates interoperability report between a vCenter Server release version and all registered products with the vCenter Server instance.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
     
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createtask(requestBody: VcenterLcmDiscoveryInteropReportCreateTask? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createtaskWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates interoperability report between a vCenter Server release version and all registered products with the vCenter Server instance.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
     - POST /api/vcenter/lcm/discovery/interop-report?vmw-task=true
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createtaskWithRequestBuilder(requestBody: VcenterLcmDiscoveryInteropReportCreateTask? = nil) -> RequestBuilder<String> {
        let path = "/api/vcenter/lcm/discovery/interop-report?vmw-task=true"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}