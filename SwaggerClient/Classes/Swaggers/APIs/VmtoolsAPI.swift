//
// VmtoolsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VmtoolsAPI {
    /**
     Get the properties of VMware Tools.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(vm: String, completion: @escaping ((_ data: VcenterVmToolsInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the properties of VMware Tools.
     - GET /api/vcenter/vm/{vm}/tools
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmToolsInfo> 
     */
    open class func callGetWithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmToolsInfo> {
        var path = "/api/vcenter/vm/{vm}/tools"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmToolsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the properties of VMware Tools.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(vm: String, completion: @escaping ((_ data: VcenterVmToolsResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the properties of VMware Tools.
     - GET /rest/vcenter/vm/{vm}/tools
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmToolsResp> 
     */
    open class func callGet_0WithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmToolsResp> {
        var path = "/rest/vcenter/vm/{vm}/tools"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmToolsResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update the properties of VMware Tools.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(vm: String, requestBody: VcenterVmToolsUpdate? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update the properties of VMware Tools.
     - PATCH /api/vcenter/vm/{vm}/tools
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateWithRequestBuilder(vm: String, requestBody: VcenterVmToolsUpdate? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/tools"
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
     Update the properties of VMware Tools.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update_0(vm: String, requestBody: VcenterVmToolsUpdate, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        update_0WithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update the properties of VMware Tools.
     - PATCH /rest/vcenter/vm/{vm}/tools
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func update_0WithRequestBuilder(vm: String, requestBody: VcenterVmToolsUpdate) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/tools"
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
     Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients should check the Tools status by calling Tools.get and examining Tools.Info.version-status and Tools.Info.run-state.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func upgrade(vm: String, requestBody: VcenterVmToolsUpgrade? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        upgradeWithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients should check the Tools status by calling Tools.get and examining Tools.Info.version-status and Tools.Info.run-state.
     - POST /api/vcenter/vm/{vm}/tools?action=upgrade
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func upgradeWithRequestBuilder(vm: String, requestBody: VcenterVmToolsUpgrade? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/tools?action=upgrade"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients should check the Tools status by calling Tools.get and examining Tools.Info.version-status and Tools.Info.run-state.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func upgrade_0(vm: String, requestBody: VcenterVmToolsUpgrade? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        upgrade_0WithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients should check the Tools status by calling Tools.get and examining Tools.Info.version-status and Tools.Info.run-state.
     - POST /rest/vcenter/vm/{vm}/tools?action=upgrade
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func upgrade_0WithRequestBuilder(vm: String, requestBody: VcenterVmToolsUpgrade? = nil) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/tools?action=upgrade"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
