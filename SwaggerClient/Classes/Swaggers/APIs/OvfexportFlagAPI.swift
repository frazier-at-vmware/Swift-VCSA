//
// OvfexportFlagAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class OvfexportFlagAPI {
    /**
     Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(completion: @escaping ((_ data: [VcenterOvfExportFlagInfo]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.
     - GET /api/vcenter/ovf/export-flag
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]

     - returns: RequestBuilder<[VcenterOvfExportFlagInfo]> 
     */
    open class func listWithRequestBuilder() -> RequestBuilder<[VcenterOvfExportFlagInfo]> {
        let path = "/api/vcenter/ovf/export-flag"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterOvfExportFlagInfo]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list_0(completion: @escaping ((_ data: VcenterOvfExportFlagListResp?,_ error: Error?) -> Void)) {
        list_0WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.
     - GET /rest/com/vmware/vcenter/ovf/export-flag
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterOvfExportFlagListResp> 
     */
    open class func list_0WithRequestBuilder() -> RequestBuilder<VcenterOvfExportFlagListResp> {
        let path = "/rest/com/vmware/vcenter/ovf/export-flag"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterOvfExportFlagListResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
