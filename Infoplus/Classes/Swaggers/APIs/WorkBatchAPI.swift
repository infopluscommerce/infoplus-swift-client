//
// WorkBatchAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class WorkBatchAPI: APIBase {
    /**
     Add new audit for a workBatch
     
     - parameter workBatchId: (path) Id of the workBatch to add an audit to 
     - parameter workBatchAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWorkBatchAudit(workBatchId workBatchId: Int32, workBatchAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addWorkBatchAuditWithRequestBuilder(workBatchId: workBatchId, workBatchAudit: workBatchAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a workBatch
     - PUT /beta/workBatch/{workBatchId}/audit/{workBatchAudit}
     - Adds an audit to an existing workBatch.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workBatchId: (path) Id of the workBatch to add an audit to 
     - parameter workBatchAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addWorkBatchAuditWithRequestBuilder(workBatchId workBatchId: Int32, workBatchAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/workBatch/{workBatchId}/audit/{workBatchAudit}"
        path = path.stringByReplacingOccurrencesOfString("{workBatchId}", withString: "\(workBatchId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{workBatchAudit}", withString: "\(workBatchAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a workBatch.
     
     - parameter workBatchId: (path) Id of the workBatch to add a tag to 
     - parameter workBatchTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWorkBatchTag(workBatchId workBatchId: Int32, workBatchTag: String, completion: ((error: ErrorType?) -> Void)) {
        addWorkBatchTagWithRequestBuilder(workBatchId: workBatchId, workBatchTag: workBatchTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a workBatch.
     - PUT /beta/workBatch/{workBatchId}/tag/{workBatchTag}
     - Adds a tag to an existing workBatch.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workBatchId: (path) Id of the workBatch to add a tag to 
     - parameter workBatchTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addWorkBatchTagWithRequestBuilder(workBatchId workBatchId: Int32, workBatchTag: String) -> RequestBuilder<Void> {
        var path = "/beta/workBatch/{workBatchId}/tag/{workBatchTag}"
        path = path.stringByReplacingOccurrencesOfString("{workBatchId}", withString: "\(workBatchId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{workBatchTag}", withString: "\(workBatchTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a workBatch.
     
     - parameter workBatchId: (path) Id of the workBatch to remove tag from 
     - parameter workBatchTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteWorkBatchTag(workBatchId workBatchId: Int32, workBatchTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteWorkBatchTagWithRequestBuilder(workBatchId: workBatchId, workBatchTag: workBatchTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a workBatch.
     - DELETE /beta/workBatch/{workBatchId}/tag/{workBatchTag}
     - Deletes an existing workBatch tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workBatchId: (path) Id of the workBatch to remove tag from 
     - parameter workBatchTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteWorkBatchTagWithRequestBuilder(workBatchId workBatchId: Int32, workBatchTag: String) -> RequestBuilder<Void> {
        var path = "/beta/workBatch/{workBatchId}/tag/{workBatchTag}"
        path = path.stringByReplacingOccurrencesOfString("{workBatchId}", withString: "\(workBatchId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{workBatchTag}", withString: "\(workBatchTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a workBatch by id
     
     - parameter workBatchId: (path) Id of the workBatch to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateWorkBatchById(workBatchId workBatchId: Int32, completion: ((data: WorkBatch?, error: ErrorType?) -> Void)) {
        getDuplicateWorkBatchByIdWithRequestBuilder(workBatchId: workBatchId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a workBatch by id
     - GET /beta/workBatch/duplicate/{workBatchId}
     - Returns a duplicated workBatch identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "batchPriorityCode" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter workBatchId: (path) Id of the workBatch to be duplicated. 

     - returns: RequestBuilder<WorkBatch> 
     */
    public class func getDuplicateWorkBatchByIdWithRequestBuilder(workBatchId workBatchId: Int32) -> RequestBuilder<WorkBatch> {
        var path = "/beta/workBatch/duplicate/{workBatchId}"
        path = path.stringByReplacingOccurrencesOfString("{workBatchId}", withString: "\(workBatchId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<WorkBatch>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search workBatchs by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWorkBatchByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [WorkBatch]?, error: ErrorType?) -> Void)) {
        getWorkBatchByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search workBatchs by filter
     - GET /beta/workBatch/search
     - Returns the list of workBatchs that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "batchPriorityCode" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "batchPriorityCode" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[WorkBatch]> 
     */
    public class func getWorkBatchByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[WorkBatch]> {
        let path = "/beta/workBatch/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[WorkBatch]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a workBatch by id
     
     - parameter workBatchId: (path) Id of the workBatch to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWorkBatchById(workBatchId workBatchId: Int32, completion: ((data: WorkBatch?, error: ErrorType?) -> Void)) {
        getWorkBatchByIdWithRequestBuilder(workBatchId: workBatchId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a workBatch by id
     - GET /beta/workBatch/{workBatchId}
     - Returns the workBatch identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "batchPriorityCode" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter workBatchId: (path) Id of the workBatch to be returned. 

     - returns: RequestBuilder<WorkBatch> 
     */
    public class func getWorkBatchByIdWithRequestBuilder(workBatchId workBatchId: Int32) -> RequestBuilder<WorkBatch> {
        var path = "/beta/workBatch/{workBatchId}"
        path = path.stringByReplacingOccurrencesOfString("{workBatchId}", withString: "\(workBatchId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<WorkBatch>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a workBatch.
     
     - parameter workBatchId: (path) Id of the workBatch to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWorkBatchTags(workBatchId workBatchId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getWorkBatchTagsWithRequestBuilder(workBatchId: workBatchId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a workBatch.
     - GET /beta/workBatch/{workBatchId}/tag
     - Get all existing workBatch tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter workBatchId: (path) Id of the workBatch to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getWorkBatchTagsWithRequestBuilder(workBatchId workBatchId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/workBatch/{workBatchId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{workBatchId}", withString: "\(workBatchId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a workBatch
     
     - parameter body: (body) WorkBatch to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateWorkBatch(body body: WorkBatch, completion: ((error: ErrorType?) -> Void)) {
        updateWorkBatchWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a workBatch
     - PUT /beta/workBatch
     - Updates an existing workBatch using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) WorkBatch to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateWorkBatchWithRequestBuilder(body body: WorkBatch) -> RequestBuilder<Void> {
        let path = "/beta/workBatch"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a workBatch custom fields
     
     - parameter body: (body) WorkBatch to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateWorkBatchCustomFields(body body: WorkBatch, completion: ((error: ErrorType?) -> Void)) {
        updateWorkBatchCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a workBatch custom fields
     - PUT /beta/workBatch/customFields
     - Updates an existing workBatch custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) WorkBatch to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateWorkBatchCustomFieldsWithRequestBuilder(body body: WorkBatch) -> RequestBuilder<Void> {
        let path = "/beta/workBatch/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
