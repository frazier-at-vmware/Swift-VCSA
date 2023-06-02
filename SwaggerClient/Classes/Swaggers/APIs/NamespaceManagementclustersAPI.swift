//
// NamespaceManagementclustersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class NamespaceManagementclustersAPI {
    /**
     Returns information about a specific cluster. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
     
     - parameter cluster: (path) Identifier for the cluster on which vSphere Namespaces are enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(cluster: String, completion: @escaping ((_ data: VcenterNamespaceManagementClustersInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(cluster: cluster).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about a specific cluster. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
     - GET /api/vcenter/namespace-management/clusters/{cluster}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter cluster: (path) Identifier for the cluster on which vSphere Namespaces are enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 

     - returns: RequestBuilder<VcenterNamespaceManagementClustersInfo> 
     */
    open class func callGetWithRequestBuilder(cluster: String) -> RequestBuilder<VcenterNamespaceManagementClustersInfo> {
        var path = "/api/vcenter/namespace-management/clusters/{cluster}"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterNamespaceManagementClustersInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Set a new configuration on the cluster object. The specified configuration is applied in entirety and will replace the current configuration fully. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     
     - parameter cluster: (path) Identifier for the cluster on which vSphere Namespaces is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callSet(cluster: String, requestBody: VcenterNamespaceManagementClustersSet? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        callSetWithRequestBuilder(cluster: cluster, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Set a new configuration on the cluster object. The specified configuration is applied in entirety and will replace the current configuration fully. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     - PUT /api/vcenter/namespace-management/clusters/{cluster}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter cluster: (path) Identifier for the cluster on which vSphere Namespaces is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func callSetWithRequestBuilder(cluster: String, requestBody: VcenterNamespaceManagementClustersSet? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/namespace-management/clusters/{cluster}"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Disable vSphere Namespaces on the cluster. This operation tears down the Kubernetes instance and the worker nodes associated with vSphere Namespaces enabled cluster. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     
     - parameter cluster: (path) Identifier for the cluster for which vSphere Namespaces will be disabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func disable(cluster: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        disableWithRequestBuilder(cluster: cluster).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Disable vSphere Namespaces on the cluster. This operation tears down the Kubernetes instance and the worker nodes associated with vSphere Namespaces enabled cluster. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     - POST /api/vcenter/namespace-management/clusters/{cluster}?action=disable
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter cluster: (path) Identifier for the cluster for which vSphere Namespaces will be disabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 

     - returns: RequestBuilder<Void> 
     */
    open class func disableWithRequestBuilder(cluster: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/namespace-management/clusters/{cluster}?action=disable"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Enable vSphere Namespaces on the cluster. This operation sets up Kubernetes instance for the cluster along with worker nodes. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     
     - parameter cluster: (path) Identifier for the cluster on which vSphere Namespaces will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func enable(cluster: String, requestBody: VcenterNamespaceManagementClustersEnable? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        enableWithRequestBuilder(cluster: cluster, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Enable vSphere Namespaces on the cluster. This operation sets up Kubernetes instance for the cluster along with worker nodes. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     - POST /api/vcenter/namespace-management/clusters/{cluster}?action=enable
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter cluster: (path) Identifier for the cluster on which vSphere Namespaces will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func enableWithRequestBuilder(cluster: String, requestBody: VcenterNamespaceManagementClustersEnable? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/namespace-management/clusters/{cluster}?action=enable"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Returns information about all clusters on which vSphere Namespaces are enabled on this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Anonymous.  
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(completion: @escaping ((_ data: [VcenterNamespaceManagementClustersSummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information about all clusters on which vSphere Namespaces are enabled on this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Anonymous.  
     - GET /api/vcenter/namespace-management/clusters
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]

     - returns: RequestBuilder<[VcenterNamespaceManagementClustersSummary]> 
     */
    open class func listWithRequestBuilder() -> RequestBuilder<[VcenterNamespaceManagementClustersSummary]> {
        let path = "/api/vcenter/namespace-management/clusters"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterNamespaceManagementClustersSummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Request a new root password for all control plane nodes in the cluster. This operation generates a new root password and configures every control plane node in the cluster to accept it for authentication. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     
     - parameter cluster: (path) Identifier for the cluster for which the password is being generated. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func rotatePassword(cluster: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        rotatePasswordWithRequestBuilder(cluster: cluster).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Request a new root password for all control plane nodes in the cluster. This operation generates a new root password and configures every control plane node in the cluster to accept it for authentication. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     - POST /api/vcenter/namespace-management/clusters/{cluster}?action=rotate_password
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter cluster: (path) Identifier for the cluster for which the password is being generated. The parameter must be an identifier for the resource type: ClusterComputeResource. 

     - returns: RequestBuilder<Void> 
     */
    open class func rotatePasswordWithRequestBuilder(cluster: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/namespace-management/clusters/{cluster}?action=rotate_password"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update configuration on the cluster object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     
     - parameter cluster: (path) Identifier for the cluster on which vSphere Namespaces is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(cluster: String, requestBody: VcenterNamespaceManagementClustersUpdate? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(cluster: cluster, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update configuration on the cluster object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Namespaces.Manage.  
     - PATCH /api/vcenter/namespace-management/clusters/{cluster}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter cluster: (path) Identifier for the cluster on which vSphere Namespaces is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateWithRequestBuilder(cluster: String, requestBody: VcenterNamespaceManagementClustersUpdate? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/namespace-management/clusters/{cluster}"
        let clusterPreEscape = "\(cluster)"
        let clusterPostEscape = clusterPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cluster}", with: clusterPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}