//
// LcmdiscoveryproductCatalogAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class LcmdiscoveryproductCatalogAPI {
    /**
     Retrieves a list of all VMware products that can be associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(completion: @escaping ((_ data: [VcenterLcmDiscoveryProductCatalogSummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieves a list of all VMware products that can be associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
     - GET /api/vcenter/lcm/discovery/product-catalog
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]

     - returns: RequestBuilder<[VcenterLcmDiscoveryProductCatalogSummary]> 
     */
    open class func listWithRequestBuilder() -> RequestBuilder<[VcenterLcmDiscoveryProductCatalogSummary]> {
        let path = "/api/vcenter/lcm/discovery/product-catalog"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterLcmDiscoveryProductCatalogSummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
