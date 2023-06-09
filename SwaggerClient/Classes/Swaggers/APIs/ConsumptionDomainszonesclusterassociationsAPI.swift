//
// ConsumptionDomainszonesclusterassociationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ConsumptionDomainszonesclusterassociationsAPI {
    /**
     Maps a consumption-domain zone to the specified vSphere clusters. If a cluster or a subset of specified clusters are already members of the specified zone, the result is success for those clusters. This operation supports partial success, i.e., it is possible that a subset of the specified clusters get successfully associated with the specified zone but the association fails for a subset of clusters. The returned result will contain the details about only those clusters for which the association failed. if you do not have all of the privileges described as follows:     -  The resource vcenter.consumption_domains.Zone referenced by the parameter zone requires Zone.Manage.  
     
     - parameter zone: (path) Identifier of the zone to be mapped to the specified vSphere clusters. The parameter must be an identifier for the resource type: vcenter.consumption_domains.Zone. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func add(zone: String, requestBody: VcenterConsumptionDomainsZonesClusterAssociationsAdd? = nil, completion: @escaping ((_ data: VcenterConsumptionDomainsZonesClusterAssociationsStatus?,_ error: Error?) -> Void)) {
        addWithRequestBuilder(zone: zone, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Maps a consumption-domain zone to the specified vSphere clusters. If a cluster or a subset of specified clusters are already members of the specified zone, the result is success for those clusters. This operation supports partial success, i.e., it is possible that a subset of the specified clusters get successfully associated with the specified zone but the association fails for a subset of clusters. The returned result will contain the details about only those clusters for which the association failed. if you do not have all of the privileges described as follows:     -  The resource vcenter.consumption_domains.Zone referenced by the parameter zone requires Zone.Manage.  
     - POST /api/vcenter/consumption-domains/zones/cluster/{zone}/associations?action=add
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter zone: (path) Identifier of the zone to be mapped to the specified vSphere clusters. The parameter must be an identifier for the resource type: vcenter.consumption_domains.Zone. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<VcenterConsumptionDomainsZonesClusterAssociationsStatus> 
     */
    open class func addWithRequestBuilder(zone: String, requestBody: VcenterConsumptionDomainsZonesClusterAssociationsAdd? = nil) -> RequestBuilder<VcenterConsumptionDomainsZonesClusterAssociationsStatus> {
        var path = "/api/vcenter/consumption-domains/zones/cluster/{zone}/associations?action=add"
        let zonePreEscape = "\(zone)"
        let zonePostEscape = zonePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{zone}", with: zonePostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterConsumptionDomainsZonesClusterAssociationsStatus>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Returns identifiers of the clusters that are mapped to the specified consumption-domain zone. if you do not have all of the privileges described as follows:     -  The resource vcenter.consumption_domains.Zone referenced by the parameter zone requires System.Read.  
     
     - parameter zone: (path) Identifier of the zone to be queried for its associated vSphere clusters. The parameter must be an identifier for the resource type: vcenter.consumption_domains.Zone. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(zone: String, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(zone: zone).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns identifiers of the clusters that are mapped to the specified consumption-domain zone. if you do not have all of the privileges described as follows:     -  The resource vcenter.consumption_domains.Zone referenced by the parameter zone requires System.Read.  
     - GET /api/vcenter/consumption-domains/zones/cluster/{zone}/associations
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter zone: (path) Identifier of the zone to be queried for its associated vSphere clusters. The parameter must be an identifier for the resource type: vcenter.consumption_domains.Zone. 

     - returns: RequestBuilder<[String]> 
     */
    open class func callGetWithRequestBuilder(zone: String) -> RequestBuilder<[String]> {
        var path = "/api/vcenter/consumption-domains/zones/cluster/{zone}/associations"
        let zonePreEscape = "\(zone)"
        let zonePostEscape = zonePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{zone}", with: zonePostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Removes the mapping between the specified consumption-domain zone and vSphere clusters. If a cluster or a subset of specified clusters are not members of the specified zone, then the result is a success for those clusters. In order to remove the mapping between a zone and a cluster, there must not be any workload running in that zone because removing the mapping between a zone and a cluster could result in undefined behavior for the entities depending on this mapping to be present. This operation supports partial success, i.e., it is possible that the mapping gets successfully removed for a subset of the clusters but fails for another subset of the clusters. The returned result will contain the details about only those clusters for which the operation failed. if you do not have all of the privileges described as follows:     -  The resource vcenter.consumption_domains.Zone referenced by the parameter zone requires Zone.Manage.  
     
     - parameter zone: (path) Identifier of the zone for which the mapping needs to be removed. The parameter must be an identifier for the resource type: vcenter.consumption_domains.Zone. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func remove(zone: String, requestBody: VcenterConsumptionDomainsZonesClusterAssociationsRemove? = nil, completion: @escaping ((_ data: VcenterConsumptionDomainsZonesClusterAssociationsStatus?,_ error: Error?) -> Void)) {
        removeWithRequestBuilder(zone: zone, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes the mapping between the specified consumption-domain zone and vSphere clusters. If a cluster or a subset of specified clusters are not members of the specified zone, then the result is a success for those clusters. In order to remove the mapping between a zone and a cluster, there must not be any workload running in that zone because removing the mapping between a zone and a cluster could result in undefined behavior for the entities depending on this mapping to be present. This operation supports partial success, i.e., it is possible that the mapping gets successfully removed for a subset of the clusters but fails for another subset of the clusters. The returned result will contain the details about only those clusters for which the operation failed. if you do not have all of the privileges described as follows:     -  The resource vcenter.consumption_domains.Zone referenced by the parameter zone requires Zone.Manage.  
     - POST /api/vcenter/consumption-domains/zones/cluster/{zone}/associations?action=remove
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter zone: (path) Identifier of the zone for which the mapping needs to be removed. The parameter must be an identifier for the resource type: vcenter.consumption_domains.Zone. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<VcenterConsumptionDomainsZonesClusterAssociationsStatus> 
     */
    open class func removeWithRequestBuilder(zone: String, requestBody: VcenterConsumptionDomainsZonesClusterAssociationsRemove? = nil) -> RequestBuilder<VcenterConsumptionDomainsZonesClusterAssociationsStatus> {
        var path = "/api/vcenter/consumption-domains/zones/cluster/{zone}/associations?action=remove"
        let zonePreEscape = "\(zone)"
        let zonePostEscape = zonePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{zone}", with: zonePostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterConsumptionDomainsZonesClusterAssociationsStatus>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
