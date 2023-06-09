//
// LcmupdatependingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class LcmupdatependingAPI {
    /**
     Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
     
     - parameter version: (path) A version identified the update The parameter must be an identifier for the resource type: vcenter.lcm.update.pending. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(version: String, completion: @escaping ((_ data: VcenterLcmUpdatePendingInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(version: version).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
     - GET /api/vcenter/lcm/update/pending/{version}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter version: (path) A version identified the update The parameter must be an identifier for the resource type: vcenter.lcm.update.pending. 

     - returns: RequestBuilder<VcenterLcmUpdatePendingInfo> 
     */
    open class func callGetWithRequestBuilder(version: String) -> RequestBuilder<VcenterLcmUpdatePendingInfo> {
        var path = "/api/vcenter/lcm/update/pending/{version}"
        let versionPreEscape = "\(version)"
        let versionPostEscape = versionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{version}", with: versionPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterLcmUpdatePendingInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(completion: @escaping ((_ data: VcenterLcmUpdatePendingListResult?,_ error: Error?) -> Void)) {
        listWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
     - GET /api/vcenter/lcm/update/pending
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterLcmUpdatePendingListResult> 
     */
    open class func listWithRequestBuilder() -> RequestBuilder<VcenterLcmUpdatePendingListResult> {
        let path = "/api/vcenter/lcm/update/pending"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterLcmUpdatePendingListResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
