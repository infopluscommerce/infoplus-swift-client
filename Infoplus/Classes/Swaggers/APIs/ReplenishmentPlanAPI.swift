//
// ReplenishmentPlanAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ReplenishmentPlanAPI: APIBase {
    /**
     
     Create a replenishmentPlan
     
     - parameter body: (body) ReplenishmentPlan to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentPlan(body body: ReplenishmentPlan, completion: ((data: ReplenishmentPlan?, error: ErrorType?) -> Void)) {
        addReplenishmentPlanWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a replenishmentPlan
     
     - POST /v1.0/replenishmentPlan
     - Inserts a new replenishmentPlan using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "name" : "aeiou",
  "id" : 123,
  "pickFaceAssignmentSmartFilterId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) ReplenishmentPlan to be inserted. 

     - returns: RequestBuilder<ReplenishmentPlan> 
     */
    public class func addReplenishmentPlanWithRequestBuilder(body body: ReplenishmentPlan) -> RequestBuilder<ReplenishmentPlan> {
        let path = "/v1.0/replenishmentPlan"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<ReplenishmentPlan>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a replenishmentPlan
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReplenishmentPlan(replenishmentPlanId replenishmentPlanId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteReplenishmentPlanWithRequestBuilder(replenishmentPlanId: replenishmentPlanId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a replenishmentPlan
     
     - DELETE /v1.0/replenishmentPlan/{replenishmentPlanId}
     - Deletes the replenishmentPlan identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReplenishmentPlanWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int) -> RequestBuilder<Void> {
        var path = "/v1.0/replenishmentPlan/{replenishmentPlanId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search replenishmentPlans by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentPlanByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [ReplenishmentPlan]?, error: ErrorType?) -> Void)) {
        getReplenishmentPlanByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search replenishmentPlans by filter
     
     - GET /v1.0/replenishmentPlan/search
     - Returns the list of replenishmentPlans that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "name" : "aeiou",
  "id" : 123,
  "pickFaceAssignmentSmartFilterId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ReplenishmentPlan]> 
     */
    public class func getReplenishmentPlanByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[ReplenishmentPlan]> {
        let path = "/v1.0/replenishmentPlan/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ReplenishmentPlan]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a replenishmentPlan by id
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentPlanById(replenishmentPlanId replenishmentPlanId: Int, completion: ((data: ReplenishmentPlan?, error: ErrorType?) -> Void)) {
        getReplenishmentPlanByIdWithRequestBuilder(replenishmentPlanId: replenishmentPlanId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a replenishmentPlan by id
     
     - GET /v1.0/replenishmentPlan/{replenishmentPlanId}
     - Returns the replenishmentPlan identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "name" : "aeiou",
  "id" : 123,
  "pickFaceAssignmentSmartFilterId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter replenishmentPlanId: (path) Id of the replenishmentPlan to be returned. 

     - returns: RequestBuilder<ReplenishmentPlan> 
     */
    public class func getReplenishmentPlanByIdWithRequestBuilder(replenishmentPlanId replenishmentPlanId: Int) -> RequestBuilder<ReplenishmentPlan> {
        var path = "/v1.0/replenishmentPlan/{replenishmentPlanId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentPlanId}", withString: "\(replenishmentPlanId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ReplenishmentPlan>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a replenishmentPlan
     
     - parameter body: (body) ReplenishmentPlan to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateReplenishmentPlan(body body: ReplenishmentPlan, completion: ((error: ErrorType?) -> Void)) {
        updateReplenishmentPlanWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a replenishmentPlan
     
     - PUT /v1.0/replenishmentPlan
     - Updates an existing replenishmentPlan using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ReplenishmentPlan to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReplenishmentPlanWithRequestBuilder(body body: ReplenishmentPlan) -> RequestBuilder<Void> {
        let path = "/v1.0/replenishmentPlan"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
