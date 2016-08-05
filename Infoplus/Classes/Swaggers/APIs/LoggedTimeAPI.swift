//
// LoggedTimeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LoggedTimeAPI: APIBase {
    /**
     
     Search loggedTimes by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLoggedTimeByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [LoggedTime]?, error: ErrorType?) -> Void)) {
        getLoggedTimeByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search loggedTimes by filter
     
     - GET /beta/loggedTime/search
     - Returns the list of loggedTimes that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "loggedTimeTypeId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "start" : "2000-01-23T04:56:07.000+0000",
  "description" : "aeiou",
  "userId" : 123,
  "duration" : 123,
  "warehouseId" : 123,
  "appId" : 123,
  "client" : 123,
  "end" : "2000-01-23T04:56:07.000+0000",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[LoggedTime]> 
     */
    public class func getLoggedTimeByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[LoggedTime]> {
        let path = "/beta/loggedTime/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[LoggedTime]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a loggedTime by id
     
     - parameter loggedTimeId: (path) Id of the loggedTime to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLoggedTimeById(loggedTimeId loggedTimeId: Int, completion: ((data: LoggedTime?, error: ErrorType?) -> Void)) {
        getLoggedTimeByIdWithRequestBuilder(loggedTimeId: loggedTimeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a loggedTime by id
     
     - GET /beta/loggedTime/{loggedTimeId}
     - Returns the loggedTime identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "loggedTimeTypeId" : 123,
  "customFields" : {
    "key" : "{}"
  },
  "start" : "2000-01-23T04:56:07.000+0000",
  "description" : "aeiou",
  "userId" : 123,
  "duration" : 123,
  "warehouseId" : 123,
  "appId" : 123,
  "client" : 123,
  "end" : "2000-01-23T04:56:07.000+0000",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123
}}]
     
     - parameter loggedTimeId: (path) Id of the loggedTime to be returned. 

     - returns: RequestBuilder<LoggedTime> 
     */
    public class func getLoggedTimeByIdWithRequestBuilder(loggedTimeId loggedTimeId: Int) -> RequestBuilder<LoggedTime> {
        var path = "/beta/loggedTime/{loggedTimeId}"
        path = path.stringByReplacingOccurrencesOfString("{loggedTimeId}", withString: "\(loggedTimeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LoggedTime>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a loggedTime custom fields
     
     - parameter body: (body) LoggedTime to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLoggedTimeCustomFields(body body: LoggedTime, completion: ((error: ErrorType?) -> Void)) {
        updateLoggedTimeCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a loggedTime custom fields
     
     - PUT /beta/loggedTime/customFields
     - Updates an existing loggedTime custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LoggedTime to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLoggedTimeCustomFieldsWithRequestBuilder(body body: LoggedTime) -> RequestBuilder<Void> {
        let path = "/beta/loggedTime/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
