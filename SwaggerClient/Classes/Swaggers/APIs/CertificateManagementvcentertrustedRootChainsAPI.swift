//
// CertificateManagementvcentertrustedRootChainsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CertificateManagementvcentertrustedRootChainsAPI {
    /**
     Retrieve a trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
     
     - parameter chain: (path) Unique identifier for a trusted root cert chain. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(chain: String, completion: @escaping ((_ data: VcenterCertificateManagementVcenterTrustedRootChainsInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(chain: chain).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve a trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
     - GET /api/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter chain: (path) Unique identifier for a trusted root cert chain. 

     - returns: RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsInfo> 
     */
    open class func callGetWithRequestBuilder(chain: String) -> RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsInfo> {
        var path = "/api/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}"
        let chainPreEscape = "\(chain)"
        let chainPostEscape = chainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chain}", with: chainPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve a trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
     
     - parameter chain: (path) Unique identifier for a trusted root cert chain. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(chain: String, completion: @escaping ((_ data: VcenterCertificateManagementVcenterTrustedRootChainsResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder(chain: chain).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve a trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
     - GET /rest/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter chain: (path) Unique identifier for a trusted root cert chain. 

     - returns: RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsResp> 
     */
    open class func callGet_0WithRequestBuilder(chain: String) -> RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsResp> {
        var path = "/rest/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}"
        let chainPreEscape = "\(chain)"
        let chainPostEscape = chainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chain}", with: chainPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Creates a new trusted root certificate chain from the CreateSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
     
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(requestBody: VcenterCertificateManagementVcenterTrustedRootChainsCreate? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates a new trusted root certificate chain from the CreateSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
     - POST /api/vcenter/certificate-management/vcenter/trusted-root-chains
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createWithRequestBuilder(requestBody: VcenterCertificateManagementVcenterTrustedRootChainsCreate? = nil) -> RequestBuilder<String> {
        let path = "/api/vcenter/certificate-management/vcenter/trusted-root-chains"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Creates a new trusted root certificate chain from the CreateSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
     
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create_0(requestBody: VcenterCertificateManagementVcenterTrustedRootChainsCreate, completion: @escaping ((_ data: VcenterCertificateManagementVcenterTrustedRootChainsCreateResp?,_ error: Error?) -> Void)) {
        create_0WithRequestBuilder(requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates a new trusted root certificate chain from the CreateSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
     - POST /rest/vcenter/certificate-management/vcenter/trusted-root-chains
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter requestBody: (body)  

     - returns: RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsCreateResp> 
     */
    open class func create_0WithRequestBuilder(requestBody: VcenterCertificateManagementVcenterTrustedRootChainsCreate) -> RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsCreateResp> {
        let path = "/rest/vcenter/certificate-management/vcenter/trusted-root-chains"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsCreateResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Deletes trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
     
     - parameter chain: (path) Unique identifier for a trusted root cert chain. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func delete(chain: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteWithRequestBuilder(chain: chain).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Deletes trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
     - DELETE /api/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter chain: (path) Unique identifier for a trusted root cert chain. 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(chain: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}"
        let chainPreEscape = "\(chain)"
        let chainPostEscape = chainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chain}", with: chainPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Deletes trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
     
     - parameter chain: (path) Unique identifier for a trusted root cert chain. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func delete_0(chain: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        delete_0WithRequestBuilder(chain: chain).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Deletes trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
     - DELETE /rest/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter chain: (path) Unique identifier for a trusted root cert chain. 

     - returns: RequestBuilder<Void> 
     */
    open class func delete_0WithRequestBuilder(chain: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}"
        let chainPreEscape = "\(chain)"
        let chainPostEscape = chainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chain}", with: chainPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns summary information for each trusted root certificate chain. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(completion: @escaping ((_ data: [VcenterCertificateManagementVcenterTrustedRootChainsSummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns summary information for each trusted root certificate chain. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
     - GET /api/vcenter/certificate-management/vcenter/trusted-root-chains
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]

     - returns: RequestBuilder<[VcenterCertificateManagementVcenterTrustedRootChainsSummary]> 
     */
    open class func listWithRequestBuilder() -> RequestBuilder<[VcenterCertificateManagementVcenterTrustedRootChainsSummary]> {
        let path = "/api/vcenter/certificate-management/vcenter/trusted-root-chains"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterCertificateManagementVcenterTrustedRootChainsSummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns summary information for each trusted root certificate chain. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list_0(completion: @escaping ((_ data: VcenterCertificateManagementVcenterTrustedRootChainsListResp?,_ error: Error?) -> Void)) {
        list_0WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns summary information for each trusted root certificate chain. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
     - GET /rest/vcenter/certificate-management/vcenter/trusted-root-chains
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]

     - returns: RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsListResp> 
     */
    open class func list_0WithRequestBuilder() -> RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsListResp> {
        let path = "/rest/vcenter/certificate-management/vcenter/trusted-root-chains"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterCertificateManagementVcenterTrustedRootChainsListResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
