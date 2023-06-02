//
// HvcmanagementadministratorsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class HvcmanagementadministratorsAPI {
    /**
     Add the local sso group with the new group. Usage beyond VMware Cloud on AWS is not supported. *Warning:* This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func add(requestBody: VcenterHvcManagementAdministratorsAdd, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        addWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Add the local sso group with the new group. Usage beyond VMware Cloud on AWS is not supported. *Warning:* This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
     - POST /rest/hvc/management/administrators?action=add
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func addWithRequestBuilder(requestBody: VcenterHvcManagementAdministratorsAdd) -> RequestBuilder<Void> {
        let path = "/rest/hvc/management/administrators?action=add"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Enumerates the set of all the groups in the local sso group. Usage beyond VMware Cloud on AWS is not supported. *Warning:* This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(completion: @escaping ((_ data: VcenterHvcManagementAdministratorsResp?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Enumerates the set of all the groups in the local sso group. Usage beyond VMware Cloud on AWS is not supported. *Warning:* This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
     - GET /rest/hvc/management/administrators
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterHvcManagementAdministratorsResp> 
     */
    open class func callGetWithRequestBuilder() -> RequestBuilder<VcenterHvcManagementAdministratorsResp> {
        let path = "/rest/hvc/management/administrators"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterHvcManagementAdministratorsResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Sets the groups in the local sso group. Usage beyond VMware Cloud on AWS is not supported. *Warning:* This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callSet(requestBody: VcenterHvcManagementAdministratorsSet, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        callSetWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Sets the groups in the local sso group. Usage beyond VMware Cloud on AWS is not supported. *Warning:* This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
     - PUT /rest/hvc/management/administrators
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func callSetWithRequestBuilder(requestBody: VcenterHvcManagementAdministratorsSet) -> RequestBuilder<Void> {
        let path = "/rest/hvc/management/administrators"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Remove the group from the local sso group. Usage beyond VMware Cloud on AWS is not supported. *Warning:* This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func remove(requestBody: VcenterHvcManagementAdministratorsRemove, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        removeWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Remove the group from the local sso group. Usage beyond VMware Cloud on AWS is not supported. *Warning:* This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
     - POST /rest/hvc/management/administrators?action=remove
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func removeWithRequestBuilder(requestBody: VcenterHvcManagementAdministratorsRemove) -> RequestBuilder<Void> {
        let path = "/rest/hvc/management/administrators?action=remove"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
