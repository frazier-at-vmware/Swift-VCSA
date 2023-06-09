//
// ConfidentialComputingsgxhostsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ConfidentialComputingsgxhostsAPI {
    /**
     Register host by stored SGX configuration.
     
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func registertask(requestBody: VcenterConfidentialComputingSgxHostsRegisterTask? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        registertaskWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Register host by stored SGX configuration.
     - POST /api/vcenter/confidential-computing/sgx/hosts?action=register&vmw-task=true
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
    open class func registertaskWithRequestBuilder(requestBody: VcenterConfidentialComputingSgxHostsRegisterTask? = nil) -> RequestBuilder<String> {
        let path = "/api/vcenter/confidential-computing/sgx/hosts?action=register&vmw-task=true"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
