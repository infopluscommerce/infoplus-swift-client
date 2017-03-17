//
// PickFaceAssignmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PickFaceAssignmentAPI: APIBase {
    /**
     
     Create a pickFaceAssignment
     
     - parameter body: (body) PickFaceAssignment to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addPickFaceAssignment(body body: PickFaceAssignment, completion: ((data: PickFaceAssignment?, error: ErrorType?) -> Void)) {
        addPickFaceAssignmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a pickFaceAssignment
     
     - POST /beta/pickFaceAssignment
     - Inserts a new pickFaceAssignment using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "replenishmentPoint" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "maxQuantity" : 123,
  "locationId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "active" : true,
  "id" : 123,
  "sku" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) PickFaceAssignment to be inserted. 

     - returns: RequestBuilder<PickFaceAssignment> 
     */
    public class func addPickFaceAssignmentWithRequestBuilder(body body: PickFaceAssignment) -> RequestBuilder<PickFaceAssignment> {
        let path = "/beta/pickFaceAssignment"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<PickFaceAssignment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new audit for a pickFaceAssignment
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to add an audit to 
     - parameter pickFaceAssignmentAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addPickFaceAssignmentAudit(pickFaceAssignmentId pickFaceAssignmentId: Int, pickFaceAssignmentAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addPickFaceAssignmentAuditWithRequestBuilder(pickFaceAssignmentId: pickFaceAssignmentId, pickFaceAssignmentAudit: pickFaceAssignmentAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a pickFaceAssignment
     
     - PUT /beta/pickFaceAssignment/{pickFaceAssignmentId}/audit/{pickFaceAssignmentAudit}
     - Adds an audit to an existing pickFaceAssignment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to add an audit to 
     - parameter pickFaceAssignmentAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addPickFaceAssignmentAuditWithRequestBuilder(pickFaceAssignmentId pickFaceAssignmentId: Int, pickFaceAssignmentAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/pickFaceAssignment/{pickFaceAssignmentId}/audit/{pickFaceAssignmentAudit}"
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentId}", withString: "\(pickFaceAssignmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentAudit}", withString: "\(pickFaceAssignmentAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a pickFaceAssignment.
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to add a tag to 
     - parameter pickFaceAssignmentTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addPickFaceAssignmentTag(pickFaceAssignmentId pickFaceAssignmentId: Int, pickFaceAssignmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        addPickFaceAssignmentTagWithRequestBuilder(pickFaceAssignmentId: pickFaceAssignmentId, pickFaceAssignmentTag: pickFaceAssignmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a pickFaceAssignment.
     
     - PUT /beta/pickFaceAssignment/{pickFaceAssignmentId}/tag/{pickFaceAssignmentTag}
     - Adds a tag to an existing pickFaceAssignment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to add a tag to 
     - parameter pickFaceAssignmentTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addPickFaceAssignmentTagWithRequestBuilder(pickFaceAssignmentId pickFaceAssignmentId: Int, pickFaceAssignmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/pickFaceAssignment/{pickFaceAssignmentId}/tag/{pickFaceAssignmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentId}", withString: "\(pickFaceAssignmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentTag}", withString: "\(pickFaceAssignmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a pickFaceAssignment
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deletePickFaceAssignment(pickFaceAssignmentId pickFaceAssignmentId: Int, completion: ((error: ErrorType?) -> Void)) {
        deletePickFaceAssignmentWithRequestBuilder(pickFaceAssignmentId: pickFaceAssignmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a pickFaceAssignment
     
     - DELETE /beta/pickFaceAssignment/{pickFaceAssignmentId}
     - Deletes the pickFaceAssignment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deletePickFaceAssignmentWithRequestBuilder(pickFaceAssignmentId pickFaceAssignmentId: Int) -> RequestBuilder<Void> {
        var path = "/beta/pickFaceAssignment/{pickFaceAssignmentId}"
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentId}", withString: "\(pickFaceAssignmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a pickFaceAssignment.
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to remove tag from 
     - parameter pickFaceAssignmentTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deletePickFaceAssignmentTag(pickFaceAssignmentId pickFaceAssignmentId: Int, pickFaceAssignmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        deletePickFaceAssignmentTagWithRequestBuilder(pickFaceAssignmentId: pickFaceAssignmentId, pickFaceAssignmentTag: pickFaceAssignmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a pickFaceAssignment.
     
     - DELETE /beta/pickFaceAssignment/{pickFaceAssignmentId}/tag/{pickFaceAssignmentTag}
     - Deletes an existing pickFaceAssignment tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to remove tag from 
     - parameter pickFaceAssignmentTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deletePickFaceAssignmentTagWithRequestBuilder(pickFaceAssignmentId pickFaceAssignmentId: Int, pickFaceAssignmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/pickFaceAssignment/{pickFaceAssignmentId}/tag/{pickFaceAssignmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentId}", withString: "\(pickFaceAssignmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentTag}", withString: "\(pickFaceAssignmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a pickFaceAssignment by id
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicatePickFaceAssignmentById(pickFaceAssignmentId pickFaceAssignmentId: Int, completion: ((data: PickFaceAssignment?, error: ErrorType?) -> Void)) {
        getDuplicatePickFaceAssignmentByIdWithRequestBuilder(pickFaceAssignmentId: pickFaceAssignmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a pickFaceAssignment by id
     
     - GET /beta/pickFaceAssignment/duplicate/{pickFaceAssignmentId}
     - Returns a duplicated pickFaceAssignment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "replenishmentPoint" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "maxQuantity" : 123,
  "locationId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "active" : true,
  "id" : 123,
  "sku" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to be duplicated. 

     - returns: RequestBuilder<PickFaceAssignment> 
     */
    public class func getDuplicatePickFaceAssignmentByIdWithRequestBuilder(pickFaceAssignmentId pickFaceAssignmentId: Int) -> RequestBuilder<PickFaceAssignment> {
        var path = "/beta/pickFaceAssignment/duplicate/{pickFaceAssignmentId}"
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentId}", withString: "\(pickFaceAssignmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PickFaceAssignment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search pickFaceAssignments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPickFaceAssignmentByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [PickFaceAssignment]?, error: ErrorType?) -> Void)) {
        getPickFaceAssignmentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search pickFaceAssignments by filter
     
     - GET /beta/pickFaceAssignment/search
     - Returns the list of pickFaceAssignments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "replenishmentPoint" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "maxQuantity" : 123,
  "locationId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "active" : true,
  "id" : 123,
  "sku" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[PickFaceAssignment]> 
     */
    public class func getPickFaceAssignmentByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[PickFaceAssignment]> {
        let path = "/beta/pickFaceAssignment/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[PickFaceAssignment]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a pickFaceAssignment by id
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPickFaceAssignmentById(pickFaceAssignmentId pickFaceAssignmentId: Int, completion: ((data: PickFaceAssignment?, error: ErrorType?) -> Void)) {
        getPickFaceAssignmentByIdWithRequestBuilder(pickFaceAssignmentId: pickFaceAssignmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a pickFaceAssignment by id
     
     - GET /beta/pickFaceAssignment/{pickFaceAssignmentId}
     - Returns the pickFaceAssignment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "replenishmentPoint" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "warehouseId" : 123,
  "maxQuantity" : 123,
  "locationId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "active" : true,
  "id" : 123,
  "sku" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to be returned. 

     - returns: RequestBuilder<PickFaceAssignment> 
     */
    public class func getPickFaceAssignmentByIdWithRequestBuilder(pickFaceAssignmentId pickFaceAssignmentId: Int) -> RequestBuilder<PickFaceAssignment> {
        var path = "/beta/pickFaceAssignment/{pickFaceAssignmentId}"
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentId}", withString: "\(pickFaceAssignmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PickFaceAssignment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a pickFaceAssignment.
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPickFaceAssignmentTags(pickFaceAssignmentId pickFaceAssignmentId: Int, completion: ((error: ErrorType?) -> Void)) {
        getPickFaceAssignmentTagsWithRequestBuilder(pickFaceAssignmentId: pickFaceAssignmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a pickFaceAssignment.
     
     - GET /beta/pickFaceAssignment/{pickFaceAssignmentId}/tag
     - Get all existing pickFaceAssignment tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter pickFaceAssignmentId: (path) Id of the pickFaceAssignment to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getPickFaceAssignmentTagsWithRequestBuilder(pickFaceAssignmentId pickFaceAssignmentId: Int) -> RequestBuilder<Void> {
        var path = "/beta/pickFaceAssignment/{pickFaceAssignmentId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{pickFaceAssignmentId}", withString: "\(pickFaceAssignmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a pickFaceAssignment
     
     - parameter body: (body) PickFaceAssignment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updatePickFaceAssignment(body body: PickFaceAssignment, completion: ((error: ErrorType?) -> Void)) {
        updatePickFaceAssignmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a pickFaceAssignment
     
     - PUT /beta/pickFaceAssignment
     - Updates an existing pickFaceAssignment using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) PickFaceAssignment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updatePickFaceAssignmentWithRequestBuilder(body body: PickFaceAssignment) -> RequestBuilder<Void> {
        let path = "/beta/pickFaceAssignment"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a pickFaceAssignment custom fields
     
     - parameter body: (body) PickFaceAssignment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updatePickFaceAssignmentCustomFields(body body: PickFaceAssignment, completion: ((error: ErrorType?) -> Void)) {
        updatePickFaceAssignmentCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a pickFaceAssignment custom fields
     
     - PUT /beta/pickFaceAssignment/customFields
     - Updates an existing pickFaceAssignment custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) PickFaceAssignment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updatePickFaceAssignmentCustomFieldsWithRequestBuilder(body body: PickFaceAssignment) -> RequestBuilder<Void> {
        let path = "/beta/pickFaceAssignment/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
