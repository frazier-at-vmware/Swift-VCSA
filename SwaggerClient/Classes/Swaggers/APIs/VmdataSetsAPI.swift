//
// VmdataSetsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VmdataSetsAPI {
    /**
     Returns information describing a data set. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetGet.  
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter dataSet: (path) Identifier of the data set to be queried. The parameter must be an identifier for the resource type: vcenter.vm.DataSet. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(vm: String, dataSet: String, completion: @escaping ((_ data: VcenterVmDataSetsInfo?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(vm: vm, dataSet: dataSet).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns information describing a data set. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetGet.  
     - GET /api/vcenter/vm/{vm}/data-sets/{data_set}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter dataSet: (path) Identifier of the data set to be queried. The parameter must be an identifier for the resource type: vcenter.vm.DataSet. 

     - returns: RequestBuilder<VcenterVmDataSetsInfo> 
     */
    open class func callGetWithRequestBuilder(vm: String, dataSet: String) -> RequestBuilder<VcenterVmDataSetsInfo> {
        var path = "/api/vcenter/vm/{vm}/data-sets/{data_set}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let dataSetPreEscape = "\(dataSet)"
        let dataSetPostEscape = dataSetPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{data_set}", with: dataSetPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VcenterVmDataSetsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Creates a new data set. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetCreate.  
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(vm: String, requestBody: VcenterVmDataSetsCreate? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(vm: vm, requestBody: requestBody).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates a new data set. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetCreate.  
     - POST /api/vcenter/vm/{vm}/data-sets
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createWithRequestBuilder(vm: String, requestBody: VcenterVmDataSetsCreate? = nil) -> RequestBuilder<String> {
        var path = "/api/vcenter/vm/{vm}/data-sets"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a data set. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetDelete.  
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter dataSet: (path) Identifier of the data set to be deleted. The parameter must be an identifier for the resource type: vcenter.vm.DataSet. 
     - parameter force: (query) If true, delete the data set even if it is not empty. If unset a ResourceInUse error will be reported if the data set is not empty. This is the equivalent of passing the value false. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func delete(vm: String, dataSet: String, force: Bool? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteWithRequestBuilder(vm: vm, dataSet: dataSet, force: force).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete a data set. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetDelete.  
     - DELETE /api/vcenter/vm/{vm}/data-sets/{data_set}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter dataSet: (path) Identifier of the data set to be deleted. The parameter must be an identifier for the resource type: vcenter.vm.DataSet. 
     - parameter force: (query) If true, delete the data set even if it is not empty. If unset a ResourceInUse error will be reported if the data set is not empty. This is the equivalent of passing the value false. (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(vm: String, dataSet: String, force: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/data-sets/{data_set}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let dataSetPreEscape = "\(dataSet)"
        let dataSetPostEscape = dataSetPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{data_set}", with: dataSetPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "force": force
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Lists the data sets of a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetList.  
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(vm: String, completion: @escaping ((_ data: [VcenterVmDataSetsSummary]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder(vm: vm).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Lists the data sets of a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetList.  
     - GET /api/vcenter/vm/{vm}/data-sets
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     - examples: [{contentType=application/json, example={}}]
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 

     - returns: RequestBuilder<[VcenterVmDataSetsSummary]> 
     */
    open class func listWithRequestBuilder(vm: String) -> RequestBuilder<[VcenterVmDataSetsSummary]> {
        var path = "/api/vcenter/vm/{vm}/data-sets"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[VcenterVmDataSetsSummary]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Modifies the attributes of a data set. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetUpdate.  
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter dataSet: (path) Identifier of the data set to be queried. The parameter must be an identifier for the resource type: vcenter.vm.DataSet. 
     - parameter requestBody: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(vm: String, dataSet: String, requestBody: VcenterVmDataSetsUpdate? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(vm: vm, dataSet: dataSet, requestBody: requestBody).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Modifies the attributes of a data set. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.DataSets.DataSetUpdate.  
     - PATCH /api/vcenter/vm/{vm}/data-sets/{data_set}
     - API Key:
       - type: apiKey vmware-api-session-id 
       - name: session_id
     
     - parameter vm: (path) Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. 
     - parameter dataSet: (path) Identifier of the data set to be queried. The parameter must be an identifier for the resource type: vcenter.vm.DataSet. 
     - parameter requestBody: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateWithRequestBuilder(vm: String, dataSet: String, requestBody: VcenterVmDataSetsUpdate? = nil) -> RequestBuilder<Void> {
        var path = "/api/vcenter/vm/{vm}/data-sets/{data_set}"
        let vmPreEscape = "\(vm)"
        let vmPostEscape = vmPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{vm}", with: vmPostEscape, options: .literal, range: nil)
        let dataSetPreEscape = "\(dataSet)"
        let dataSetPostEscape = dataSetPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{data_set}", with: dataSetPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
