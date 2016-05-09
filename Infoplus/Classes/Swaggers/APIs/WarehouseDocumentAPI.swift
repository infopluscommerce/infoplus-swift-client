//
// WarehouseDocumentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class WarehouseDocumentAPI: APIBase {
    /**
     
     Search warehouseDocuments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseDocumentByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [WarehouseDocument]?, error: ErrorType?) -> Void)) {
        getWarehouseDocumentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search warehouseDocuments by filter
     
     - GET /v1.0/warehouseDocument/search
     - Returns the list of warehouseDocuments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "clientId" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "documentType" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[WarehouseDocument]> 
     */
    public class func getWarehouseDocumentByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[WarehouseDocument]> {
        let path = "/v1.0/warehouseDocument/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[WarehouseDocument]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a warehouseDocument by id
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseDocumentById(warehouseDocumentId warehouseDocumentId: Int, completion: ((data: WarehouseDocument?, error: ErrorType?) -> Void)) {
        getWarehouseDocumentByIdWithRequestBuilder(warehouseDocumentId: warehouseDocumentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a warehouseDocument by id
     
     - GET /v1.0/warehouseDocument/{warehouseDocumentId}
     - Returns the warehouseDocument identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "documentType" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to be returned. 

     - returns: RequestBuilder<WarehouseDocument> 
     */
    public class func getWarehouseDocumentByIdWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int) -> RequestBuilder<WarehouseDocument> {
        var path = "/v1.0/warehouseDocument/{warehouseDocumentId}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<WarehouseDocument>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
