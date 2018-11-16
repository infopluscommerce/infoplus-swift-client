//
// OrderSourceReservationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderSourceReservationAPI: APIBase {
    /**
     Create an orderSourceReservation
     
     - parameter body: (body) OrderSourceReservation to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceReservation(body body: OrderSourceReservation, completion: ((data: OrderSourceReservation?, error: ErrorType?) -> Void)) {
        addOrderSourceReservationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an orderSourceReservation
     - POST /beta/orderSourceReservation
     - Inserts a new orderSourceReservation using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "orderSourceId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reservedQuantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) OrderSourceReservation to be inserted. 

     - returns: RequestBuilder<OrderSourceReservation> 
     */
    public class func addOrderSourceReservationWithRequestBuilder(body body: OrderSourceReservation) -> RequestBuilder<OrderSourceReservation> {
        let path = "/beta/orderSourceReservation"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderSourceReservation>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an orderSourceReservation
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to add an audit to 
     - parameter orderSourceReservationAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceReservationAudit(orderSourceReservationId orderSourceReservationId: Int32, orderSourceReservationAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceReservationAuditWithRequestBuilder(orderSourceReservationId: orderSourceReservationId, orderSourceReservationAudit: orderSourceReservationAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an orderSourceReservation
     - PUT /beta/orderSourceReservation/{orderSourceReservationId}/audit/{orderSourceReservationAudit}
     - Adds an audit to an existing orderSourceReservation.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to add an audit to 
     - parameter orderSourceReservationAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceReservationAuditWithRequestBuilder(orderSourceReservationId orderSourceReservationId: Int32, orderSourceReservationAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceReservation/{orderSourceReservationId}/audit/{orderSourceReservationAudit}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationId}", withString: "\(orderSourceReservationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationAudit}", withString: "\(orderSourceReservationAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an orderSourceReservation.
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to add a tag to 
     - parameter orderSourceReservationTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceReservationTag(orderSourceReservationId orderSourceReservationId: Int32, orderSourceReservationTag: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceReservationTagWithRequestBuilder(orderSourceReservationId: orderSourceReservationId, orderSourceReservationTag: orderSourceReservationTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an orderSourceReservation.
     - PUT /beta/orderSourceReservation/{orderSourceReservationId}/tag/{orderSourceReservationTag}
     - Adds a tag to an existing orderSourceReservation.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to add a tag to 
     - parameter orderSourceReservationTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceReservationTagWithRequestBuilder(orderSourceReservationId orderSourceReservationId: Int32, orderSourceReservationTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceReservation/{orderSourceReservationId}/tag/{orderSourceReservationTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationId}", withString: "\(orderSourceReservationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationTag}", withString: "\(orderSourceReservationTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an orderSourceReservation
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderSourceReservation(orderSourceReservationId orderSourceReservationId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderSourceReservationWithRequestBuilder(orderSourceReservationId: orderSourceReservationId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an orderSourceReservation
     - DELETE /beta/orderSourceReservation/{orderSourceReservationId}
     - Deletes the orderSourceReservation identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderSourceReservationWithRequestBuilder(orderSourceReservationId orderSourceReservationId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceReservation/{orderSourceReservationId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationId}", withString: "\(orderSourceReservationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an orderSourceReservation.
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to remove tag from 
     - parameter orderSourceReservationTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderSourceReservationTag(orderSourceReservationId orderSourceReservationId: Int32, orderSourceReservationTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderSourceReservationTagWithRequestBuilder(orderSourceReservationId: orderSourceReservationId, orderSourceReservationTag: orderSourceReservationTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an orderSourceReservation.
     - DELETE /beta/orderSourceReservation/{orderSourceReservationId}/tag/{orderSourceReservationTag}
     - Deletes an existing orderSourceReservation tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to remove tag from 
     - parameter orderSourceReservationTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderSourceReservationTagWithRequestBuilder(orderSourceReservationId orderSourceReservationId: Int32, orderSourceReservationTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceReservation/{orderSourceReservationId}/tag/{orderSourceReservationTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationId}", withString: "\(orderSourceReservationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationTag}", withString: "\(orderSourceReservationTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an orderSourceReservation by id
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateOrderSourceReservationById(orderSourceReservationId orderSourceReservationId: Int32, completion: ((data: OrderSourceReservation?, error: ErrorType?) -> Void)) {
        getDuplicateOrderSourceReservationByIdWithRequestBuilder(orderSourceReservationId: orderSourceReservationId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an orderSourceReservation by id
     - GET /beta/orderSourceReservation/duplicate/{orderSourceReservationId}
     - Returns a duplicated orderSourceReservation identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "orderSourceId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reservedQuantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to be duplicated. 

     - returns: RequestBuilder<OrderSourceReservation> 
     */
    public class func getDuplicateOrderSourceReservationByIdWithRequestBuilder(orderSourceReservationId orderSourceReservationId: Int32) -> RequestBuilder<OrderSourceReservation> {
        var path = "/beta/orderSourceReservation/duplicate/{orderSourceReservationId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationId}", withString: "\(orderSourceReservationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderSourceReservation>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search orderSourceReservations by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceReservationByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [OrderSourceReservation]?, error: ErrorType?) -> Void)) {
        getOrderSourceReservationByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search orderSourceReservations by filter
     - GET /beta/orderSourceReservation/search
     - Returns the list of orderSourceReservations that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "orderSourceId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reservedQuantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "orderSourceId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reservedQuantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[OrderSourceReservation]> 
     */
    public class func getOrderSourceReservationByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[OrderSourceReservation]> {
        let path = "/beta/orderSourceReservation/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[OrderSourceReservation]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an orderSourceReservation by id
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceReservationById(orderSourceReservationId orderSourceReservationId: Int32, completion: ((data: OrderSourceReservation?, error: ErrorType?) -> Void)) {
        getOrderSourceReservationByIdWithRequestBuilder(orderSourceReservationId: orderSourceReservationId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an orderSourceReservation by id
     - GET /beta/orderSourceReservation/{orderSourceReservationId}
     - Returns the orderSourceReservation identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "orderSourceId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "reservedQuantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to be returned. 

     - returns: RequestBuilder<OrderSourceReservation> 
     */
    public class func getOrderSourceReservationByIdWithRequestBuilder(orderSourceReservationId orderSourceReservationId: Int32) -> RequestBuilder<OrderSourceReservation> {
        var path = "/beta/orderSourceReservation/{orderSourceReservationId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationId}", withString: "\(orderSourceReservationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderSourceReservation>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an orderSourceReservation.
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceReservationTags(orderSourceReservationId orderSourceReservationId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getOrderSourceReservationTagsWithRequestBuilder(orderSourceReservationId: orderSourceReservationId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an orderSourceReservation.
     - GET /beta/orderSourceReservation/{orderSourceReservationId}/tag
     - Get all existing orderSourceReservation tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceReservationId: (path) Id of the orderSourceReservation to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getOrderSourceReservationTagsWithRequestBuilder(orderSourceReservationId orderSourceReservationId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderSourceReservation/{orderSourceReservationId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceReservationId}", withString: "\(orderSourceReservationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an orderSourceReservation
     
     - parameter body: (body) OrderSourceReservation to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrderSourceReservation(body body: OrderSourceReservation, completion: ((error: ErrorType?) -> Void)) {
        updateOrderSourceReservationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an orderSourceReservation
     - PUT /beta/orderSourceReservation
     - Updates an existing orderSourceReservation using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OrderSourceReservation to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderSourceReservationWithRequestBuilder(body body: OrderSourceReservation) -> RequestBuilder<Void> {
        let path = "/beta/orderSourceReservation"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an orderSourceReservation custom fields
     
     - parameter body: (body) OrderSourceReservation to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrderSourceReservationCustomFields(body body: OrderSourceReservation, completion: ((error: ErrorType?) -> Void)) {
        updateOrderSourceReservationCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an orderSourceReservation custom fields
     - PUT /beta/orderSourceReservation/customFields
     - Updates an existing orderSourceReservation custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OrderSourceReservation to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderSourceReservationCustomFieldsWithRequestBuilder(body body: OrderSourceReservation) -> RequestBuilder<Void> {
        let path = "/beta/orderSourceReservation/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
