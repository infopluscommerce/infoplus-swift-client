//
// WarehouseDocumentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class WarehouseDocumentAPI: APIBase {
    /**
     Add new audit for a warehouseDocument
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to add an audit to 
     - parameter warehouseDocumentAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWarehouseDocumentAudit(warehouseDocumentId warehouseDocumentId: Int32, warehouseDocumentAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addWarehouseDocumentAuditWithRequestBuilder(warehouseDocumentId: warehouseDocumentId, warehouseDocumentAudit: warehouseDocumentAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a warehouseDocument
     - PUT /beta/warehouseDocument/{warehouseDocumentId}/audit/{warehouseDocumentAudit}
     - Adds an audit to an existing warehouseDocument.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to add an audit to 
     - parameter warehouseDocumentAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addWarehouseDocumentAuditWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32, warehouseDocumentAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}/audit/{warehouseDocumentAudit}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentAudit}", withString: "\(warehouseDocumentAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a warehouseDocument
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWarehouseDocumentFile(warehouseDocumentId warehouseDocumentId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addWarehouseDocumentFileWithRequestBuilder(warehouseDocumentId: warehouseDocumentId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a warehouseDocument
     - POST /beta/warehouseDocument/{warehouseDocumentId}/file/{fileName}
     - Adds a file to an existing warehouseDocument.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addWarehouseDocumentFileWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a warehouseDocument by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWarehouseDocumentFileByURL(body body: RecordFile, warehouseDocumentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addWarehouseDocumentFileByURLWithRequestBuilder(body: body, warehouseDocumentId: warehouseDocumentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a warehouseDocument by URL.
     - POST /beta/warehouseDocument/{warehouseDocumentId}/file
     - Adds a file to an existing warehouseDocument by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addWarehouseDocumentFileByURLWithRequestBuilder(body body: RecordFile, warehouseDocumentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}/file"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a warehouseDocument.
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to add a tag to 
     - parameter warehouseDocumentTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWarehouseDocumentTag(warehouseDocumentId warehouseDocumentId: Int32, warehouseDocumentTag: String, completion: ((error: ErrorType?) -> Void)) {
        addWarehouseDocumentTagWithRequestBuilder(warehouseDocumentId: warehouseDocumentId, warehouseDocumentTag: warehouseDocumentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a warehouseDocument.
     - PUT /beta/warehouseDocument/{warehouseDocumentId}/tag/{warehouseDocumentTag}
     - Adds a tag to an existing warehouseDocument.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to add a tag to 
     - parameter warehouseDocumentTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addWarehouseDocumentTagWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32, warehouseDocumentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}/tag/{warehouseDocumentTag}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentTag}", withString: "\(warehouseDocumentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a warehouseDocument.
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteWarehouseDocumentFile(warehouseDocumentId warehouseDocumentId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteWarehouseDocumentFileWithRequestBuilder(warehouseDocumentId: warehouseDocumentId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a warehouseDocument.
     - DELETE /beta/warehouseDocument/{warehouseDocumentId}/file/{fileId}
     - Deletes an existing warehouseDocument file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteWarehouseDocumentFileWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a warehouseDocument.
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to remove tag from 
     - parameter warehouseDocumentTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteWarehouseDocumentTag(warehouseDocumentId warehouseDocumentId: Int32, warehouseDocumentTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteWarehouseDocumentTagWithRequestBuilder(warehouseDocumentId: warehouseDocumentId, warehouseDocumentTag: warehouseDocumentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a warehouseDocument.
     - DELETE /beta/warehouseDocument/{warehouseDocumentId}/tag/{warehouseDocumentTag}
     - Deletes an existing warehouseDocument tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to remove tag from 
     - parameter warehouseDocumentTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteWarehouseDocumentTagWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32, warehouseDocumentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}/tag/{warehouseDocumentTag}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentTag}", withString: "\(warehouseDocumentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a warehouseDocument by id
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateWarehouseDocumentById(warehouseDocumentId warehouseDocumentId: Int32, completion: ((data: WarehouseDocument?, error: ErrorType?) -> Void)) {
        getDuplicateWarehouseDocumentByIdWithRequestBuilder(warehouseDocumentId: warehouseDocumentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a warehouseDocument by id
     - GET /beta/warehouseDocument/duplicate/{warehouseDocumentId}
     - Returns a duplicated warehouseDocument identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "documentType" : "documentType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to be duplicated. 

     - returns: RequestBuilder<WarehouseDocument> 
     */
    public class func getDuplicateWarehouseDocumentByIdWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32) -> RequestBuilder<WarehouseDocument> {
        var path = "/beta/warehouseDocument/duplicate/{warehouseDocumentId}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<WarehouseDocument>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search warehouseDocuments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseDocumentByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [WarehouseDocument]?, error: ErrorType?) -> Void)) {
        getWarehouseDocumentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search warehouseDocuments by filter
     - GET /beta/warehouseDocument/search
     - Returns the list of warehouseDocuments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "documentType" : "documentType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "documentType" : "documentType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[WarehouseDocument]> 
     */
    public class func getWarehouseDocumentByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[WarehouseDocument]> {
        let path = "/beta/warehouseDocument/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[WarehouseDocument]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a warehouseDocument by id
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseDocumentById(warehouseDocumentId warehouseDocumentId: Int32, completion: ((data: WarehouseDocument?, error: ErrorType?) -> Void)) {
        getWarehouseDocumentByIdWithRequestBuilder(warehouseDocumentId: warehouseDocumentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a warehouseDocument by id
     - GET /beta/warehouseDocument/{warehouseDocumentId}
     - Returns the warehouseDocument identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 6,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "documentType" : "documentType",
  "customFields" : {
    "key" : "{}"
  },
  "name" : "name",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to be returned. 

     - returns: RequestBuilder<WarehouseDocument> 
     */
    public class func getWarehouseDocumentByIdWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32) -> RequestBuilder<WarehouseDocument> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<WarehouseDocument>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a warehouseDocument.
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseDocumentFiles(warehouseDocumentId warehouseDocumentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getWarehouseDocumentFilesWithRequestBuilder(warehouseDocumentId: warehouseDocumentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a warehouseDocument.
     - GET /beta/warehouseDocument/{warehouseDocumentId}/file
     - Get all existing warehouseDocument files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getWarehouseDocumentFilesWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}/file"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a warehouseDocument.
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseDocumentTags(warehouseDocumentId warehouseDocumentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getWarehouseDocumentTagsWithRequestBuilder(warehouseDocumentId: warehouseDocumentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a warehouseDocument.
     - GET /beta/warehouseDocument/{warehouseDocumentId}/tag
     - Get all existing warehouseDocument tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseDocumentId: (path) Id of the warehouseDocument to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getWarehouseDocumentTagsWithRequestBuilder(warehouseDocumentId warehouseDocumentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/warehouseDocument/{warehouseDocumentId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{warehouseDocumentId}", withString: "\(warehouseDocumentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a warehouseDocument custom fields
     
     - parameter body: (body) WarehouseDocument to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateWarehouseDocumentCustomFields(body body: WarehouseDocument, completion: ((error: ErrorType?) -> Void)) {
        updateWarehouseDocumentCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a warehouseDocument custom fields
     - PUT /beta/warehouseDocument/customFields
     - Updates an existing warehouseDocument custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) WarehouseDocument to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateWarehouseDocumentCustomFieldsWithRequestBuilder(body body: WarehouseDocument) -> RequestBuilder<Void> {
        let path = "/beta/warehouseDocument/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
