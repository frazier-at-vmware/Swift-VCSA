//
// VmhardwarememoryAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VmhardwarememoryAPI {
    /**
     Returns the memory-related settings of a virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(vm: String, completion: @escaping ((_ data: VcenterVmHardwareMemoryInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns the memory-related settings of a virtual machine.
     - GET /api/vcenter/vm/{vm}/hardware/memory
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmHardwareMemoryInfo> 
     */
    open class func callGetWithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmHardwareMemoryInfo> {
        var path = "/api/vcenter/vm/{vm}/hardware/memory"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmHardwareMemoryInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns the memory-related settings of a virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(vm: String, completion: @escaping ((_ data: VcenterVmHardwareMemoryResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns the memory-related settings of a virtual machine.
     - GET /rest/vcenter/vm/{vm}/hardware/memory
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmHardwareMemoryResp> 
     */
    open class func callGet_0WithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmHardwareMemoryResp> {
        var path = "/rest/vcenter/vm/{vm}/hardware/memory"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmHardwareMemoryResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Updates the memory-related settings of a virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(vm: String, requestBody: VcenterVmHardwareMemoryUpdate? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Updates the memory-related settings of a virtual machine.
     - PATCH /api/vcenter/vm/{vm}/hardware/memory
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateWithRequestBuilder(vm: String, requestBody: VcenterVmHardwareMemoryUpdate? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/hardware/memory"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Updates the memory-related settings of a virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update_0(vm: String, requestBody: VcenterVmHardwareMemoryUpdate, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        update_0WithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Updates the memory-related settings of a virtual machine.
     - PATCH /rest/vcenter/vm/{vm}/hardware/memory
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func update_0WithRequestBuilder(vm: String, requestBody: VcenterVmHardwareMemoryUpdate) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/hardware/memory"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
