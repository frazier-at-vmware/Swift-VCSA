//
// VmhardwareserialAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VmhardwareserialAPI {
    /**
     Returns information about a virtual serial port.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(vm: String, port: String, completion: @escaping ((_ data: VcenterVmHardwareSerialInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(vm: vm, port: port).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about a virtual serial port.
     - GET /api/vcenter/vm/{vm}/hardware/serial/{port}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 

     - returns: RequestBuilder<VcenterVmHardwareSerialInfo> 
     */
    open class func callGetWithRequestBuilder(vm: String, port: String) -> RequestBuilder<VcenterVmHardwareSerialInfo> {
        var path = "/api/vcenter/vm/{vm}/hardware/serial/{port}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmHardwareSerialInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns information about a virtual serial port.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(vm: String, port: String, completion: @escaping ((_ data: VcenterVmHardwareSerialResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder(vm: vm, port: port).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about a virtual serial port.
     - GET /rest/vcenter/vm/{vm}/hardware/serial/{port}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 

     - returns: RequestBuilder<VcenterVmHardwareSerialResp> 
     */
    open class func callGet_0WithRequestBuilder(vm: String, port: String) -> RequestBuilder<VcenterVmHardwareSerialResp> {
        var path = "/rest/vcenter/vm/{vm}/hardware/serial/{port}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmHardwareSerialResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func connect(vm: String, port: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        connectWithRequestBuilder(vm: vm, port: port).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
     - POST /api/vcenter/vm/{vm}/hardware/serial/{port}?action=connect
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 

     - returns: RequestBuilder<Void> 
     */
    open class func connectWithRequestBuilder(vm: String, port: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/hardware/serial/{port}?action=connect"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func connect_0(vm: String, port: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        connect_0WithRequestBuilder(vm: vm, port: port).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
     - POST /rest/vcenter/vm/{vm}/hardware/serial/{port}/connect
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 

     - returns: RequestBuilder<Void> 
     */
    open class func connect_0WithRequestBuilder(vm: String, port: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/hardware/serial/{port}/connect"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Adds a virtual serial port to the virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(vm: String, requestBody: VcenterVmHardwareSerialCreate? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Adds a virtual serial port to the virtual machine.
     - POST /api/vcenter/vm/{vm}/hardware/serial
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createWithRequestBuilder(vm: String, requestBody: VcenterVmHardwareSerialCreate? = nil) -> RequestBuilder<String> {
        var path = "/api/vcenter/vm/{vm}/hardware/serial"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Adds a virtual serial port to the virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create_0(vm: String, requestBody: VcenterVmHardwareSerialCreate, completion: @escaping ((_ data: VcenterVmHardwareSerialCreateResp?,_ error: Error?) -> Void)) {
        create_0WithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Adds a virtual serial port to the virtual machine.
     - POST /rest/vcenter/vm/{vm}/hardware/serial
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  

     - returns: RequestBuilder<VcenterVmHardwareSerialCreateResp> 
     */
    open class func create_0WithRequestBuilder(vm: String, requestBody: VcenterVmHardwareSerialCreate) -> RequestBuilder<VcenterVmHardwareSerialCreateResp> {
        var path = "/rest/vcenter/vm/{vm}/hardware/serial"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmHardwareSerialCreateResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Removes a virtual serial port from the virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func delete(vm: String, port: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteWithRequestBuilder(vm: vm, port: port).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Removes a virtual serial port from the virtual machine.
     - DELETE /api/vcenter/vm/{vm}/hardware/serial/{port}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(vm: String, port: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/hardware/serial/{port}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Removes a virtual serial port from the virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func delete_0(vm: String, port: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        delete_0WithRequestBuilder(vm: vm, port: port).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Removes a virtual serial port from the virtual machine.
     - DELETE /rest/vcenter/vm/{vm}/hardware/serial/{port}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 

     - returns: RequestBuilder<Void> 
     */
    open class func delete_0WithRequestBuilder(vm: String, port: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/hardware/serial/{port}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func disconnect(vm: String, port: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        disconnectWithRequestBuilder(vm: vm, port: port).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
     - POST /api/vcenter/vm/{vm}/hardware/serial/{port}?action=disconnect
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 

     - returns: RequestBuilder<Void> 
     */
    open class func disconnectWithRequestBuilder(vm: String, port: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/hardware/serial/{port}?action=disconnect"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func disconnect_0(vm: String, port: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        disconnect_0WithRequestBuilder(vm: vm, port: port).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
     - POST /rest/vcenter/vm/{vm}/hardware/serial/{port}/disconnect
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 

     - returns: RequestBuilder<Void> 
     */
    open class func disconnect_0WithRequestBuilder(vm: String, port: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/hardware/serial/{port}/disconnect"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns commonly used information about the virtual serial ports belonging to the virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(vm: String, completion: @escaping ((_ data: [VcenterVmHardwareSerialSummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns commonly used information about the virtual serial ports belonging to the virtual machine.
     - GET /api/vcenter/vm/{vm}/hardware/serial
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<[VcenterVmHardwareSerialSummary]> 
     */
    open class func listWithRequestBuilder(vm: String) -> RequestBuilder<[VcenterVmHardwareSerialSummary]> {
        var path = "/api/vcenter/vm/{vm}/hardware/serial"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterVmHardwareSerialSummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns commonly used information about the virtual serial ports belonging to the virtual machine.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list_0(vm: String, completion: @escaping ((_ data: VcenterVmHardwareSerialListResp?,_ error: Error?) -> Void)) {
        list_0WithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns commonly used information about the virtual serial ports belonging to the virtual machine.
     - GET /rest/vcenter/vm/{vm}/hardware/serial
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<VcenterVmHardwareSerialListResp> 
     */
    open class func list_0WithRequestBuilder(vm: String) -> RequestBuilder<VcenterVmHardwareSerialListResp> {
        var path = "/rest/vcenter/vm/{vm}/hardware/serial"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmHardwareSerialListResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Updates the configuration of a virtual serial port.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(vm: String, port: String, requestBody: VcenterVmHardwareSerialUpdate? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(vm: vm, port: port, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Updates the configuration of a virtual serial port.
     - PATCH /api/vcenter/vm/{vm}/hardware/serial/{port}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateWithRequestBuilder(vm: String, port: String, requestBody: VcenterVmHardwareSerialUpdate? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/hardware/serial/{port}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Updates the configuration of a virtual serial port.
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update_0(vm: String, port: String, requestBody: VcenterVmHardwareSerialUpdate, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        update_0WithRequestBuilder(vm: vm, port: port, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Updates the configuration of a virtual serial port.
     - PATCH /rest/vcenter/vm/{vm}/hardware/serial/{port}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter port: (path) Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. 
     - parameter requestBody: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func update_0WithRequestBuilder(vm: String, port: String, requestBody: VcenterVmHardwareSerialUpdate) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/vm/{vm}/hardware/serial/{port}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let portPreEscape = "\(port)"
        let portPostEscape = portPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{port}", with: portPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
