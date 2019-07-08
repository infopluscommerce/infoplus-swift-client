//
// FinanceSystemConnectionLogAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FinanceSystemConnectionLogAPI: APIBase {
    /**
     Add new audit for a financeSystemConnectionLog
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to add an audit to 
     - parameter financeSystemConnectionLogAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFinanceSystemConnectionLogAudit(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, financeSystemConnectionLogAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addFinanceSystemConnectionLogAuditWithRequestBuilder(financeSystemConnectionLogId: financeSystemConnectionLogId, financeSystemConnectionLogAudit: financeSystemConnectionLogAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a financeSystemConnectionLog
     - PUT /beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/audit/{financeSystemConnectionLogAudit}
     - Adds an audit to an existing financeSystemConnectionLog.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to add an audit to 
     - parameter financeSystemConnectionLogAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addFinanceSystemConnectionLogAuditWithRequestBuilder(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, financeSystemConnectionLogAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/audit/{financeSystemConnectionLogAudit}"
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogId}", withString: "\(financeSystemConnectionLogId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogAudit}", withString: "\(financeSystemConnectionLogAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a financeSystemConnectionLog
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFinanceSystemConnectionLogFile(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addFinanceSystemConnectionLogFileWithRequestBuilder(financeSystemConnectionLogId: financeSystemConnectionLogId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a financeSystemConnectionLog
     - POST /beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/file/{fileName}
     - Adds a file to an existing financeSystemConnectionLog.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addFinanceSystemConnectionLogFileWithRequestBuilder(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogId}", withString: "\(financeSystemConnectionLogId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a financeSystemConnectionLog.
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to add a tag to 
     - parameter financeSystemConnectionLogTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFinanceSystemConnectionLogTag(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, financeSystemConnectionLogTag: String, completion: ((error: ErrorType?) -> Void)) {
        addFinanceSystemConnectionLogTagWithRequestBuilder(financeSystemConnectionLogId: financeSystemConnectionLogId, financeSystemConnectionLogTag: financeSystemConnectionLogTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a financeSystemConnectionLog.
     - PUT /beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/tag/{financeSystemConnectionLogTag}
     - Adds a tag to an existing financeSystemConnectionLog.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to add a tag to 
     - parameter financeSystemConnectionLogTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addFinanceSystemConnectionLogTagWithRequestBuilder(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, financeSystemConnectionLogTag: String) -> RequestBuilder<Void> {
        var path = "/beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/tag/{financeSystemConnectionLogTag}"
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogId}", withString: "\(financeSystemConnectionLogId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogTag}", withString: "\(financeSystemConnectionLogTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a financeSystemConnectionLog.
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to remove tag from 
     - parameter financeSystemConnectionLogTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteFinanceSystemConnectionLogTag(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, financeSystemConnectionLogTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteFinanceSystemConnectionLogTagWithRequestBuilder(financeSystemConnectionLogId: financeSystemConnectionLogId, financeSystemConnectionLogTag: financeSystemConnectionLogTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a financeSystemConnectionLog.
     - DELETE /beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/tag/{financeSystemConnectionLogTag}
     - Deletes an existing financeSystemConnectionLog tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to remove tag from 
     - parameter financeSystemConnectionLogTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteFinanceSystemConnectionLogTagWithRequestBuilder(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, financeSystemConnectionLogTag: String) -> RequestBuilder<Void> {
        var path = "/beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/tag/{financeSystemConnectionLogTag}"
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogId}", withString: "\(financeSystemConnectionLogId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogTag}", withString: "\(financeSystemConnectionLogTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a financeSystemConnectionLog by id
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateFinanceSystemConnectionLogById(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, completion: ((data: FinanceSystemConnectionLog?, error: ErrorType?) -> Void)) {
        getDuplicateFinanceSystemConnectionLogByIdWithRequestBuilder(financeSystemConnectionLogId: financeSystemConnectionLogId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a financeSystemConnectionLog by id
     - GET /beta/financeSystemConnectionLog/duplicate/{financeSystemConnectionLogId}
     - Returns a duplicated financeSystemConnectionLog identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "notes" : "notes",
  "orderNo" : 1.46581298050294517310021547018550336360931396484375,
  "financeSystemConnectionId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "financeSystemPONo" : "financeSystemPONo",
  "financeSystemOrderNo" : "financeSystemOrderNo",
  "type" : "type",
  "financeSystemOrderId" : "financeSystemOrderId",
  "financeSystemPOId" : "financeSystemPOId",
  "jobIdId" : 7,
  "itemReceiptIdId" : 5,
  "id" : 0,
  "asnId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "adjustmentIdId" : 2
}}]
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to be duplicated. 

     - returns: RequestBuilder<FinanceSystemConnectionLog> 
     */
    public class func getDuplicateFinanceSystemConnectionLogByIdWithRequestBuilder(financeSystemConnectionLogId financeSystemConnectionLogId: Int32) -> RequestBuilder<FinanceSystemConnectionLog> {
        var path = "/beta/financeSystemConnectionLog/duplicate/{financeSystemConnectionLogId}"
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogId}", withString: "\(financeSystemConnectionLogId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FinanceSystemConnectionLog>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search financeSystemConnectionLogs by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFinanceSystemConnectionLogByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [FinanceSystemConnectionLog]?, error: ErrorType?) -> Void)) {
        getFinanceSystemConnectionLogByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search financeSystemConnectionLogs by filter
     - GET /beta/financeSystemConnectionLog/search
     - Returns the list of financeSystemConnectionLogs that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "notes" : "notes",
  "orderNo" : 1.46581298050294517310021547018550336360931396484375,
  "financeSystemConnectionId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "financeSystemPONo" : "financeSystemPONo",
  "financeSystemOrderNo" : "financeSystemOrderNo",
  "type" : "type",
  "financeSystemOrderId" : "financeSystemOrderId",
  "financeSystemPOId" : "financeSystemPOId",
  "jobIdId" : 7,
  "itemReceiptIdId" : 5,
  "id" : 0,
  "asnId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "adjustmentIdId" : 2
}, {
  "notes" : "notes",
  "orderNo" : 1.46581298050294517310021547018550336360931396484375,
  "financeSystemConnectionId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "financeSystemPONo" : "financeSystemPONo",
  "financeSystemOrderNo" : "financeSystemOrderNo",
  "type" : "type",
  "financeSystemOrderId" : "financeSystemOrderId",
  "financeSystemPOId" : "financeSystemPOId",
  "jobIdId" : 7,
  "itemReceiptIdId" : 5,
  "id" : 0,
  "asnId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "adjustmentIdId" : 2
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[FinanceSystemConnectionLog]> 
     */
    public class func getFinanceSystemConnectionLogByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[FinanceSystemConnectionLog]> {
        let path = "/beta/financeSystemConnectionLog/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[FinanceSystemConnectionLog]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a financeSystemConnectionLog by id
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFinanceSystemConnectionLogById(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, completion: ((data: FinanceSystemConnectionLog?, error: ErrorType?) -> Void)) {
        getFinanceSystemConnectionLogByIdWithRequestBuilder(financeSystemConnectionLogId: financeSystemConnectionLogId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a financeSystemConnectionLog by id
     - GET /beta/financeSystemConnectionLog/{financeSystemConnectionLogId}
     - Returns the financeSystemConnectionLog identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "notes" : "notes",
  "orderNo" : 1.46581298050294517310021547018550336360931396484375,
  "financeSystemConnectionId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "financeSystemPONo" : "financeSystemPONo",
  "financeSystemOrderNo" : "financeSystemOrderNo",
  "type" : "type",
  "financeSystemOrderId" : "financeSystemOrderId",
  "financeSystemPOId" : "financeSystemPOId",
  "jobIdId" : 7,
  "itemReceiptIdId" : 5,
  "id" : 0,
  "asnId" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "adjustmentIdId" : 2
}}]
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to be returned. 

     - returns: RequestBuilder<FinanceSystemConnectionLog> 
     */
    public class func getFinanceSystemConnectionLogByIdWithRequestBuilder(financeSystemConnectionLogId financeSystemConnectionLogId: Int32) -> RequestBuilder<FinanceSystemConnectionLog> {
        var path = "/beta/financeSystemConnectionLog/{financeSystemConnectionLogId}"
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogId}", withString: "\(financeSystemConnectionLogId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FinanceSystemConnectionLog>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a financeSystemConnectionLog.
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFinanceSystemConnectionLogTags(financeSystemConnectionLogId financeSystemConnectionLogId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getFinanceSystemConnectionLogTagsWithRequestBuilder(financeSystemConnectionLogId: financeSystemConnectionLogId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a financeSystemConnectionLog.
     - GET /beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/tag
     - Get all existing financeSystemConnectionLog tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter financeSystemConnectionLogId: (path) Id of the financeSystemConnectionLog to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getFinanceSystemConnectionLogTagsWithRequestBuilder(financeSystemConnectionLogId financeSystemConnectionLogId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/financeSystemConnectionLog/{financeSystemConnectionLogId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{financeSystemConnectionLogId}", withString: "\(financeSystemConnectionLogId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
