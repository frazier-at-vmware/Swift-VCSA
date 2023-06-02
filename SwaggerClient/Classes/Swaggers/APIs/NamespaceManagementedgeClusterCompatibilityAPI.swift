//
// NamespaceManagementedgeClusterCompatibilityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class NamespaceManagementedgeClusterCompatibilityAPI {
    /**
     Returns Namespaces compatibility information of NSX-T Edge Clusters matching the EdgeClusterCompatibility.FilterSpec. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
     
     - parameter cluster: (query) Identifier of a vCenter Cluster. Only Edge Clusters that are associated with the particular vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter distributedSwitch: (query) Identifier of a Distributed Switch. Only Edge Clusters that are associated with the particular Distributed Switch will be considered by the filter. The parameter must be an identifier for the resource type: vSphereDistributedSwitch. 
     - parameter compatible: (query) Compatibility criteria for matching the filter. If true, only Edge Clusters which are compatible with vSphere Namespaces match the filter. If false, only Edge Clusters which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Edge Clusters match the filter. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(cluster: String, distributedSwitch: String, compatible: Bool? = nil, completion: @escaping ((_ data: [VcenterNamespaceManagementEdgeClusterCompatibilitySummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder(cluster: cluster, distributedSwitch: distributedSwitch, compatible: compatible).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns Namespaces compatibility information of NSX-T Edge Clusters matching the EdgeClusterCompatibility.FilterSpec. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
     - GET /api/vcenter/namespace-management/edge-cluster-compatibility
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter cluster: (query) Identifier of a vCenter Cluster. Only Edge Clusters that are associated with the particular vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource. 
     - parameter distributedSwitch: (query) Identifier of a Distributed Switch. Only Edge Clusters that are associated with the particular Distributed Switch will be considered by the filter. The parameter must be an identifier for the resource type: vSphereDistributedSwitch. 
     - parameter compatible: (query) Compatibility criteria for matching the filter. If true, only Edge Clusters which are compatible with vSphere Namespaces match the filter. If false, only Edge Clusters which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Edge Clusters match the filter. (optional)

     - returns: RequestBuilder<[VcenterNamespaceManagementEdgeClusterCompatibilitySummary]> 
     */
    open class func listWithRequestBuilder(cluster: String, distributedSwitch: String, compatible: Bool? = nil) -> RequestBuilder<[VcenterNamespaceManagementEdgeClusterCompatibilitySummary]> {
        let path = "/api/vcenter/namespace-management/edge-cluster-compatibility"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cluster": cluster, 
            "distributed_switch": distributedSwitch, 
            "compatible": compatible
        ])

        let requestBuilder: RequestBuilder<[VcenterNamespaceManagementEdgeClusterCompatibilitySummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}