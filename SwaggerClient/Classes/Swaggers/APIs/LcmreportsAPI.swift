//
// LcmreportsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class LcmreportsAPI {
    /**
     Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
     
     - parameter report: (path) The parameter must be an identifier for the resource type: vcenter.lcm.report. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(report: String, completion: @escaping ((_ data: VcenterLcmReportsLocation?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(report: report).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
     - GET /api/vcenter/lcm/reports/{report}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter report: (path) The parameter must be an identifier for the resource type: vcenter.lcm.report. 

     - returns: RequestBuilder<VcenterLcmReportsLocation> 
     */
    open class func callGetWithRequestBuilder(report: String) -> RequestBuilder<VcenterLcmReportsLocation> {
        var path = "/api/vcenter/lcm/reports/{report}"
        let reportPreEscape = "\(report)"
        let reportPostEscape = reportPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{report}", with: reportPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterLcmReportsLocation>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
