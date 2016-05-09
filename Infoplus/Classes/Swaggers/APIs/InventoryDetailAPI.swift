//
// InventoryDetailAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class InventoryDetailAPI: APIBase {
    /**
     
     Search inventoryDetails by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryDetailByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [InventoryDetail]?, error: ErrorType?) -> Void)) {
        getInventoryDetailByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search inventoryDetails by filter
     
     - GET /v1.0/inventoryDetail/search
     - Returns the list of inventoryDetails that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "unitsPerWrap" : 123,
  "quantity" : 123,
  "poNo" : "aeiou",
  "revisionDate" : "aeiou",
  "distributionDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseLocationId" : 123,
  "productionLot" : "aeiou",
  "id" : 123,
  "sku" : "aeiou",
  "unitsPerCase" : 123,
  "lobId" : 123
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[InventoryDetail]> 
     */
    public class func getInventoryDetailByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[InventoryDetail]> {
        let path = "/v1.0/inventoryDetail/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[InventoryDetail]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an inventoryDetail by id
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryDetailById(inventoryDetailId inventoryDetailId: Int, completion: ((data: InventoryDetail?, error: ErrorType?) -> Void)) {
        getInventoryDetailByIdWithRequestBuilder(inventoryDetailId: inventoryDetailId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an inventoryDetail by id
     
     - GET /v1.0/inventoryDetail/{inventoryDetailId}
     - Returns the inventoryDetail identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "unitsPerWrap" : 123,
  "quantity" : 123,
  "poNo" : "aeiou",
  "revisionDate" : "aeiou",
  "distributionDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseLocationId" : 123,
  "productionLot" : "aeiou",
  "id" : 123,
  "sku" : "aeiou",
  "unitsPerCase" : 123,
  "lobId" : 123
}}]
     
     - parameter inventoryDetailId: (path) Id of the inventoryDetail to be returned. 

     - returns: RequestBuilder<InventoryDetail> 
     */
    public class func getInventoryDetailByIdWithRequestBuilder(inventoryDetailId inventoryDetailId: Int) -> RequestBuilder<InventoryDetail> {
        var path = "/v1.0/inventoryDetail/{inventoryDetailId}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryDetailId}", withString: "\(inventoryDetailId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<InventoryDetail>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
