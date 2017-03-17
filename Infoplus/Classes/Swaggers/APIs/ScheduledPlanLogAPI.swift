//
// ScheduledPlanLogAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ScheduledPlanLogAPI: APIBase {
    /**
     
     Add new audit for a scheduledPlanLog
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to add an audit to 
     - parameter scheduledPlanLogAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addScheduledPlanLogAudit(scheduledPlanLogId scheduledPlanLogId: Int, scheduledPlanLogAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addScheduledPlanLogAuditWithRequestBuilder(scheduledPlanLogId: scheduledPlanLogId, scheduledPlanLogAudit: scheduledPlanLogAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a scheduledPlanLog
     
     - PUT /beta/scheduledPlanLog/{scheduledPlanLogId}/audit/{scheduledPlanLogAudit}
     - Adds an audit to an existing scheduledPlanLog.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to add an audit to 
     - parameter scheduledPlanLogAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addScheduledPlanLogAuditWithRequestBuilder(scheduledPlanLogId scheduledPlanLogId: Int, scheduledPlanLogAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/scheduledPlanLog/{scheduledPlanLogId}/audit/{scheduledPlanLogAudit}"
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogId}", withString: "\(scheduledPlanLogId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogAudit}", withString: "\(scheduledPlanLogAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a scheduledPlanLog.
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to add a tag to 
     - parameter scheduledPlanLogTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addScheduledPlanLogTag(scheduledPlanLogId scheduledPlanLogId: Int, scheduledPlanLogTag: String, completion: ((error: ErrorType?) -> Void)) {
        addScheduledPlanLogTagWithRequestBuilder(scheduledPlanLogId: scheduledPlanLogId, scheduledPlanLogTag: scheduledPlanLogTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a scheduledPlanLog.
     
     - PUT /beta/scheduledPlanLog/{scheduledPlanLogId}/tag/{scheduledPlanLogTag}
     - Adds a tag to an existing scheduledPlanLog.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to add a tag to 
     - parameter scheduledPlanLogTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addScheduledPlanLogTagWithRequestBuilder(scheduledPlanLogId scheduledPlanLogId: Int, scheduledPlanLogTag: String) -> RequestBuilder<Void> {
        var path = "/beta/scheduledPlanLog/{scheduledPlanLogId}/tag/{scheduledPlanLogTag}"
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogId}", withString: "\(scheduledPlanLogId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogTag}", withString: "\(scheduledPlanLogTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a scheduledPlanLog.
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to remove tag from 
     - parameter scheduledPlanLogTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteScheduledPlanLogTag(scheduledPlanLogId scheduledPlanLogId: Int, scheduledPlanLogTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteScheduledPlanLogTagWithRequestBuilder(scheduledPlanLogId: scheduledPlanLogId, scheduledPlanLogTag: scheduledPlanLogTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a scheduledPlanLog.
     
     - DELETE /beta/scheduledPlanLog/{scheduledPlanLogId}/tag/{scheduledPlanLogTag}
     - Deletes an existing scheduledPlanLog tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to remove tag from 
     - parameter scheduledPlanLogTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteScheduledPlanLogTagWithRequestBuilder(scheduledPlanLogId scheduledPlanLogId: Int, scheduledPlanLogTag: String) -> RequestBuilder<Void> {
        var path = "/beta/scheduledPlanLog/{scheduledPlanLogId}/tag/{scheduledPlanLogTag}"
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogId}", withString: "\(scheduledPlanLogId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogTag}", withString: "\(scheduledPlanLogTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a scheduledPlanLog by id
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateScheduledPlanLogById(scheduledPlanLogId scheduledPlanLogId: Int, completion: ((data: ScheduledPlanLog?, error: ErrorType?) -> Void)) {
        getDuplicateScheduledPlanLogByIdWithRequestBuilder(scheduledPlanLogId: scheduledPlanLogId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a scheduledPlanLog by id
     
     - GET /beta/scheduledPlanLog/duplicate/{scheduledPlanLogId}
     - Returns a duplicated scheduledPlanLog identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "scheduledPlanId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "linkURL" : "aeiou",
  "startTime" : "2000-01-23T04:56:07.000+0000",
  "linkText" : "aeiou",
  "id" : 123,
  "endTime" : "2000-01-23T04:56:07.000+0000",
  "message" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou"
}}]
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to be duplicated. 

     - returns: RequestBuilder<ScheduledPlanLog> 
     */
    public class func getDuplicateScheduledPlanLogByIdWithRequestBuilder(scheduledPlanLogId scheduledPlanLogId: Int) -> RequestBuilder<ScheduledPlanLog> {
        var path = "/beta/scheduledPlanLog/duplicate/{scheduledPlanLogId}"
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogId}", withString: "\(scheduledPlanLogId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ScheduledPlanLog>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search scheduledPlanLogs by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getScheduledPlanLogByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [ScheduledPlanLog]?, error: ErrorType?) -> Void)) {
        getScheduledPlanLogByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search scheduledPlanLogs by filter
     
     - GET /beta/scheduledPlanLog/search
     - Returns the list of scheduledPlanLogs that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "scheduledPlanId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "linkURL" : "aeiou",
  "startTime" : "2000-01-23T04:56:07.000+0000",
  "linkText" : "aeiou",
  "id" : 123,
  "endTime" : "2000-01-23T04:56:07.000+0000",
  "message" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ScheduledPlanLog]> 
     */
    public class func getScheduledPlanLogByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[ScheduledPlanLog]> {
        let path = "/beta/scheduledPlanLog/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ScheduledPlanLog]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a scheduledPlanLog by id
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getScheduledPlanLogById(scheduledPlanLogId scheduledPlanLogId: Int, completion: ((data: ScheduledPlanLog?, error: ErrorType?) -> Void)) {
        getScheduledPlanLogByIdWithRequestBuilder(scheduledPlanLogId: scheduledPlanLogId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a scheduledPlanLog by id
     
     - GET /beta/scheduledPlanLog/{scheduledPlanLogId}
     - Returns the scheduledPlanLog identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "scheduledPlanId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "linkURL" : "aeiou",
  "startTime" : "2000-01-23T04:56:07.000+0000",
  "linkText" : "aeiou",
  "id" : 123,
  "endTime" : "2000-01-23T04:56:07.000+0000",
  "message" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou"
}}]
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to be returned. 

     - returns: RequestBuilder<ScheduledPlanLog> 
     */
    public class func getScheduledPlanLogByIdWithRequestBuilder(scheduledPlanLogId scheduledPlanLogId: Int) -> RequestBuilder<ScheduledPlanLog> {
        var path = "/beta/scheduledPlanLog/{scheduledPlanLogId}"
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogId}", withString: "\(scheduledPlanLogId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ScheduledPlanLog>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a scheduledPlanLog.
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getScheduledPlanLogTags(scheduledPlanLogId scheduledPlanLogId: Int, completion: ((error: ErrorType?) -> Void)) {
        getScheduledPlanLogTagsWithRequestBuilder(scheduledPlanLogId: scheduledPlanLogId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a scheduledPlanLog.
     
     - GET /beta/scheduledPlanLog/{scheduledPlanLogId}/tag
     - Get all existing scheduledPlanLog tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter scheduledPlanLogId: (path) Id of the scheduledPlanLog to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getScheduledPlanLogTagsWithRequestBuilder(scheduledPlanLogId scheduledPlanLogId: Int) -> RequestBuilder<Void> {
        var path = "/beta/scheduledPlanLog/{scheduledPlanLogId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{scheduledPlanLogId}", withString: "\(scheduledPlanLogId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
