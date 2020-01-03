//
// SupplementAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class SupplementAPI: APIBase {
    /**
     Create a supplement
     
     - parameter body: (body) Supplement to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addSupplement(body body: Supplement, completion: ((data: Supplement?, error: ErrorType?) -> Void)) {
        addSupplementWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a supplement
     - POST /beta/supplement
     - Inserts a new supplement using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "originalSKUId" : 1,
  "supplementSKUId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "supplementQuantity" : 5.63737665663332876420099637471139430999755859375,
  "id" : 6,
  "type" : "type",
  "lobId" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) Supplement to be inserted. 

     - returns: RequestBuilder<Supplement> 
     */
    public class func addSupplementWithRequestBuilder(body body: Supplement) -> RequestBuilder<Supplement> {
        let path = "/beta/supplement"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Supplement>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a supplement
     
     - parameter supplementId: (path) Id of the supplement to add an audit to 
     - parameter supplementAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addSupplementAudit(supplementId supplementId: Int32, supplementAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addSupplementAuditWithRequestBuilder(supplementId: supplementId, supplementAudit: supplementAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a supplement
     - PUT /beta/supplement/{supplementId}/audit/{supplementAudit}
     - Adds an audit to an existing supplement.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter supplementId: (path) Id of the supplement to add an audit to 
     - parameter supplementAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addSupplementAuditWithRequestBuilder(supplementId supplementId: Int32, supplementAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/supplement/{supplementId}/audit/{supplementAudit}"
        path = path.stringByReplacingOccurrencesOfString("{supplementId}", withString: "\(supplementId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{supplementAudit}", withString: "\(supplementAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a supplement
     
     - parameter supplementId: (path) Id of the supplement to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addSupplementFile(supplementId supplementId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addSupplementFileWithRequestBuilder(supplementId: supplementId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a supplement
     - POST /beta/supplement/{supplementId}/file/{fileName}
     - Adds a file to an existing supplement.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter supplementId: (path) Id of the supplement to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addSupplementFileWithRequestBuilder(supplementId supplementId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/supplement/{supplementId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{supplementId}", withString: "\(supplementId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a supplement.
     
     - parameter supplementId: (path) Id of the supplement to add a tag to 
     - parameter supplementTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addSupplementTag(supplementId supplementId: Int32, supplementTag: String, completion: ((error: ErrorType?) -> Void)) {
        addSupplementTagWithRequestBuilder(supplementId: supplementId, supplementTag: supplementTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a supplement.
     - PUT /beta/supplement/{supplementId}/tag/{supplementTag}
     - Adds a tag to an existing supplement.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter supplementId: (path) Id of the supplement to add a tag to 
     - parameter supplementTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addSupplementTagWithRequestBuilder(supplementId supplementId: Int32, supplementTag: String) -> RequestBuilder<Void> {
        var path = "/beta/supplement/{supplementId}/tag/{supplementTag}"
        path = path.stringByReplacingOccurrencesOfString("{supplementId}", withString: "\(supplementId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{supplementTag}", withString: "\(supplementTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a supplement
     
     - parameter supplementId: (path) Id of the supplement to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteSupplement(supplementId supplementId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteSupplementWithRequestBuilder(supplementId: supplementId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a supplement
     - DELETE /beta/supplement/{supplementId}
     - Deletes the supplement identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter supplementId: (path) Id of the supplement to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteSupplementWithRequestBuilder(supplementId supplementId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/supplement/{supplementId}"
        path = path.stringByReplacingOccurrencesOfString("{supplementId}", withString: "\(supplementId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a supplement.
     
     - parameter supplementId: (path) Id of the supplement to remove tag from 
     - parameter supplementTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteSupplementTag(supplementId supplementId: Int32, supplementTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteSupplementTagWithRequestBuilder(supplementId: supplementId, supplementTag: supplementTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a supplement.
     - DELETE /beta/supplement/{supplementId}/tag/{supplementTag}
     - Deletes an existing supplement tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter supplementId: (path) Id of the supplement to remove tag from 
     - parameter supplementTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteSupplementTagWithRequestBuilder(supplementId supplementId: Int32, supplementTag: String) -> RequestBuilder<Void> {
        var path = "/beta/supplement/{supplementId}/tag/{supplementTag}"
        path = path.stringByReplacingOccurrencesOfString("{supplementId}", withString: "\(supplementId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{supplementTag}", withString: "\(supplementTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a supplement by id
     
     - parameter supplementId: (path) Id of the supplement to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateSupplementById(supplementId supplementId: Int32, completion: ((data: Supplement?, error: ErrorType?) -> Void)) {
        getDuplicateSupplementByIdWithRequestBuilder(supplementId: supplementId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a supplement by id
     - GET /beta/supplement/duplicate/{supplementId}
     - Returns a duplicated supplement identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "originalSKUId" : 1,
  "supplementSKUId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "supplementQuantity" : 5.63737665663332876420099637471139430999755859375,
  "id" : 6,
  "type" : "type",
  "lobId" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter supplementId: (path) Id of the supplement to be duplicated. 

     - returns: RequestBuilder<Supplement> 
     */
    public class func getDuplicateSupplementByIdWithRequestBuilder(supplementId supplementId: Int32) -> RequestBuilder<Supplement> {
        var path = "/beta/supplement/duplicate/{supplementId}"
        path = path.stringByReplacingOccurrencesOfString("{supplementId}", withString: "\(supplementId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Supplement>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search supplements by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getSupplementByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Supplement]?, error: ErrorType?) -> Void)) {
        getSupplementByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search supplements by filter
     - GET /beta/supplement/search
     - Returns the list of supplements that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "originalSKUId" : 1,
  "supplementSKUId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "supplementQuantity" : 5.63737665663332876420099637471139430999755859375,
  "id" : 6,
  "type" : "type",
  "lobId" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "originalSKUId" : 1,
  "supplementSKUId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "supplementQuantity" : 5.63737665663332876420099637471139430999755859375,
  "id" : 6,
  "type" : "type",
  "lobId" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Supplement]> 
     */
    public class func getSupplementByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Supplement]> {
        let path = "/beta/supplement/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Supplement]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a supplement by id
     
     - parameter supplementId: (path) Id of the supplement to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getSupplementById(supplementId supplementId: Int32, completion: ((data: Supplement?, error: ErrorType?) -> Void)) {
        getSupplementByIdWithRequestBuilder(supplementId: supplementId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a supplement by id
     - GET /beta/supplement/{supplementId}
     - Returns the supplement identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "originalSKUId" : 1,
  "supplementSKUId" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "supplementQuantity" : 5.63737665663332876420099637471139430999755859375,
  "id" : 6,
  "type" : "type",
  "lobId" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter supplementId: (path) Id of the supplement to be returned. 

     - returns: RequestBuilder<Supplement> 
     */
    public class func getSupplementByIdWithRequestBuilder(supplementId supplementId: Int32) -> RequestBuilder<Supplement> {
        var path = "/beta/supplement/{supplementId}"
        path = path.stringByReplacingOccurrencesOfString("{supplementId}", withString: "\(supplementId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Supplement>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a supplement.
     
     - parameter supplementId: (path) Id of the supplement to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getSupplementTags(supplementId supplementId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getSupplementTagsWithRequestBuilder(supplementId: supplementId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a supplement.
     - GET /beta/supplement/{supplementId}/tag
     - Get all existing supplement tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter supplementId: (path) Id of the supplement to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getSupplementTagsWithRequestBuilder(supplementId supplementId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/supplement/{supplementId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{supplementId}", withString: "\(supplementId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a supplement
     
     - parameter body: (body) Supplement to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateSupplement(body body: Supplement, completion: ((error: ErrorType?) -> Void)) {
        updateSupplementWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a supplement
     - PUT /beta/supplement
     - Updates an existing supplement using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Supplement to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateSupplementWithRequestBuilder(body body: Supplement) -> RequestBuilder<Void> {
        let path = "/beta/supplement"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a supplement custom fields
     
     - parameter body: (body) Supplement to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateSupplementCustomFields(body body: Supplement, completion: ((error: ErrorType?) -> Void)) {
        updateSupplementCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a supplement custom fields
     - PUT /beta/supplement/customFields
     - Updates an existing supplement custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Supplement to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateSupplementCustomFieldsWithRequestBuilder(body body: Supplement) -> RequestBuilder<Void> {
        let path = "/beta/supplement/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
