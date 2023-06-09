//
// DeploymentinstallAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class DeploymentinstallAPI {
    /**
     Get the parameters used to configure the ongoing appliance installation.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(completion: @escaping ((_ data: VcenterDeploymentInstallInstallSpec?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the parameters used to configure the ongoing appliance installation.
     - GET /api/vcenter/deployment/install
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterDeploymentInstallInstallSpec> 
     */
    open class func callGetWithRequestBuilder() -> RequestBuilder<VcenterDeploymentInstallInstallSpec> {
        let path = "/api/vcenter/deployment/install"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterDeploymentInstallInstallSpec>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the parameters used to configure the ongoing appliance installation.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(completion: @escaping ((_ data: VcenterDeploymentInstallResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the parameters used to configure the ongoing appliance installation.
     - GET /rest/vcenter/deployment/install
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterDeploymentInstallResp> 
     */
    open class func callGet_0WithRequestBuilder() -> RequestBuilder<VcenterDeploymentInstallResp> {
        let path = "/rest/vcenter/deployment/install"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterDeploymentInstallResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Cancel the appliance installation that is in progress.
     
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
     Cancel the appliance installation that is in progress.
     - POST /api/vcenter/deployment/install?action=cancel
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id

     - returns: RequestBuilder<Void> 
     */
    open class func cancelWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/api/vcenter/deployment/install?action=cancel"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Cancel the appliance installation that is in progress.
     
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
     Cancel the appliance installation that is in progress.
     - POST /rest/vcenter/deployment/install?action=cancel
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id

     - returns: RequestBuilder<Void> 
     */
    open class func cancel_0WithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/rest/vcenter/deployment/install?action=cancel"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Run sanity checks using the InstallSpec parameters passed.
     
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func check(requestBody: VcenterDeploymentInstallCheck? = nil, completion: @escaping ((_ data: VcenterDeploymentCheckInfo?,_ error: Error?) -> Void)) {
        checkWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Run sanity checks using the InstallSpec parameters passed.
     - POST /api/vcenter/deployment/install?action=check
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<VcenterDeploymentCheckInfo> 
     */
    open class func checkWithRequestBuilder(requestBody: VcenterDeploymentInstallCheck? = nil) -> RequestBuilder<VcenterDeploymentCheckInfo> {
        let path = "/api/vcenter/deployment/install?action=check"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterDeploymentCheckInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Run sanity checks using the InstallSpec parameters passed.
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func check_0(requestBody: VcenterDeploymentInstallCheck, completion: @escaping ((_ data: VcenterDeploymentInstallCheckResp?,_ error: Error?) -> Void)) {
        check_0WithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Run sanity checks using the InstallSpec parameters passed.
     - POST /rest/vcenter/deployment/install?action=check
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<VcenterDeploymentInstallCheckResp> 
     */
    open class func check_0WithRequestBuilder(requestBody: VcenterDeploymentInstallCheck) -> RequestBuilder<VcenterDeploymentInstallCheckResp> {
        let path = "/rest/vcenter/deployment/install?action=check"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterDeploymentInstallCheckResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Start the appliance installation.
     
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func start(requestBody: VcenterDeploymentInstallStart? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
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
     - POST /api/vcenter/deployment/install?action=start
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func startWithRequestBuilder(requestBody: VcenterDeploymentInstallStart? = nil) -> RequestBuilder<Void> {
        let path = "/api/vcenter/deployment/install?action=start"
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
    open class func start_0(requestBody: VcenterDeploymentInstallStart, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
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
     - POST /rest/vcenter/deployment/install?action=start
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func start_0WithRequestBuilder(requestBody: VcenterDeploymentInstallStart) -> RequestBuilder<Void> {
        let path = "/rest/vcenter/deployment/install?action=start"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
