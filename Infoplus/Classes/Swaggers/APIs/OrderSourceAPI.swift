//
// OrderSourceAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderSourceAPI: APIBase {
    /**
     
     Create an orderSource
     
     - parameter body: (body) OrderSource to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSource(body body: OrderSource, completion: ((data: OrderSource?, error: ErrorType?) -> Void)) {
        addOrderSourceWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create an orderSource
     
     - POST /v1.0/orderSource
     - Inserts a new orderSource using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "shippingNotes" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "packingNotes" : "aeiou",
  "packingSlipId" : 123,
  "requireCartonizedASN" : true,
  "name" : "aeiou",
  "orderConfirmationEmailId" : 123,
  "id" : 123,
  "requireGS1128Label" : true,
  "shipmentConfirmationEmailId" : 123,
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) OrderSource to be inserted. 

     - returns: RequestBuilder<OrderSource> 
     */
    public class func addOrderSourceWithRequestBuilder(body body: OrderSource) -> RequestBuilder<OrderSource> {
        let path = "/v1.0/orderSource"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<OrderSource>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete an orderSource
     
     - parameter orderSourceId: (path) Id of the orderSource to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderSource(orderSourceId orderSourceId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderSourceWithRequestBuilder(orderSourceId: orderSourceId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete an orderSource
     
     - DELETE /v1.0/orderSource/{orderSourceId}
     - Deletes the orderSource identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceId: (path) Id of the orderSource to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderSourceWithRequestBuilder(orderSourceId orderSourceId: Int) -> RequestBuilder<Void> {
        var path = "/v1.0/orderSource/{orderSourceId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search orderSources by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [OrderSource]?, error: ErrorType?) -> Void)) {
        getOrderSourceByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search orderSources by filter
     
     - GET /v1.0/orderSource/search
     - Returns the list of orderSources that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "shippingNotes" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "packingNotes" : "aeiou",
  "packingSlipId" : 123,
  "requireCartonizedASN" : true,
  "name" : "aeiou",
  "orderConfirmationEmailId" : 123,
  "id" : 123,
  "requireGS1128Label" : true,
  "shipmentConfirmationEmailId" : 123,
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[OrderSource]> 
     */
    public class func getOrderSourceByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[OrderSource]> {
        let path = "/v1.0/orderSource/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[OrderSource]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an orderSource by id
     
     - parameter orderSourceId: (path) Id of the orderSource to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceById(orderSourceId orderSourceId: Int, completion: ((data: OrderSource?, error: ErrorType?) -> Void)) {
        getOrderSourceByIdWithRequestBuilder(orderSourceId: orderSourceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an orderSource by id
     
     - GET /v1.0/orderSource/{orderSourceId}
     - Returns the orderSource identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "shippingNotes" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "packingNotes" : "aeiou",
  "packingSlipId" : 123,
  "requireCartonizedASN" : true,
  "name" : "aeiou",
  "orderConfirmationEmailId" : 123,
  "id" : 123,
  "requireGS1128Label" : true,
  "shipmentConfirmationEmailId" : 123,
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter orderSourceId: (path) Id of the orderSource to be returned. 

     - returns: RequestBuilder<OrderSource> 
     */
    public class func getOrderSourceByIdWithRequestBuilder(orderSourceId orderSourceId: Int) -> RequestBuilder<OrderSource> {
        var path = "/v1.0/orderSource/{orderSourceId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<OrderSource>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an orderSource
     
     - parameter body: (body) OrderSource to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrderSource(body body: OrderSource, completion: ((error: ErrorType?) -> Void)) {
        updateOrderSourceWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an orderSource
     
     - PUT /v1.0/orderSource
     - Updates an existing orderSource using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OrderSource to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderSourceWithRequestBuilder(body body: OrderSource) -> RequestBuilder<Void> {
        let path = "/v1.0/orderSource"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
