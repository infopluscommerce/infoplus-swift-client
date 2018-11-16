//
// QuickAdjustmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class QuickAdjustmentAPI: APIBase {
    /**
     Create a quickAdjustment
     
     - parameter body: (body) QuickAdjustment to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addQuickAdjustment(body body: QuickAdjustment, completion: ((data: QuickAdjustment?, error: ErrorType?) -> Void)) {
        addQuickAdjustmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a quickAdjustment
     - POST /beta/quickAdjustment
     - Inserts a new quickAdjustment using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "adjustmentCode" : "adjustmentCode",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "productIdTag" : "productIdTag",
  "message" : "message",
  "totalQuantity" : 5,
  "warehouseId" : 6,
  "locationId" : 1,
  "changeQuantity" : 5,
  "id" : 0,
  "sku" : "sku",
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) QuickAdjustment to be inserted. 

     - returns: RequestBuilder<QuickAdjustment> 
     */
    public class func addQuickAdjustmentWithRequestBuilder(body body: QuickAdjustment) -> RequestBuilder<QuickAdjustment> {
        let path = "/beta/quickAdjustment"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<QuickAdjustment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a quickAdjustment
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to add an audit to 
     - parameter quickAdjustmentAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addQuickAdjustmentAudit(quickAdjustmentId quickAdjustmentId: Int32, quickAdjustmentAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addQuickAdjustmentAuditWithRequestBuilder(quickAdjustmentId: quickAdjustmentId, quickAdjustmentAudit: quickAdjustmentAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a quickAdjustment
     - PUT /beta/quickAdjustment/{quickAdjustmentId}/audit/{quickAdjustmentAudit}
     - Adds an audit to an existing quickAdjustment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to add an audit to 
     - parameter quickAdjustmentAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addQuickAdjustmentAuditWithRequestBuilder(quickAdjustmentId quickAdjustmentId: Int32, quickAdjustmentAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/quickAdjustment/{quickAdjustmentId}/audit/{quickAdjustmentAudit}"
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentId}", withString: "\(quickAdjustmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentAudit}", withString: "\(quickAdjustmentAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a quickAdjustment.
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to add a tag to 
     - parameter quickAdjustmentTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addQuickAdjustmentTag(quickAdjustmentId quickAdjustmentId: Int32, quickAdjustmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        addQuickAdjustmentTagWithRequestBuilder(quickAdjustmentId: quickAdjustmentId, quickAdjustmentTag: quickAdjustmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a quickAdjustment.
     - PUT /beta/quickAdjustment/{quickAdjustmentId}/tag/{quickAdjustmentTag}
     - Adds a tag to an existing quickAdjustment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to add a tag to 
     - parameter quickAdjustmentTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addQuickAdjustmentTagWithRequestBuilder(quickAdjustmentId quickAdjustmentId: Int32, quickAdjustmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/quickAdjustment/{quickAdjustmentId}/tag/{quickAdjustmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentId}", withString: "\(quickAdjustmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentTag}", withString: "\(quickAdjustmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a quickAdjustment
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteQuickAdjustment(quickAdjustmentId quickAdjustmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteQuickAdjustmentWithRequestBuilder(quickAdjustmentId: quickAdjustmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a quickAdjustment
     - DELETE /beta/quickAdjustment/{quickAdjustmentId}
     - Deletes the quickAdjustment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteQuickAdjustmentWithRequestBuilder(quickAdjustmentId quickAdjustmentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/quickAdjustment/{quickAdjustmentId}"
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentId}", withString: "\(quickAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a quickAdjustment.
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to remove tag from 
     - parameter quickAdjustmentTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteQuickAdjustmentTag(quickAdjustmentId quickAdjustmentId: Int32, quickAdjustmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteQuickAdjustmentTagWithRequestBuilder(quickAdjustmentId: quickAdjustmentId, quickAdjustmentTag: quickAdjustmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a quickAdjustment.
     - DELETE /beta/quickAdjustment/{quickAdjustmentId}/tag/{quickAdjustmentTag}
     - Deletes an existing quickAdjustment tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to remove tag from 
     - parameter quickAdjustmentTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteQuickAdjustmentTagWithRequestBuilder(quickAdjustmentId quickAdjustmentId: Int32, quickAdjustmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/quickAdjustment/{quickAdjustmentId}/tag/{quickAdjustmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentId}", withString: "\(quickAdjustmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentTag}", withString: "\(quickAdjustmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Run the ExecuteQuickAdjustment process.
     
     - parameter body: (body) Input data for ExecuteQuickAdjustment process. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func executeQuickAdjustment(body body: ExecuteQuickAdjustmentInputAPIModel, completion: ((data: [ProcessOutputAPIModel]?, error: ErrorType?) -> Void)) {
        executeQuickAdjustmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Run the ExecuteQuickAdjustment process.
     - POST /beta/quickAdjustment/executeQuickAdjustment
     - 
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "messageList" : [ "messageList", "messageList" ],
  "id" : "{}",
  "entity" : "{}",
  "status" : "status"
}, {
  "messageList" : [ "messageList", "messageList" ],
  "id" : "{}",
  "entity" : "{}",
  "status" : "status"
} ]}]
     
     - parameter body: (body) Input data for ExecuteQuickAdjustment process. 

     - returns: RequestBuilder<[ProcessOutputAPIModel]> 
     */
    public class func executeQuickAdjustmentWithRequestBuilder(body body: ExecuteQuickAdjustmentInputAPIModel) -> RequestBuilder<[ProcessOutputAPIModel]> {
        let path = "/beta/quickAdjustment/executeQuickAdjustment"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ProcessOutputAPIModel]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a quickAdjustment by id
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateQuickAdjustmentById(quickAdjustmentId quickAdjustmentId: Int32, completion: ((data: QuickAdjustment?, error: ErrorType?) -> Void)) {
        getDuplicateQuickAdjustmentByIdWithRequestBuilder(quickAdjustmentId: quickAdjustmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a quickAdjustment by id
     - GET /beta/quickAdjustment/duplicate/{quickAdjustmentId}
     - Returns a duplicated quickAdjustment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "adjustmentCode" : "adjustmentCode",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "productIdTag" : "productIdTag",
  "message" : "message",
  "totalQuantity" : 5,
  "warehouseId" : 6,
  "locationId" : 1,
  "changeQuantity" : 5,
  "id" : 0,
  "sku" : "sku",
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to be duplicated. 

     - returns: RequestBuilder<QuickAdjustment> 
     */
    public class func getDuplicateQuickAdjustmentByIdWithRequestBuilder(quickAdjustmentId quickAdjustmentId: Int32) -> RequestBuilder<QuickAdjustment> {
        var path = "/beta/quickAdjustment/duplicate/{quickAdjustmentId}"
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentId}", withString: "\(quickAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<QuickAdjustment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search quickAdjustments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getQuickAdjustmentByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [QuickAdjustment]?, error: ErrorType?) -> Void)) {
        getQuickAdjustmentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search quickAdjustments by filter
     - GET /beta/quickAdjustment/search
     - Returns the list of quickAdjustments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "adjustmentCode" : "adjustmentCode",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "productIdTag" : "productIdTag",
  "message" : "message",
  "totalQuantity" : 5,
  "warehouseId" : 6,
  "locationId" : 1,
  "changeQuantity" : 5,
  "id" : 0,
  "sku" : "sku",
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "adjustmentCode" : "adjustmentCode",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "productIdTag" : "productIdTag",
  "message" : "message",
  "totalQuantity" : 5,
  "warehouseId" : 6,
  "locationId" : 1,
  "changeQuantity" : 5,
  "id" : 0,
  "sku" : "sku",
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[QuickAdjustment]> 
     */
    public class func getQuickAdjustmentByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[QuickAdjustment]> {
        let path = "/beta/quickAdjustment/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[QuickAdjustment]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a quickAdjustment by id
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getQuickAdjustmentById(quickAdjustmentId quickAdjustmentId: Int32, completion: ((data: QuickAdjustment?, error: ErrorType?) -> Void)) {
        getQuickAdjustmentByIdWithRequestBuilder(quickAdjustmentId: quickAdjustmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a quickAdjustment by id
     - GET /beta/quickAdjustment/{quickAdjustmentId}
     - Returns the quickAdjustment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "adjustmentCode" : "adjustmentCode",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "productIdTag" : "productIdTag",
  "message" : "message",
  "totalQuantity" : 5,
  "warehouseId" : 6,
  "locationId" : 1,
  "changeQuantity" : 5,
  "id" : 0,
  "sku" : "sku",
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to be returned. 

     - returns: RequestBuilder<QuickAdjustment> 
     */
    public class func getQuickAdjustmentByIdWithRequestBuilder(quickAdjustmentId quickAdjustmentId: Int32) -> RequestBuilder<QuickAdjustment> {
        var path = "/beta/quickAdjustment/{quickAdjustmentId}"
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentId}", withString: "\(quickAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<QuickAdjustment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a quickAdjustment.
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getQuickAdjustmentTags(quickAdjustmentId quickAdjustmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getQuickAdjustmentTagsWithRequestBuilder(quickAdjustmentId: quickAdjustmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a quickAdjustment.
     - GET /beta/quickAdjustment/{quickAdjustmentId}/tag
     - Get all existing quickAdjustment tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter quickAdjustmentId: (path) Id of the quickAdjustment to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getQuickAdjustmentTagsWithRequestBuilder(quickAdjustmentId quickAdjustmentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/quickAdjustment/{quickAdjustmentId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{quickAdjustmentId}", withString: "\(quickAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a quickAdjustment
     
     - parameter body: (body) QuickAdjustment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateQuickAdjustment(body body: QuickAdjustment, completion: ((error: ErrorType?) -> Void)) {
        updateQuickAdjustmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a quickAdjustment
     - PUT /beta/quickAdjustment
     - Updates an existing quickAdjustment using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) QuickAdjustment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateQuickAdjustmentWithRequestBuilder(body body: QuickAdjustment) -> RequestBuilder<Void> {
        let path = "/beta/quickAdjustment"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a quickAdjustment custom fields
     
     - parameter body: (body) QuickAdjustment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateQuickAdjustmentCustomFields(body body: QuickAdjustment, completion: ((error: ErrorType?) -> Void)) {
        updateQuickAdjustmentCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a quickAdjustment custom fields
     - PUT /beta/quickAdjustment/customFields
     - Updates an existing quickAdjustment custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) QuickAdjustment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateQuickAdjustmentCustomFieldsWithRequestBuilder(body body: QuickAdjustment) -> RequestBuilder<Void> {
        let path = "/beta/quickAdjustment/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
