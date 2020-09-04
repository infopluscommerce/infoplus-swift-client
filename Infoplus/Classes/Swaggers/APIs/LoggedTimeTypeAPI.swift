//
// LoggedTimeTypeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LoggedTimeTypeAPI: APIBase {
    /**
     Get a loggedTimeType by id
     
     - parameter loggedTimeTypeId: (path) Id of loggedTimeType to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLoggedTimeTypeById(loggedTimeTypeId loggedTimeTypeId: String, completion: ((data: LoggedTimeType?, error: ErrorType?) -> Void)) {
        getLoggedTimeTypeByIdWithRequestBuilder(loggedTimeTypeId: loggedTimeTypeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a loggedTimeType by id
     - GET /beta/loggedTimeType/{loggedTimeTypeId}
     - Returns the loggedTimeType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "id" : 0,
  "label" : "label"
}}]
     
     - parameter loggedTimeTypeId: (path) Id of loggedTimeType to be returned. 

     - returns: RequestBuilder<LoggedTimeType> 
     */
    public class func getLoggedTimeTypeByIdWithRequestBuilder(loggedTimeTypeId loggedTimeTypeId: String) -> RequestBuilder<LoggedTimeType> {
        var path = "/beta/loggedTimeType/{loggedTimeTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{loggedTimeTypeId}", withString: "\(loggedTimeTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LoggedTimeType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search loggedTimeTypes
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLoggedTimeTypeBySearchText(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil, completion: ((data: [LoggedTimeType]?, error: ErrorType?) -> Void)) {
        getLoggedTimeTypeBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search loggedTimeTypes
     - GET /beta/loggedTimeType/search
     - Returns the list of loggedTimeTypes that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "id" : 0,
  "label" : "label"
}, {
  "id" : 0,
  "label" : "label"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[LoggedTimeType]> 
     */
    public class func getLoggedTimeTypeBySearchTextWithRequestBuilder(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil) -> RequestBuilder<[LoggedTimeType]> {
        let path = "/beta/loggedTimeType/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[LoggedTimeType]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}