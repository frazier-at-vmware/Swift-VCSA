//
// VmguestnetworkingroutesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VmguestnetworkingroutesAPI {
    /**
     Returns information about network routing in the guest operating system.
     
     - parameter vm: (path) Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(vm: String, completion: @escaping ((_ data: [VcenterVmGuestNetworkingRoutesInfo]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about network routing in the guest operating system.
     - GET /api/vcenter/vm/{vm}/guest/networking/routes
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter vm: (path) Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<[VcenterVmGuestNetworkingRoutesInfo]> 
     */
    open class func listWithRequestBuilder(vm: String) -> RequestBuilder<[VcenterVmGuestNetworkingRoutesInfo]> {
        var path = "/api/vcenter/vm/{vm}/guest/networking/routes"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterVmGuestNetworkingRoutesInfo]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns information about network routing in the guest operating system.
     
     - parameter vm: (path) Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list_0(vm: String, completion: @escaping ((_ data: VcenterVmGuestNetworkingRoutesListResp?,_ error: Error?) -> Void)) {
        list_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about network routing in the guest operating system.
     - GET /rest/vcenter/vm/{vm}/guest/networking/routes
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmGuestNetworkingRoutesListResp> 
     */
    open class func list_0WithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmGuestNetworkingRoutesListResp> {
        var path = "/rest/vcenter/vm/{vm}/guest/networking/routes"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmGuestNetworkingRoutesListResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}