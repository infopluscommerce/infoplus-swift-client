//
// SlaSetupAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class SlaSetupAPI: APIBase {
    /**
     Add new audit for a slaSetup
     
     - parameter slaSetupId: (path) Id of the slaSetup to add an audit to 
     - parameter slaSetupAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addSlaSetupAudit(slaSetupId slaSetupId: Int32, slaSetupAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addSlaSetupAuditWithRequestBuilder(slaSetupId: slaSetupId, slaSetupAudit: slaSetupAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a slaSetup
     - PUT /beta/slaSetup/{slaSetupId}/audit/{slaSetupAudit}
     - Adds an audit to an existing slaSetup.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter slaSetupId: (path) Id of the slaSetup to add an audit to 
     - parameter slaSetupAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addSlaSetupAuditWithRequestBuilder(slaSetupId slaSetupId: Int32, slaSetupAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/slaSetup/{slaSetupId}/audit/{slaSetupAudit}"
        path = path.stringByReplacingOccurrencesOfString("{slaSetupId}", withString: "\(slaSetupId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{slaSetupAudit}", withString: "\(slaSetupAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a slaSetup.
     
     - parameter slaSetupId: (path) Id of the slaSetup to add a tag to 
     - parameter slaSetupTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addSlaSetupTag(slaSetupId slaSetupId: Int32, slaSetupTag: String, completion: ((error: ErrorType?) -> Void)) {
        addSlaSetupTagWithRequestBuilder(slaSetupId: slaSetupId, slaSetupTag: slaSetupTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a slaSetup.
     - PUT /beta/slaSetup/{slaSetupId}/tag/{slaSetupTag}
     - Adds a tag to an existing slaSetup.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter slaSetupId: (path) Id of the slaSetup to add a tag to 
     - parameter slaSetupTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addSlaSetupTagWithRequestBuilder(slaSetupId slaSetupId: Int32, slaSetupTag: String) -> RequestBuilder<Void> {
        var path = "/beta/slaSetup/{slaSetupId}/tag/{slaSetupTag}"
        path = path.stringByReplacingOccurrencesOfString("{slaSetupId}", withString: "\(slaSetupId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{slaSetupTag}", withString: "\(slaSetupTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a slaSetup.
     
     - parameter slaSetupId: (path) Id of the slaSetup to remove tag from 
     - parameter slaSetupTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteSlaSetupTag(slaSetupId slaSetupId: Int32, slaSetupTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteSlaSetupTagWithRequestBuilder(slaSetupId: slaSetupId, slaSetupTag: slaSetupTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a slaSetup.
     - DELETE /beta/slaSetup/{slaSetupId}/tag/{slaSetupTag}
     - Deletes an existing slaSetup tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter slaSetupId: (path) Id of the slaSetup to remove tag from 
     - parameter slaSetupTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteSlaSetupTagWithRequestBuilder(slaSetupId slaSetupId: Int32, slaSetupTag: String) -> RequestBuilder<Void> {
        var path = "/beta/slaSetup/{slaSetupId}/tag/{slaSetupTag}"
        path = path.stringByReplacingOccurrencesOfString("{slaSetupId}", withString: "\(slaSetupId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{slaSetupTag}", withString: "\(slaSetupTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a slaSetup by id
     
     - parameter slaSetupId: (path) Id of the slaSetup to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateSlaSetupById(slaSetupId slaSetupId: Int32, completion: ((data: SlaSetup?, error: ErrorType?) -> Void)) {
        getDuplicateSlaSetupByIdWithRequestBuilder(slaSetupId: slaSetupId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a slaSetup by id
     - GET /beta/slaSetup/duplicate/{slaSetupId}
     - Returns a duplicated slaSetup identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "massDistributionServiceDays" : 2,
  "standardServiceDays" : 5,
  "standardServiceCutoffHour" : 5,
  "warehouseId" : 1,
  "backorderServiceDays" : 9,
  "customFields" : {
    "key" : "{}"
  },
  "backorderServiceCutoffHour" : 3,
  "rushServiceCutoffHour" : 2,
  "massDistributionServiceCutoffHour" : 7,
  "id" : 0,
  "effectiveDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}}]
     
     - parameter slaSetupId: (path) Id of the slaSetup to be duplicated. 

     - returns: RequestBuilder<SlaSetup> 
     */
    public class func getDuplicateSlaSetupByIdWithRequestBuilder(slaSetupId slaSetupId: Int32) -> RequestBuilder<SlaSetup> {
        var path = "/beta/slaSetup/duplicate/{slaSetupId}"
        path = path.stringByReplacingOccurrencesOfString("{slaSetupId}", withString: "\(slaSetupId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<SlaSetup>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search slaSetups by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getSlaSetupByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [SlaSetup]?, error: ErrorType?) -> Void)) {
        getSlaSetupByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search slaSetups by filter
     - GET /beta/slaSetup/search
     - Returns the list of slaSetups that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "massDistributionServiceDays" : 2,
  "standardServiceDays" : 5,
  "standardServiceCutoffHour" : 5,
  "warehouseId" : 1,
  "backorderServiceDays" : 9,
  "customFields" : {
    "key" : "{}"
  },
  "backorderServiceCutoffHour" : 3,
  "rushServiceCutoffHour" : 2,
  "massDistributionServiceCutoffHour" : 7,
  "id" : 0,
  "effectiveDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}, {
  "massDistributionServiceDays" : 2,
  "standardServiceDays" : 5,
  "standardServiceCutoffHour" : 5,
  "warehouseId" : 1,
  "backorderServiceDays" : 9,
  "customFields" : {
    "key" : "{}"
  },
  "backorderServiceCutoffHour" : 3,
  "rushServiceCutoffHour" : 2,
  "massDistributionServiceCutoffHour" : 7,
  "id" : 0,
  "effectiveDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[SlaSetup]> 
     */
    public class func getSlaSetupByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[SlaSetup]> {
        let path = "/beta/slaSetup/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[SlaSetup]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a slaSetup by id
     
     - parameter slaSetupId: (path) Id of the slaSetup to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getSlaSetupById(slaSetupId slaSetupId: Int32, completion: ((data: SlaSetup?, error: ErrorType?) -> Void)) {
        getSlaSetupByIdWithRequestBuilder(slaSetupId: slaSetupId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a slaSetup by id
     - GET /beta/slaSetup/{slaSetupId}
     - Returns the slaSetup identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "massDistributionServiceDays" : 2,
  "standardServiceDays" : 5,
  "standardServiceCutoffHour" : 5,
  "warehouseId" : 1,
  "backorderServiceDays" : 9,
  "customFields" : {
    "key" : "{}"
  },
  "backorderServiceCutoffHour" : 3,
  "rushServiceCutoffHour" : 2,
  "massDistributionServiceCutoffHour" : 7,
  "id" : 0,
  "effectiveDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}}]
     
     - parameter slaSetupId: (path) Id of the slaSetup to be returned. 

     - returns: RequestBuilder<SlaSetup> 
     */
    public class func getSlaSetupByIdWithRequestBuilder(slaSetupId slaSetupId: Int32) -> RequestBuilder<SlaSetup> {
        var path = "/beta/slaSetup/{slaSetupId}"
        path = path.stringByReplacingOccurrencesOfString("{slaSetupId}", withString: "\(slaSetupId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<SlaSetup>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a slaSetup.
     
     - parameter slaSetupId: (path) Id of the slaSetup to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getSlaSetupTags(slaSetupId slaSetupId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getSlaSetupTagsWithRequestBuilder(slaSetupId: slaSetupId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a slaSetup.
     - GET /beta/slaSetup/{slaSetupId}/tag
     - Get all existing slaSetup tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter slaSetupId: (path) Id of the slaSetup to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getSlaSetupTagsWithRequestBuilder(slaSetupId slaSetupId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/slaSetup/{slaSetupId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{slaSetupId}", withString: "\(slaSetupId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
