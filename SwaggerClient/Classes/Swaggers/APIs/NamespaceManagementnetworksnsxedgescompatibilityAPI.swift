//
// NamespaceManagementnetworksnsxedgescompatibilityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class NamespaceManagementnetworksnsxedgescompatibilityAPI {
    /**
     Returns a list of Edges matching the given filter and their compatibility information.
     
     - parameter distributedSwitch: (query) Distributed switch UUID criteria. If distributed switches identifiers are specified, they will be used to filter the Edges. To obtain the available distributed switch UUIDs, use: DistributedSwitches.list. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vSphereDistributedSwitch. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vSphereDistributedSwitch. 
     - parameter compatible: (query) Compatibility criteria. If true, only Edges which are compatible with vSphere Namespaces will be returned. If false, only Edges incompatible with vSphere Namespaces will be returned. If unset, both compatible and incompatible Edges will be returned. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func check(distributedSwitch: [String], compatible: Bool? = nil, completion: @escaping ((_ data: [VcenterNamespaceManagementNetworksNsxEdgesCompatibilitySummary]?,_ error: Error?) -> Void)) {
        checkWithRequestBuilder(distributedSwitch: distributedSwitch, compatible: compatible).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a list of Edges matching the given filter and their compatibility information.
     - POST /api/vcenter/namespace-management/networks/nsx/edges?action=check_compatibility
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter distributedSwitch: (query) Distributed switch UUID criteria. If distributed switches identifiers are specified, they will be used to filter the Edges. To obtain the available distributed switch UUIDs, use: DistributedSwitches.list. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vSphereDistributedSwitch. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vSphereDistributedSwitch. 
     - parameter compatible: (query) Compatibility criteria. If true, only Edges which are compatible with vSphere Namespaces will be returned. If false, only Edges incompatible with vSphere Namespaces will be returned. If unset, both compatible and incompatible Edges will be returned. (optional)

     - returns: RequestBuilder<[VcenterNamespaceManagementNetworksNsxEdgesCompatibilitySummary]> 
     */
    open class func checkWithRequestBuilder(distributedSwitch: [String], compatible: Bool? = nil) -> RequestBuilder<[VcenterNamespaceManagementNetworksNsxEdgesCompatibilitySummary]> {
        let path = "/api/vcenter/namespace-management/networks/nsx/edges?action=check_compatibility"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "compatible": compatible, 
            "distributed_switch": distributedSwitch
        ])

        let requestBuilder: RequestBuilder<[VcenterNamespaceManagementNetworksNsxEdgesCompatibilitySummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
