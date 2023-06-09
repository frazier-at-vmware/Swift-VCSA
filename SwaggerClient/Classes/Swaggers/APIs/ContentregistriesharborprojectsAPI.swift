//
// ContentregistriesharborprojectsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ContentregistriesharborprojectsAPI {
    /**
     Returns detailed information about the specified Harbor project.
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(registry: String, project: String, completion: @escaping ((_ data: VcenterContentRegistriesHarborProjectsInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(registry: registry, project: project).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns detailed information about the specified Harbor project.
     - GET /api/vcenter/content/registries/harbor/{registry}/projects/{project}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 

     - returns: RequestBuilder<VcenterContentRegistriesHarborProjectsInfo> 
     */
    open class func callGetWithRequestBuilder(registry: String, project: String) -> RequestBuilder<VcenterContentRegistriesHarborProjectsInfo> {
        var path = "/api/vcenter/content/registries/harbor/{registry}/projects/{project}"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let projectPreEscape = "\(project)"
        let projectPostEscape = projectPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{project}", with: projectPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterContentRegistriesHarborProjectsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns detailed information about the specified Harbor project.
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet_0(registry: String, project: String, completion: @escaping ((_ data: VcenterContentRegistriesHarborProjectsResp?,_ error: Error?) -> Void)) {
        callGet_0WithRequestBuilder(registry: registry, project: project).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns detailed information about the specified Harbor project.
     - GET /rest/vcenter/content/registries/harbor/{registry}/projects/{project}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 

     - returns: RequestBuilder<VcenterContentRegistriesHarborProjectsResp> 
     */
    open class func callGet_0WithRequestBuilder(registry: String, project: String) -> RequestBuilder<VcenterContentRegistriesHarborProjectsResp> {
        var path = "/rest/vcenter/content/registries/harbor/{registry}/projects/{project}"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let projectPreEscape = "\(project)"
        let projectPostEscape = projectPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{project}", with: projectPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterContentRegistriesHarborProjectsResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
     
     - parameter registry: (path) Identifier of the Registry. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(registry: String, requestBody: VcenterContentRegistriesHarborProjectsCreate? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(registry: registry, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
     - POST /api/vcenter/content/registries/harbor/{registry}/projects
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter registry: (path) Identifier of the Registry. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createWithRequestBuilder(registry: String, requestBody: VcenterContentRegistriesHarborProjectsCreate? = nil) -> RequestBuilder<String> {
        var path = "/api/vcenter/content/registries/harbor/{registry}/projects"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
     
     - parameter registry: (path) Identifier of the Registry. 
     - parameter requestBody: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create_0(registry: String, requestBody: VcenterContentRegistriesHarborProjectsCreate, completion: @escaping ((_ data: VcenterContentRegistriesHarborProjectsCreateResp?,_ error: Error?) -> Void)) {
        create_0WithRequestBuilder(registry: registry, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
     - POST /rest/vcenter/content/registries/harbor/{registry}/projects
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter registry: (path) Identifier of the Registry. 
     - parameter requestBody: (body)  

     - returns: RequestBuilder<VcenterContentRegistriesHarborProjectsCreateResp> 
     */
    open class func create_0WithRequestBuilder(registry: String, requestBody: VcenterContentRegistriesHarborProjectsCreate) -> RequestBuilder<VcenterContentRegistriesHarborProjectsCreateResp> {
        var path = "/rest/vcenter/content/registries/harbor/{registry}/projects"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterContentRegistriesHarborProjectsCreateResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func delete(registry: String, project: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteWithRequestBuilder(registry: registry, project: project).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
     - DELETE /api/vcenter/content/registries/harbor/{registry}/projects/{project}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(registry: String, project: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/content/registries/harbor/{registry}/projects/{project}"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let projectPreEscape = "\(project)"
        let projectPostEscape = projectPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{project}", with: projectPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func delete_0(registry: String, project: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        delete_0WithRequestBuilder(registry: registry, project: project).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
     - DELETE /rest/vcenter/content/registries/harbor/{registry}/projects/{project}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 

     - returns: RequestBuilder<Void> 
     */
    open class func delete_0WithRequestBuilder(registry: String, project: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/content/registries/harbor/{registry}/projects/{project}"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let projectPreEscape = "\(project)"
        let projectPostEscape = projectPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{project}", with: projectPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns basic information of all projects in a Harbor registry.
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(registry: String, completion: @escaping ((_ data: [VcenterContentRegistriesHarborProjectsSummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder(registry: registry).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns basic information of all projects in a Harbor registry.
     - GET /api/vcenter/content/registries/harbor/{registry}/projects
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter registry: (path) Identifier of the registry. 

     - returns: RequestBuilder<[VcenterContentRegistriesHarborProjectsSummary]> 
     */
    open class func listWithRequestBuilder(registry: String) -> RequestBuilder<[VcenterContentRegistriesHarborProjectsSummary]> {
        var path = "/api/vcenter/content/registries/harbor/{registry}/projects"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterContentRegistriesHarborProjectsSummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns basic information of all projects in a Harbor registry.
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list_0(registry: String, completion: @escaping ((_ data: VcenterContentRegistriesHarborProjectsListResp?,_ error: Error?) -> Void)) {
        list_0WithRequestBuilder(registry: registry).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns basic information of all projects in a Harbor registry.
     - GET /rest/vcenter/content/registries/harbor/{registry}/projects
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter registry: (path) Identifier of the registry. 

     - returns: RequestBuilder<VcenterContentRegistriesHarborProjectsListResp> 
     */
    open class func list_0WithRequestBuilder(registry: String) -> RequestBuilder<VcenterContentRegistriesHarborProjectsListResp> {
        var path = "/rest/vcenter/content/registries/harbor/{registry}/projects"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterContentRegistriesHarborProjectsListResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func purge(registry: String, project: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        purgeWithRequestBuilder(registry: registry, project: project).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
     - POST /api/vcenter/content/registries/harbor/{registry}/projects/{project}?action=purge
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 

     - returns: RequestBuilder<Void> 
     */
    open class func purgeWithRequestBuilder(registry: String, project: String) -> RequestBuilder<Void> {
        var path = "/api/vcenter/content/registries/harbor/{registry}/projects/{project}?action=purge"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let projectPreEscape = "\(project)"
        let projectPostEscape = projectPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{project}", with: projectPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func purge_0(registry: String, project: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        purge_0WithRequestBuilder(registry: registry, project: project).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
     - POST /rest/vcenter/content/registries/harbor/{registry}/projects/{project}?action=purge
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter registry: (path) Identifier of the registry. 
     - parameter project: (path) Identifier of the Harbor project. 

     - returns: RequestBuilder<Void> 
     */
    open class func purge_0WithRequestBuilder(registry: String, project: String) -> RequestBuilder<Void> {
        var path = "/rest/vcenter/content/registries/harbor/{registry}/projects/{project}?action=purge"
        let registryPreEscape = "\(registry)"
        let registryPostEscape = registryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registry}", with: registryPostEscape, options: .literal, range: nil)
        let projectPreEscape = "\(project)"
        let projectPostEscape = projectPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{project}", with: projectPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
