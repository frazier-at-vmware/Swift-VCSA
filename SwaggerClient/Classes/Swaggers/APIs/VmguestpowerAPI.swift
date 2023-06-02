//
// VmguestpowerAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VmguestpowerAPI {
    /**
     Returns information about the guest operating system power state.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(vm: String, completion: @escaping ((_ data: VcenterVmGuestPowerInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about the guest operating system power state.
     - GET /api/vcenter/vm/{vm}/guest/power
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmGuestPowerInfo> 
     */
    open class func callGetWithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmGuestPowerInfo> {
        var path = "/api/vcenter/vm/{vm}/guest/power"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmGuestPowerInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns information about the guest operating system power state.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(vm: String, completion: @escaping ((_ data: VcenterVmGuestPowerResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about the guest operating system power state.
     - GET /rest/vcenter/vm/{vm}/guest/power
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmGuestPowerResp> 
     */
    open class func callGet_0WithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmGuestPowerResp> {
        var path = "/rest/vcenter/vm/{vm}/guest/power"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmGuestPowerResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func reboot(vm: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        rebootWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
     - POST /api/vcenter/vm/{vm}/guest/power?action=reboot
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<Void> 
     */
    open class func rebootWithRequestBuilder(vm: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/guest/power?action=reboot"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func reboot_0(vm: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        reboot_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
     - POST /rest/vcenter/vm/{vm}/guest/power?action=reboot
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<Void> 
     */
    open class func reboot_0WithRequestBuilder(vm: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/guest/power?action=reboot"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func shutdown(vm: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        shutdownWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
     - POST /api/vcenter/vm/{vm}/guest/power?action=shutdown
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<Void> 
     */
    open class func shutdownWithRequestBuilder(vm: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/guest/power?action=shutdown"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func shutdown_0(vm: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        shutdown_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
     - POST /rest/vcenter/vm/{vm}/guest/power?action=shutdown
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<Void> 
     */
    open class func shutdown_0WithRequestBuilder(vm: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/guest/power?action=shutdown"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Issues a request to the guest operating system asking it to perform a suspend operation.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func standby(vm: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        standbyWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Issues a request to the guest operating system asking it to perform a suspend operation.
     - POST /api/vcenter/vm/{vm}/guest/power?action=standby
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<Void> 
     */
    open class func standbyWithRequestBuilder(vm: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/guest/power?action=standby"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Issues a request to the guest operating system asking it to perform a suspend operation.
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func standby_0(vm: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        standby_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Issues a request to the guest operating system asking it to perform a suspend operation.
     - POST /rest/vcenter/vm/{vm}/guest/power?action=standby
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<Void> 
     */
    open class func standby_0WithRequestBuilder(vm: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/guest/power?action=standby"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
