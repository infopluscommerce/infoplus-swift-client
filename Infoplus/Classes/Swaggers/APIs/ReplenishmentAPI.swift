//
// ReplenishmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ReplenishmentAPI: APIBase {
    /**
     
     Add new audit for a replenishment
     
     - parameter replenishmentId: (path) Id of the replenishment to add an audit to 
     - parameter replenishmentAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentAudit(replenishmentId replenishmentId: Int, replenishmentAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentAuditWithRequestBuilder(replenishmentId: replenishmentId, replenishmentAudit: replenishmentAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a replenishment
     
     - PUT /beta/replenishment/{replenishmentId}/audit/{replenishmentAudit}
     - Adds an audit to an existing replenishment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to add an audit to 
     - parameter replenishmentAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentAuditWithRequestBuilder(replenishmentId replenishmentId: Int, replenishmentAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishment/{replenishmentId}/audit/{replenishmentAudit}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentAudit}", withString: "\(replenishmentAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a replenishment.
     
     - parameter replenishmentId: (path) Id of the replenishment to add a tag to 
     - parameter replenishmentTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentTag(replenishmentId replenishmentId: Int, replenishmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentTagWithRequestBuilder(replenishmentId: replenishmentId, replenishmentTag: replenishmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a replenishment.
     
     - PUT /beta/replenishment/{replenishmentId}/tag/{replenishmentTag}
     - Adds a tag to an existing replenishment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to add a tag to 
     - parameter replenishmentTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentTagWithRequestBuilder(replenishmentId replenishmentId: Int, replenishmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishment/{replenishmentId}/tag/{replenishmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentTag}", withString: "\(replenishmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a replenishment.
     
     - parameter replenishmentId: (path) Id of the replenishment to remove tag from 
     - parameter replenishmentTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReplenishmentTag(replenishmentId replenishmentId: Int, replenishmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteReplenishmentTagWithRequestBuilder(replenishmentId: replenishmentId, replenishmentTag: replenishmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a replenishment.
     
     - DELETE /beta/replenishment/{replenishmentId}/tag/{replenishmentTag}
     - Deletes an existing replenishment tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to remove tag from 
     - parameter replenishmentTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReplenishmentTagWithRequestBuilder(replenishmentId replenishmentId: Int, replenishmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/replenishment/{replenishmentId}/tag/{replenishmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentTag}", withString: "\(replenishmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a replenishment by id
     
     - parameter replenishmentId: (path) Id of the replenishment to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateReplenishmentById(replenishmentId replenishmentId: Int, completion: ((data: Replenishment?, error: ErrorType?) -> Void)) {
        getDuplicateReplenishmentByIdWithRequestBuilder(replenishmentId: replenishmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a replenishment by id
     
     - GET /beta/replenishment/duplicate/{replenishmentId}
     - Returns a duplicated replenishment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "replenishmentProcess" : 123,
  "quantity" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "locationId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "pickFaceAssignment" : 123,
  "id" : 123,
  "sku" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter replenishmentId: (path) Id of the replenishment to be duplicated. 

     - returns: RequestBuilder<Replenishment> 
     */
    public class func getDuplicateReplenishmentByIdWithRequestBuilder(replenishmentId replenishmentId: Int) -> RequestBuilder<Replenishment> {
        var path = "/beta/replenishment/duplicate/{replenishmentId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Replenishment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search replenishments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [Replenishment]?, error: ErrorType?) -> Void)) {
        getReplenishmentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search replenishments by filter
     
     - GET /beta/replenishment/search
     - Returns the list of replenishments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "replenishmentProcess" : 123,
  "quantity" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "locationId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "pickFaceAssignment" : 123,
  "id" : 123,
  "sku" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Replenishment]> 
     */
    public class func getReplenishmentByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[Replenishment]> {
        let path = "/beta/replenishment/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[Replenishment]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a replenishment by id
     
     - parameter replenishmentId: (path) Id of the replenishment to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentById(replenishmentId replenishmentId: Int, completion: ((data: Replenishment?, error: ErrorType?) -> Void)) {
        getReplenishmentByIdWithRequestBuilder(replenishmentId: replenishmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a replenishment by id
     
     - GET /beta/replenishment/{replenishmentId}
     - Returns the replenishment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "replenishmentProcess" : 123,
  "quantity" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "locationId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "pickFaceAssignment" : 123,
  "id" : 123,
  "sku" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter replenishmentId: (path) Id of the replenishment to be returned. 

     - returns: RequestBuilder<Replenishment> 
     */
    public class func getReplenishmentByIdWithRequestBuilder(replenishmentId replenishmentId: Int) -> RequestBuilder<Replenishment> {
        var path = "/beta/replenishment/{replenishmentId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Replenishment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a replenishment.
     
     - parameter replenishmentId: (path) Id of the replenishment to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentTags(replenishmentId replenishmentId: Int, completion: ((error: ErrorType?) -> Void)) {
        getReplenishmentTagsWithRequestBuilder(replenishmentId: replenishmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a replenishment.
     
     - GET /beta/replenishment/{replenishmentId}/tag
     - Get all existing replenishment tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getReplenishmentTagsWithRequestBuilder(replenishmentId replenishmentId: Int) -> RequestBuilder<Void> {
        var path = "/beta/replenishment/{replenishmentId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a replenishment custom fields
     
     - parameter body: (body) Replenishment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateReplenishmentCustomFields(body body: Replenishment, completion: ((error: ErrorType?) -> Void)) {
        updateReplenishmentCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a replenishment custom fields
     
     - PUT /beta/replenishment/customFields
     - Updates an existing replenishment custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Replenishment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReplenishmentCustomFieldsWithRequestBuilder(body body: Replenishment) -> RequestBuilder<Void> {
        let path = "/beta/replenishment/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
