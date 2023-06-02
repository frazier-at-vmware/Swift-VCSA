//
// DeploymentupgradeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class DeploymentupgradeAPI {
    /**
     Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(completion: @escaping ((_ data: VcenterDeploymentUpgradeUpgradeSpec?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
     - GET /api/vcenter/deployment/upgrade
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterDeploymentUpgradeUpgradeSpec> 
     */
    open class func callGetWithRequestBuilder() -> RequestBuilder<VcenterDeploymentUpgradeUpgradeSpec> {
        let path = "/api/vcenter/deployment/upgrade"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterDeploymentUpgradeUpgradeSpec>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(completion: @escaping ((_ data: VcenterDeploymentUpgradeResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
     - GET /rest/vcenter/deployment/upgrade
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterDeploymentUpgradeResp> 
     */
    open class func callGet_0WithRequestBuilder() -> RequestBuilder<VcenterDeploymentUpgradeResp> {
        let path = "/rest/vcenter/deployment/upgrade"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterDeploymentUpgradeResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Cancel the appliance upgrade that is in progress.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancel(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        cancelWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Cancel the appliance upgrade that is in progress.
     - POST /api/vcenter/deployment/upgrade?action=cancel
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id

     - returns: RequestBuilder<Void> 
     */
    open class func cancelWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/api/vcenter/deployment/upgrade?action=cancel"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Cancel the appliance upgrade that is in progress.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancel_0(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        cancel_0WithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Cancel the appliance upgrade that is in progress.
     - POST /rest/vcenter/deployment/upgrade?action=cancel
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id

     - returns: RequestBuilder<Void> 
     */
    open class func cancel_0WithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/rest/vcenter/deployment/upgrade?action=cancel"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Run sanity checks using the UpgradeSpec parameters passed.
     
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func check(requestBody: VcenterDeploymentUpgradeCheck? = nil, completion: @escaping ((_ data: VcenterDeploymentCheckInfo?,_ error: Error?) -> Void)) {
        checkWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Run sanity checks using the UpgradeSpec parameters passed.
     - POST /api/vcenter/deployment/upgrade?action=check
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<VcenterDeploymentCheckInfo> 
     */
    open class func checkWithRequestBuilder(requestBody: VcenterDeploymentUpgradeCheck? = nil) -> RequestBuilder<VcenterDeploymentCheckInfo> {
        let path = "/api/vcenter/deployment/upgrade?action=check"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterDeploymentCheckInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Run sanity checks using the UpgradeSpec parameters passed.
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func check_0(requestBody: VcenterDeploymentUpgradeCheck, completion: @escaping ((_ data: VcenterDeploymentUpgradeCheckResp?,_ error: Error?) -> Void)) {
        check_0WithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Run sanity checks using the UpgradeSpec parameters passed.
     - POST /rest/vcenter/deployment/upgrade?action=check
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<VcenterDeploymentUpgradeCheckResp> 
     */
    open class func check_0WithRequestBuilder(requestBody: VcenterDeploymentUpgradeCheck) -> RequestBuilder<VcenterDeploymentUpgradeCheckResp> {
        let path = "/rest/vcenter/deployment/upgrade?action=check"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterDeploymentUpgradeCheckResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Start the appliance installation.
     
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func start(requestBody: VcenterDeploymentUpgradeStart? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        startWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Start the appliance installation.
     - POST /api/vcenter/deployment/upgrade?action=start
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func startWithRequestBuilder(requestBody: VcenterDeploymentUpgradeStart? = nil) -> RequestBuilder<Void> {
        let path = "/api/vcenter/deployment/upgrade?action=start"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Start the appliance installation.
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func start_0(requestBody: VcenterDeploymentUpgradeStart, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        start_0WithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Start the appliance installation.
     - POST /rest/vcenter/deployment/upgrade?action=start
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func start_0WithRequestBuilder(requestBody: VcenterDeploymentUpgradeStart) -> RequestBuilder<Void> {
        let path = "/rest/vcenter/deployment/upgrade?action=start"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
