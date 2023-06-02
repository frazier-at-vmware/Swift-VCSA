//
// VmguestidentityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VmguestidentityAPI {
    /**
     Return information about the guest.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(vm: String, completion: @escaping ((_ data: VcenterVmGuestIdentityInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Return information about the guest.
     - GET /api/vcenter/vm/{vm}/guest/identity
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmGuestIdentityInfo> 
     */
    open class func callGetWithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmGuestIdentityInfo> {
        var path = "/api/vcenter/vm/{vm}/guest/identity"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmGuestIdentityInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Return information about the guest.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(vm: String, completion: @escaping ((_ data: VcenterVmGuestIdentityResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Return information about the guest.
     - GET /rest/vcenter/vm/{vm}/guest/identity
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmGuestIdentityResp> 
     */
    open class func callGet_0WithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmGuestIdentityResp> {
        var path = "/rest/vcenter/vm/{vm}/guest/identity"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmGuestIdentityResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}