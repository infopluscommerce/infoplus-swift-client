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
     - POST /beta/orderSource
     - Inserts a new orderSource using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "orderInvoiceId" : 5,
  "shippingNotes" : "shippingNotes",
  "deliveredConfirmationEmailId" : 9,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "packingSlipId" : 1,
  "usesReservations" : false,
  "customFields" : {
    "key" : "{}"
  },
  "orderConfirmationEmailId" : 5,
  "outForDeliveryConfirmationEmailId" : 7,
  "defaultServiceTypeId" : 3,
  "packingNotes" : "packingNotes",
  "requireCartonizedASN" : false,
  "name" : "name",
  "id" : 0,
  "requireGS1128Label" : false,
  "shipmentConfirmationEmailId" : 2,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) OrderSource to be inserted. 

     - returns: RequestBuilder<OrderSource> 
     */
    public class func addOrderSourceWithRequestBuilder(body body: OrderSource) -> RequestBuilder<OrderSource> {
        let path = "/beta/orderSource"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderSource>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an orderSource
     
     - parameter orderSourceId: (path) Id of the orderSource to add an audit to 
     - parameter orderSourceAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceAudit(orderSourceId orderSourceId: Int32, orderSourceAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceAuditWithRequestBuilder(orderSourceId: orderSourceId, orderSourceAudit: orderSourceAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an orderSource
     - PUT /beta/orderSource/{orderSourceId}/audit/{orderSourceAudit}
     - Adds an audit to an existing orderSource.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceId: (path) Id of the orderSource to add an audit to 
     - parameter orderSourceAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceAuditWithRequestBuilder(orderSourceId orderSourceId: Int32, orderSourceAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSource/{orderSourceId}/audit/{orderSourceAudit}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceAudit}", withString: "\(orderSourceAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an orderSource
     
     - parameter orderSourceId: (path) Id of the orderSource to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceFile(orderSourceId orderSourceId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceFileWithRequestBuilder(orderSourceId: orderSourceId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an orderSource
     - POST /beta/orderSource/{orderSourceId}/file/{fileName}
     - Adds a file to an existing orderSource.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceId: (path) Id of the orderSource to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceFileWithRequestBuilder(orderSourceId orderSourceId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSource/{orderSourceId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an orderSource.
     
     - parameter orderSourceId: (path) Id of the orderSource to add a tag to 
     - parameter orderSourceTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderSourceTag(orderSourceId orderSourceId: Int32, orderSourceTag: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderSourceTagWithRequestBuilder(orderSourceId: orderSourceId, orderSourceTag: orderSourceTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an orderSource.
     - PUT /beta/orderSource/{orderSourceId}/tag/{orderSourceTag}
     - Adds a tag to an existing orderSource.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceId: (path) Id of the orderSource to add a tag to 
     - parameter orderSourceTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderSourceTagWithRequestBuilder(orderSourceId orderSourceId: Int32, orderSourceTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSource/{orderSourceId}/tag/{orderSourceTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceTag}", withString: "\(orderSourceTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an orderSource
     
     - parameter orderSourceId: (path) Id of the orderSource to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderSource(orderSourceId orderSourceId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderSourceWithRequestBuilder(orderSourceId: orderSourceId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an orderSource
     - DELETE /beta/orderSource/{orderSourceId}
     - Deletes the orderSource identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceId: (path) Id of the orderSource to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderSourceWithRequestBuilder(orderSourceId orderSourceId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderSource/{orderSourceId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an orderSource.
     
     - parameter orderSourceId: (path) Id of the orderSource to remove tag from 
     - parameter orderSourceTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderSourceTag(orderSourceId orderSourceId: Int32, orderSourceTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderSourceTagWithRequestBuilder(orderSourceId: orderSourceId, orderSourceTag: orderSourceTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an orderSource.
     - DELETE /beta/orderSource/{orderSourceId}/tag/{orderSourceTag}
     - Deletes an existing orderSource tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceId: (path) Id of the orderSource to remove tag from 
     - parameter orderSourceTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderSourceTagWithRequestBuilder(orderSourceId orderSourceId: Int32, orderSourceTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderSource/{orderSourceId}/tag/{orderSourceTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderSourceTag}", withString: "\(orderSourceTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an orderSource by id
     
     - parameter orderSourceId: (path) Id of the orderSource to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateOrderSourceById(orderSourceId orderSourceId: Int32, completion: ((data: OrderSource?, error: ErrorType?) -> Void)) {
        getDuplicateOrderSourceByIdWithRequestBuilder(orderSourceId: orderSourceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an orderSource by id
     - GET /beta/orderSource/duplicate/{orderSourceId}
     - Returns a duplicated orderSource identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "orderInvoiceId" : 5,
  "shippingNotes" : "shippingNotes",
  "deliveredConfirmationEmailId" : 9,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "packingSlipId" : 1,
  "usesReservations" : false,
  "customFields" : {
    "key" : "{}"
  },
  "orderConfirmationEmailId" : 5,
  "outForDeliveryConfirmationEmailId" : 7,
  "defaultServiceTypeId" : 3,
  "packingNotes" : "packingNotes",
  "requireCartonizedASN" : false,
  "name" : "name",
  "id" : 0,
  "requireGS1128Label" : false,
  "shipmentConfirmationEmailId" : 2,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter orderSourceId: (path) Id of the orderSource to be duplicated. 

     - returns: RequestBuilder<OrderSource> 
     */
    public class func getDuplicateOrderSourceByIdWithRequestBuilder(orderSourceId orderSourceId: Int32) -> RequestBuilder<OrderSource> {
        var path = "/beta/orderSource/duplicate/{orderSourceId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderSource>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search orderSources by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [OrderSource]?, error: ErrorType?) -> Void)) {
        getOrderSourceByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search orderSources by filter
     - GET /beta/orderSource/search
     - Returns the list of orderSources that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "orderInvoiceId" : 5,
  "shippingNotes" : "shippingNotes",
  "deliveredConfirmationEmailId" : 9,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "packingSlipId" : 1,
  "usesReservations" : false,
  "customFields" : {
    "key" : "{}"
  },
  "orderConfirmationEmailId" : 5,
  "outForDeliveryConfirmationEmailId" : 7,
  "defaultServiceTypeId" : 3,
  "packingNotes" : "packingNotes",
  "requireCartonizedASN" : false,
  "name" : "name",
  "id" : 0,
  "requireGS1128Label" : false,
  "shipmentConfirmationEmailId" : 2,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "orderInvoiceId" : 5,
  "shippingNotes" : "shippingNotes",
  "deliveredConfirmationEmailId" : 9,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "packingSlipId" : 1,
  "usesReservations" : false,
  "customFields" : {
    "key" : "{}"
  },
  "orderConfirmationEmailId" : 5,
  "outForDeliveryConfirmationEmailId" : 7,
  "defaultServiceTypeId" : 3,
  "packingNotes" : "packingNotes",
  "requireCartonizedASN" : false,
  "name" : "name",
  "id" : 0,
  "requireGS1128Label" : false,
  "shipmentConfirmationEmailId" : 2,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[OrderSource]> 
     */
    public class func getOrderSourceByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[OrderSource]> {
        let path = "/beta/orderSource/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[OrderSource]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an orderSource by id
     
     - parameter orderSourceId: (path) Id of the orderSource to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceById(orderSourceId orderSourceId: Int32, completion: ((data: OrderSource?, error: ErrorType?) -> Void)) {
        getOrderSourceByIdWithRequestBuilder(orderSourceId: orderSourceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an orderSource by id
     - GET /beta/orderSource/{orderSourceId}
     - Returns the orderSource identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "orderInvoiceId" : 5,
  "shippingNotes" : "shippingNotes",
  "deliveredConfirmationEmailId" : 9,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "packingSlipId" : 1,
  "usesReservations" : false,
  "customFields" : {
    "key" : "{}"
  },
  "orderConfirmationEmailId" : 5,
  "outForDeliveryConfirmationEmailId" : 7,
  "defaultServiceTypeId" : 3,
  "packingNotes" : "packingNotes",
  "requireCartonizedASN" : false,
  "name" : "name",
  "id" : 0,
  "requireGS1128Label" : false,
  "shipmentConfirmationEmailId" : 2,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter orderSourceId: (path) Id of the orderSource to be returned. 

     - returns: RequestBuilder<OrderSource> 
     */
    public class func getOrderSourceByIdWithRequestBuilder(orderSourceId orderSourceId: Int32) -> RequestBuilder<OrderSource> {
        var path = "/beta/orderSource/{orderSourceId}"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OrderSource>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an orderSource.
     
     - parameter orderSourceId: (path) Id of the orderSource to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderSourceTags(orderSourceId orderSourceId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getOrderSourceTagsWithRequestBuilder(orderSourceId: orderSourceId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an orderSource.
     - GET /beta/orderSource/{orderSourceId}/tag
     - Get all existing orderSource tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderSourceId: (path) Id of the orderSource to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getOrderSourceTagsWithRequestBuilder(orderSourceId orderSourceId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/orderSource/{orderSourceId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{orderSourceId}", withString: "\(orderSourceId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
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
     - PUT /beta/orderSource
     - Updates an existing orderSource using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OrderSource to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderSourceWithRequestBuilder(body body: OrderSource) -> RequestBuilder<Void> {
        let path = "/beta/orderSource"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an orderSource custom fields
     
     - parameter body: (body) OrderSource to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrderSourceCustomFields(body body: OrderSource, completion: ((error: ErrorType?) -> Void)) {
        updateOrderSourceCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an orderSource custom fields
     - PUT /beta/orderSource/customFields
     - Updates an existing orderSource custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OrderSource to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderSourceCustomFieldsWithRequestBuilder(body body: OrderSource) -> RequestBuilder<Void> {
        let path = "/beta/orderSource/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
