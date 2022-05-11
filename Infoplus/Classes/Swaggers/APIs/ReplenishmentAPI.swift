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
    public class func addReplenishmentAudit(replenishmentId replenishmentId: Int32, replenishmentAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentAuditWithRequestBuilder(replenishmentId: replenishmentId, replenishmentAudit: replenishmentAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a replenishment
     - PUT /v3.0/replenishment/{replenishmentId}/audit/{replenishmentAudit}
     - Adds an audit to an existing replenishment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to add an audit to 
     - parameter replenishmentAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentAuditWithRequestBuilder(replenishmentId replenishmentId: Int32, replenishmentAudit: String) -> RequestBuilder<Void> {
        var path = "/v3.0/replenishment/{replenishmentId}/audit/{replenishmentAudit}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentAudit}", withString: "\(replenishmentAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a replenishment
     
     - parameter replenishmentId: (path) Id of the replenishment to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentFile(replenishmentId replenishmentId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentFileWithRequestBuilder(replenishmentId: replenishmentId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a replenishment
     - POST /v3.0/replenishment/{replenishmentId}/file/{fileName}
     - Adds a file to an existing replenishment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentFileWithRequestBuilder(replenishmentId replenishmentId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/v3.0/replenishment/{replenishmentId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a replenishment by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter replenishmentId: (path) Id of the replenishment to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentFileByURL(body body: RecordFile, replenishmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentFileByURLWithRequestBuilder(body: body, replenishmentId: replenishmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a replenishment by URL.
     - POST /v3.0/replenishment/{replenishmentId}/file
     - Adds a file to an existing replenishment by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter replenishmentId: (path) Id of the replenishment to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentFileByURLWithRequestBuilder(body body: RecordFile, replenishmentId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/replenishment/{replenishmentId}/file"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a replenishment.
     
     - parameter replenishmentId: (path) Id of the replenishment to add a tag to 
     - parameter replenishmentTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReplenishmentTag(replenishmentId replenishmentId: Int32, replenishmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        addReplenishmentTagWithRequestBuilder(replenishmentId: replenishmentId, replenishmentTag: replenishmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a replenishment.
     - PUT /v3.0/replenishment/{replenishmentId}/tag/{replenishmentTag}
     - Adds a tag to an existing replenishment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to add a tag to 
     - parameter replenishmentTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReplenishmentTagWithRequestBuilder(replenishmentId replenishmentId: Int32, replenishmentTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/replenishment/{replenishmentId}/tag/{replenishmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentTag}", withString: "\(replenishmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a replenishment.
     
     - parameter replenishmentId: (path) Id of the replenishment to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReplenishmentFile(replenishmentId replenishmentId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteReplenishmentFileWithRequestBuilder(replenishmentId: replenishmentId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a replenishment.
     - DELETE /v3.0/replenishment/{replenishmentId}/file/{fileId}
     - Deletes an existing replenishment file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReplenishmentFileWithRequestBuilder(replenishmentId replenishmentId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/replenishment/{replenishmentId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a replenishment.
     
     - parameter replenishmentId: (path) Id of the replenishment to remove tag from 
     - parameter replenishmentTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReplenishmentTag(replenishmentId replenishmentId: Int32, replenishmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteReplenishmentTagWithRequestBuilder(replenishmentId: replenishmentId, replenishmentTag: replenishmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a replenishment.
     - DELETE /v3.0/replenishment/{replenishmentId}/tag/{replenishmentTag}
     - Deletes an existing replenishment tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to remove tag from 
     - parameter replenishmentTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReplenishmentTagWithRequestBuilder(replenishmentId replenishmentId: Int32, replenishmentTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/replenishment/{replenishmentId}/tag/{replenishmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{replenishmentTag}", withString: "\(replenishmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a replenishment by id
     
     - parameter replenishmentId: (path) Id of the replenishment to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateReplenishmentById(replenishmentId replenishmentId: Int32, completion: ((data: Replenishment?, error: ErrorType?) -> Void)) {
        getDuplicateReplenishmentByIdWithRequestBuilder(replenishmentId: replenishmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a replenishment by id
     - GET /v3.0/replenishment/duplicate/{replenishmentId}
     - Returns a duplicated replenishment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "replenishmentProcess" : 6,
  "quantity" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "pickFaceAssignment" : 1,
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter replenishmentId: (path) Id of the replenishment to be duplicated. 

     - returns: RequestBuilder<Replenishment> 
     */
    public class func getDuplicateReplenishmentByIdWithRequestBuilder(replenishmentId replenishmentId: Int32) -> RequestBuilder<Replenishment> {
        var path = "/v3.0/replenishment/duplicate/{replenishmentId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Replenishment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search replenishments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Replenishment]?, error: ErrorType?) -> Void)) {
        getReplenishmentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search replenishments by filter
     - GET /v3.0/replenishment/search
     - Returns the list of replenishments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "replenishmentProcess" : 6,
  "quantity" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "pickFaceAssignment" : 1,
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "replenishmentProcess" : 6,
  "quantity" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "pickFaceAssignment" : 1,
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Replenishment]> 
     */
    public class func getReplenishmentByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Replenishment]> {
        let path = "/v3.0/replenishment/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Replenishment]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a replenishment by id
     
     - parameter replenishmentId: (path) Id of the replenishment to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentById(replenishmentId replenishmentId: Int32, completion: ((data: Replenishment?, error: ErrorType?) -> Void)) {
        getReplenishmentByIdWithRequestBuilder(replenishmentId: replenishmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a replenishment by id
     - GET /v3.0/replenishment/{replenishmentId}
     - Returns the replenishment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "replenishmentProcess" : 6,
  "quantity" : 5,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "locationId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "pickFaceAssignment" : 1,
  "id" : 0,
  "sku" : "sku",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter replenishmentId: (path) Id of the replenishment to be returned. 

     - returns: RequestBuilder<Replenishment> 
     */
    public class func getReplenishmentByIdWithRequestBuilder(replenishmentId replenishmentId: Int32) -> RequestBuilder<Replenishment> {
        var path = "/v3.0/replenishment/{replenishmentId}"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Replenishment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a replenishment.
     
     - parameter replenishmentId: (path) Id of the replenishment to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentFiles(replenishmentId replenishmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getReplenishmentFilesWithRequestBuilder(replenishmentId: replenishmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a replenishment.
     - GET /v3.0/replenishment/{replenishmentId}/file
     - Get all existing replenishment files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getReplenishmentFilesWithRequestBuilder(replenishmentId replenishmentId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/replenishment/{replenishmentId}/file"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a replenishment.
     
     - parameter replenishmentId: (path) Id of the replenishment to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReplenishmentTags(replenishmentId replenishmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getReplenishmentTagsWithRequestBuilder(replenishmentId: replenishmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a replenishment.
     - GET /v3.0/replenishment/{replenishmentId}/tag
     - Get all existing replenishment tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter replenishmentId: (path) Id of the replenishment to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getReplenishmentTagsWithRequestBuilder(replenishmentId replenishmentId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/replenishment/{replenishmentId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{replenishmentId}", withString: "\(replenishmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
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
     - PUT /v3.0/replenishment/customFields
     - Updates an existing replenishment custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Replenishment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReplenishmentCustomFieldsWithRequestBuilder(body body: Replenishment) -> RequestBuilder<Void> {
        let path = "/v3.0/replenishment/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
