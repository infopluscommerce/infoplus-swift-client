//
// WorkAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class WorkAPI: APIBase {
    /**
     Add new audit for a work
     
     - parameter workId: (path) Id of the work to add an audit to 
     - parameter workAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWorkAudit(workId workId: Int32, workAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addWorkAuditWithRequestBuilder(workId: workId, workAudit: workAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a work
     - PUT /beta/work/{workId}/audit/{workAudit}
     - Adds an audit to an existing work.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workId: (path) Id of the work to add an audit to 
     - parameter workAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addWorkAuditWithRequestBuilder(workId workId: Int32, workAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/work/{workId}/audit/{workAudit}"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{workAudit}", withString: "\(workAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a work
     
     - parameter workId: (path) Id of the work to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWorkFile(workId workId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addWorkFileWithRequestBuilder(workId: workId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a work
     - POST /beta/work/{workId}/file/{fileName}
     - Adds a file to an existing work.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workId: (path) Id of the work to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addWorkFileWithRequestBuilder(workId workId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/work/{workId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a work by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter workId: (path) Id of the work to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWorkFileByURL(body body: RecordFile, workId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addWorkFileByURLWithRequestBuilder(body: body, workId: workId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a work by URL.
     - POST /beta/work/{workId}/file
     - Adds a file to an existing work by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter workId: (path) Id of the work to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addWorkFileByURLWithRequestBuilder(body body: RecordFile, workId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/work/{workId}/file"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a work.
     
     - parameter workId: (path) Id of the work to add a tag to 
     - parameter workTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWorkTag(workId workId: Int32, workTag: String, completion: ((error: ErrorType?) -> Void)) {
        addWorkTagWithRequestBuilder(workId: workId, workTag: workTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a work.
     - PUT /beta/work/{workId}/tag/{workTag}
     - Adds a tag to an existing work.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workId: (path) Id of the work to add a tag to 
     - parameter workTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addWorkTagWithRequestBuilder(workId workId: Int32, workTag: String) -> RequestBuilder<Void> {
        var path = "/beta/work/{workId}/tag/{workTag}"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{workTag}", withString: "\(workTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a work.
     
     - parameter workId: (path) Id of the work to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteWorkFile(workId workId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteWorkFileWithRequestBuilder(workId: workId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a work.
     - DELETE /beta/work/{workId}/file/{fileId}
     - Deletes an existing work file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workId: (path) Id of the work to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteWorkFileWithRequestBuilder(workId workId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/work/{workId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a work.
     
     - parameter workId: (path) Id of the work to remove tag from 
     - parameter workTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteWorkTag(workId workId: Int32, workTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteWorkTagWithRequestBuilder(workId: workId, workTag: workTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a work.
     - DELETE /beta/work/{workId}/tag/{workTag}
     - Deletes an existing work tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workId: (path) Id of the work to remove tag from 
     - parameter workTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteWorkTagWithRequestBuilder(workId workId: Int32, workTag: String) -> RequestBuilder<Void> {
        var path = "/beta/work/{workId}/tag/{workTag}"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{workTag}", withString: "\(workTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a work by id
     
     - parameter workId: (path) Id of the work to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateWorkById(workId workId: Int32, completion: ((data: Work?, error: ErrorType?) -> Void)) {
        getDuplicateWorkByIdWithRequestBuilder(workId: workId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a work by id
     - GET /beta/work/duplicate/{workId}
     - Returns a duplicated work identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "destinationWarehouseId" : 5,
  "workProductList" : [ {
    "quantity" : 4,
    "poNo" : "poNo",
    "customFields" : {
      "key" : "{}"
    },
    "itemDescription" : "itemDescription",
    "sku" : "sku",
    "lobId" : 2
  }, {
    "quantity" : 4,
    "poNo" : "poNo",
    "customFields" : {
      "key" : "{}"
    },
    "itemDescription" : "itemDescription",
    "sku" : "sku",
    "lobId" : 2
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "destinationBuildingId" : 5,
  "destinationLocation" : "destinationLocation",
  "fulfillmentProcessId" : 7,
  "type" : "type",
  "userId" : 7,
  "sourceWarehouseId" : 6,
  "workBatchId" : 3,
  "sourceBuildingId" : 1,
  "sourceLocation" : "sourceLocation",
  "priorityCode" : 2,
  "id" : 0,
  "userDefinedMessage" : "userDefinedMessage",
  "pickLineId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status",
  "lobId" : 9
}}]
     
     - parameter workId: (path) Id of the work to be duplicated. 

     - returns: RequestBuilder<Work> 
     */
    public class func getDuplicateWorkByIdWithRequestBuilder(workId workId: Int32) -> RequestBuilder<Work> {
        var path = "/beta/work/duplicate/{workId}"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Work>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search works by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWorkByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Work]?, error: ErrorType?) -> Void)) {
        getWorkByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search works by filter
     - GET /beta/work/search
     - Returns the list of works that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "destinationWarehouseId" : 5,
  "workProductList" : [ {
    "quantity" : 4,
    "poNo" : "poNo",
    "customFields" : {
      "key" : "{}"
    },
    "itemDescription" : "itemDescription",
    "sku" : "sku",
    "lobId" : 2
  }, {
    "quantity" : 4,
    "poNo" : "poNo",
    "customFields" : {
      "key" : "{}"
    },
    "itemDescription" : "itemDescription",
    "sku" : "sku",
    "lobId" : 2
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "destinationBuildingId" : 5,
  "destinationLocation" : "destinationLocation",
  "fulfillmentProcessId" : 7,
  "type" : "type",
  "userId" : 7,
  "sourceWarehouseId" : 6,
  "workBatchId" : 3,
  "sourceBuildingId" : 1,
  "sourceLocation" : "sourceLocation",
  "priorityCode" : 2,
  "id" : 0,
  "userDefinedMessage" : "userDefinedMessage",
  "pickLineId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status",
  "lobId" : 9
}, {
  "destinationWarehouseId" : 5,
  "workProductList" : [ {
    "quantity" : 4,
    "poNo" : "poNo",
    "customFields" : {
      "key" : "{}"
    },
    "itemDescription" : "itemDescription",
    "sku" : "sku",
    "lobId" : 2
  }, {
    "quantity" : 4,
    "poNo" : "poNo",
    "customFields" : {
      "key" : "{}"
    },
    "itemDescription" : "itemDescription",
    "sku" : "sku",
    "lobId" : 2
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "destinationBuildingId" : 5,
  "destinationLocation" : "destinationLocation",
  "fulfillmentProcessId" : 7,
  "type" : "type",
  "userId" : 7,
  "sourceWarehouseId" : 6,
  "workBatchId" : 3,
  "sourceBuildingId" : 1,
  "sourceLocation" : "sourceLocation",
  "priorityCode" : 2,
  "id" : 0,
  "userDefinedMessage" : "userDefinedMessage",
  "pickLineId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status",
  "lobId" : 9
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Work]> 
     */
    public class func getWorkByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Work]> {
        let path = "/beta/work/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Work]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a work by id
     
     - parameter workId: (path) Id of the work to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWorkById(workId workId: Int32, completion: ((data: Work?, error: ErrorType?) -> Void)) {
        getWorkByIdWithRequestBuilder(workId: workId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a work by id
     - GET /beta/work/{workId}
     - Returns the work identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "destinationWarehouseId" : 5,
  "workProductList" : [ {
    "quantity" : 4,
    "poNo" : "poNo",
    "customFields" : {
      "key" : "{}"
    },
    "itemDescription" : "itemDescription",
    "sku" : "sku",
    "lobId" : 2
  }, {
    "quantity" : 4,
    "poNo" : "poNo",
    "customFields" : {
      "key" : "{}"
    },
    "itemDescription" : "itemDescription",
    "sku" : "sku",
    "lobId" : 2
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "destinationBuildingId" : 5,
  "destinationLocation" : "destinationLocation",
  "fulfillmentProcessId" : 7,
  "type" : "type",
  "userId" : 7,
  "sourceWarehouseId" : 6,
  "workBatchId" : 3,
  "sourceBuildingId" : 1,
  "sourceLocation" : "sourceLocation",
  "priorityCode" : 2,
  "id" : 0,
  "userDefinedMessage" : "userDefinedMessage",
  "pickLineId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "status",
  "lobId" : 9
}}]
     
     - parameter workId: (path) Id of the work to be returned. 

     - returns: RequestBuilder<Work> 
     */
    public class func getWorkByIdWithRequestBuilder(workId workId: Int32) -> RequestBuilder<Work> {
        var path = "/beta/work/{workId}"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Work>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a work.
     
     - parameter workId: (path) Id of the work to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWorkFiles(workId workId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getWorkFilesWithRequestBuilder(workId: workId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a work.
     - GET /beta/work/{workId}/file
     - Get all existing work files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workId: (path) Id of the work to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getWorkFilesWithRequestBuilder(workId workId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/work/{workId}/file"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a work.
     
     - parameter workId: (path) Id of the work to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWorkTags(workId workId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getWorkTagsWithRequestBuilder(workId: workId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a work.
     - GET /beta/work/{workId}/tag
     - Get all existing work tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workId: (path) Id of the work to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getWorkTagsWithRequestBuilder(workId workId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/work/{workId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{workId}", withString: "\(workId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a work
     
     - parameter body: (body) Work to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateWork(body body: Work, completion: ((error: ErrorType?) -> Void)) {
        updateWorkWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a work
     - PUT /beta/work
     - Updates an existing work using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Work to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateWorkWithRequestBuilder(body body: Work) -> RequestBuilder<Void> {
        let path = "/beta/work"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a work custom fields
     
     - parameter body: (body) Work to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateWorkCustomFields(body body: Work, completion: ((error: ErrorType?) -> Void)) {
        updateWorkCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a work custom fields
     - PUT /beta/work/customFields
     - Updates an existing work custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Work to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateWorkCustomFieldsWithRequestBuilder(body body: Work) -> RequestBuilder<Void> {
        let path = "/beta/work/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
