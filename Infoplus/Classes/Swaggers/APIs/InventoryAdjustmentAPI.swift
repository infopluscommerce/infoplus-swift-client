//
// InventoryAdjustmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class InventoryAdjustmentAPI: APIBase {
    /**
     Add new audit for an inventoryAdjustment
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to add an audit to 
     - parameter inventoryAdjustmentAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInventoryAdjustmentAudit(inventoryAdjustmentId inventoryAdjustmentId: Int32, inventoryAdjustmentAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addInventoryAdjustmentAuditWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId, inventoryAdjustmentAudit: inventoryAdjustmentAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an inventoryAdjustment
     - PUT /v3.0/inventoryAdjustment/{inventoryAdjustmentId}/audit/{inventoryAdjustmentAudit}
     - Adds an audit to an existing inventoryAdjustment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to add an audit to 
     - parameter inventoryAdjustmentAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInventoryAdjustmentAuditWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32, inventoryAdjustmentAudit: String) -> RequestBuilder<Void> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}/audit/{inventoryAdjustmentAudit}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentAudit}", withString: "\(inventoryAdjustmentAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an inventoryAdjustment
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInventoryAdjustmentFile(inventoryAdjustmentId inventoryAdjustmentId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addInventoryAdjustmentFileWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an inventoryAdjustment
     - POST /v3.0/inventoryAdjustment/{inventoryAdjustmentId}/file/{fileName}
     - Adds a file to an existing inventoryAdjustment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addInventoryAdjustmentFileWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an inventoryAdjustment by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInventoryAdjustmentFileByURL(body body: RecordFile, inventoryAdjustmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addInventoryAdjustmentFileByURLWithRequestBuilder(body: body, inventoryAdjustmentId: inventoryAdjustmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an inventoryAdjustment by URL.
     - POST /v3.0/inventoryAdjustment/{inventoryAdjustmentId}/file
     - Adds a file to an existing inventoryAdjustment by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addInventoryAdjustmentFileByURLWithRequestBuilder(body body: RecordFile, inventoryAdjustmentId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}/file"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an inventoryAdjustment.
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to add a tag to 
     - parameter inventoryAdjustmentTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInventoryAdjustmentTag(inventoryAdjustmentId inventoryAdjustmentId: Int32, inventoryAdjustmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        addInventoryAdjustmentTagWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId, inventoryAdjustmentTag: inventoryAdjustmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an inventoryAdjustment.
     - PUT /v3.0/inventoryAdjustment/{inventoryAdjustmentId}/tag/{inventoryAdjustmentTag}
     - Adds a tag to an existing inventoryAdjustment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to add a tag to 
     - parameter inventoryAdjustmentTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addInventoryAdjustmentTagWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32, inventoryAdjustmentTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}/tag/{inventoryAdjustmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentTag}", withString: "\(inventoryAdjustmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for an inventoryAdjustment.
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInventoryAdjustmentFile(inventoryAdjustmentId inventoryAdjustmentId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteInventoryAdjustmentFileWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for an inventoryAdjustment.
     - DELETE /v3.0/inventoryAdjustment/{inventoryAdjustmentId}/file/{fileId}
     - Deletes an existing inventoryAdjustment file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInventoryAdjustmentFileWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an inventoryAdjustment.
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to remove tag from 
     - parameter inventoryAdjustmentTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInventoryAdjustmentTag(inventoryAdjustmentId inventoryAdjustmentId: Int32, inventoryAdjustmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteInventoryAdjustmentTagWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId, inventoryAdjustmentTag: inventoryAdjustmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an inventoryAdjustment.
     - DELETE /v3.0/inventoryAdjustment/{inventoryAdjustmentId}/tag/{inventoryAdjustmentTag}
     - Deletes an existing inventoryAdjustment tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to remove tag from 
     - parameter inventoryAdjustmentTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInventoryAdjustmentTagWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32, inventoryAdjustmentTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}/tag/{inventoryAdjustmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentTag}", withString: "\(inventoryAdjustmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an inventoryAdjustment by id
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateInventoryAdjustmentById(inventoryAdjustmentId inventoryAdjustmentId: Int32, completion: ((data: InventoryAdjustment?, error: ErrorType?) -> Void)) {
        getDuplicateInventoryAdjustmentByIdWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an inventoryAdjustment by id
     - GET /v3.0/inventoryAdjustment/duplicate/{inventoryAdjustmentId}
     - Returns a duplicated inventoryAdjustment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "note" : "note",
  "adjustmentDate" : "2000-01-23T04:56:07.000+00:00",
  "orderNo" : 5.63737665663332876420099637471139430999755859375,
  "adjustmentCode" : "adjustmentCode",
  "customFields" : {
    "key" : "{}"
  },
  "printed" : "printed",
  "authorizedBy" : "authorizedBy",
  "qty" : 5,
  "location" : "location",
  "id" : 0,
  "poNoId" : 1,
  "adjustmentTime" : "adjustmentTime",
  "sku" : "sku",
  "lobId" : 6
}}]
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to be duplicated. 

     - returns: RequestBuilder<InventoryAdjustment> 
     */
    public class func getDuplicateInventoryAdjustmentByIdWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32) -> RequestBuilder<InventoryAdjustment> {
        var path = "/v3.0/inventoryAdjustment/duplicate/{inventoryAdjustmentId}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InventoryAdjustment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search inventoryAdjustments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryAdjustmentByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [InventoryAdjustment]?, error: ErrorType?) -> Void)) {
        getInventoryAdjustmentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search inventoryAdjustments by filter
     - GET /v3.0/inventoryAdjustment/search
     - Returns the list of inventoryAdjustments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "note" : "note",
  "adjustmentDate" : "2000-01-23T04:56:07.000+00:00",
  "orderNo" : 5.63737665663332876420099637471139430999755859375,
  "adjustmentCode" : "adjustmentCode",
  "customFields" : {
    "key" : "{}"
  },
  "printed" : "printed",
  "authorizedBy" : "authorizedBy",
  "qty" : 5,
  "location" : "location",
  "id" : 0,
  "poNoId" : 1,
  "adjustmentTime" : "adjustmentTime",
  "sku" : "sku",
  "lobId" : 6
}, {
  "note" : "note",
  "adjustmentDate" : "2000-01-23T04:56:07.000+00:00",
  "orderNo" : 5.63737665663332876420099637471139430999755859375,
  "adjustmentCode" : "adjustmentCode",
  "customFields" : {
    "key" : "{}"
  },
  "printed" : "printed",
  "authorizedBy" : "authorizedBy",
  "qty" : 5,
  "location" : "location",
  "id" : 0,
  "poNoId" : 1,
  "adjustmentTime" : "adjustmentTime",
  "sku" : "sku",
  "lobId" : 6
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[InventoryAdjustment]> 
     */
    public class func getInventoryAdjustmentByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[InventoryAdjustment]> {
        let path = "/v3.0/inventoryAdjustment/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[InventoryAdjustment]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an inventoryAdjustment by id
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryAdjustmentById(inventoryAdjustmentId inventoryAdjustmentId: Int32, completion: ((data: InventoryAdjustment?, error: ErrorType?) -> Void)) {
        getInventoryAdjustmentByIdWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an inventoryAdjustment by id
     - GET /v3.0/inventoryAdjustment/{inventoryAdjustmentId}
     - Returns the inventoryAdjustment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "note" : "note",
  "adjustmentDate" : "2000-01-23T04:56:07.000+00:00",
  "orderNo" : 5.63737665663332876420099637471139430999755859375,
  "adjustmentCode" : "adjustmentCode",
  "customFields" : {
    "key" : "{}"
  },
  "printed" : "printed",
  "authorizedBy" : "authorizedBy",
  "qty" : 5,
  "location" : "location",
  "id" : 0,
  "poNoId" : 1,
  "adjustmentTime" : "adjustmentTime",
  "sku" : "sku",
  "lobId" : 6
}}]
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to be returned. 

     - returns: RequestBuilder<InventoryAdjustment> 
     */
    public class func getInventoryAdjustmentByIdWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32) -> RequestBuilder<InventoryAdjustment> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InventoryAdjustment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for an inventoryAdjustment.
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryAdjustmentFiles(inventoryAdjustmentId inventoryAdjustmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getInventoryAdjustmentFilesWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for an inventoryAdjustment.
     - GET /v3.0/inventoryAdjustment/{inventoryAdjustmentId}/file
     - Get all existing inventoryAdjustment files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getInventoryAdjustmentFilesWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}/file"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an inventoryAdjustment.
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventoryAdjustmentTags(inventoryAdjustmentId inventoryAdjustmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getInventoryAdjustmentTagsWithRequestBuilder(inventoryAdjustmentId: inventoryAdjustmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an inventoryAdjustment.
     - GET /v3.0/inventoryAdjustment/{inventoryAdjustmentId}/tag
     - Get all existing inventoryAdjustment tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter inventoryAdjustmentId: (path) Id of the inventoryAdjustment to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getInventoryAdjustmentTagsWithRequestBuilder(inventoryAdjustmentId inventoryAdjustmentId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/inventoryAdjustment/{inventoryAdjustmentId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{inventoryAdjustmentId}", withString: "\(inventoryAdjustmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an inventoryAdjustment custom fields
     
     - parameter body: (body) InventoryAdjustment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateInventoryAdjustmentCustomFields(body body: InventoryAdjustment, completion: ((error: ErrorType?) -> Void)) {
        updateInventoryAdjustmentCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an inventoryAdjustment custom fields
     - PUT /v3.0/inventoryAdjustment/customFields
     - Updates an existing inventoryAdjustment custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) InventoryAdjustment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateInventoryAdjustmentCustomFieldsWithRequestBuilder(body body: InventoryAdjustment) -> RequestBuilder<Void> {
        let path = "/v3.0/inventoryAdjustment/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
