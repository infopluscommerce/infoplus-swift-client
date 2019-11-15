//
// OverrideReturnAddressAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OverrideReturnAddressAPI: APIBase {
    /**
     Create an overrideReturnAddress
     
     - parameter body: (body) OverrideReturnAddress to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOverrideReturnAddress(body body: OverrideReturnAddress, completion: ((data: OverrideReturnAddress?, error: ErrorType?) -> Void)) {
        addOverrideReturnAddressWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an overrideReturnAddress
     - POST /beta/overrideReturnAddress
     - Inserts a new overrideReturnAddress using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "zip" : "zip",
  "orderSourceId" : 5,
  "street3Province" : "street3Province",
  "country" : "country",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "warehouseId" : 1,
  "phone" : "phone",
  "street" : "street",
  "name" : "name",
  "attention" : "attention",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}}]
     
     - parameter body: (body) OverrideReturnAddress to be inserted. 

     - returns: RequestBuilder<OverrideReturnAddress> 
     */
    public class func addOverrideReturnAddressWithRequestBuilder(body body: OverrideReturnAddress) -> RequestBuilder<OverrideReturnAddress> {
        let path = "/beta/overrideReturnAddress"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OverrideReturnAddress>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an overrideReturnAddress
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to add an audit to 
     - parameter overrideReturnAddressAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOverrideReturnAddressAudit(overrideReturnAddressId overrideReturnAddressId: Int32, overrideReturnAddressAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addOverrideReturnAddressAuditWithRequestBuilder(overrideReturnAddressId: overrideReturnAddressId, overrideReturnAddressAudit: overrideReturnAddressAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an overrideReturnAddress
     - PUT /beta/overrideReturnAddress/{overrideReturnAddressId}/audit/{overrideReturnAddressAudit}
     - Adds an audit to an existing overrideReturnAddress.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to add an audit to 
     - parameter overrideReturnAddressAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOverrideReturnAddressAuditWithRequestBuilder(overrideReturnAddressId overrideReturnAddressId: Int32, overrideReturnAddressAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/overrideReturnAddress/{overrideReturnAddressId}/audit/{overrideReturnAddressAudit}"
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressId}", withString: "\(overrideReturnAddressId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressAudit}", withString: "\(overrideReturnAddressAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an overrideReturnAddress
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOverrideReturnAddressFile(overrideReturnAddressId overrideReturnAddressId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addOverrideReturnAddressFileWithRequestBuilder(overrideReturnAddressId: overrideReturnAddressId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an overrideReturnAddress
     - POST /beta/overrideReturnAddress/{overrideReturnAddressId}/file/{fileName}
     - Adds a file to an existing overrideReturnAddress.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addOverrideReturnAddressFileWithRequestBuilder(overrideReturnAddressId overrideReturnAddressId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/overrideReturnAddress/{overrideReturnAddressId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressId}", withString: "\(overrideReturnAddressId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an overrideReturnAddress.
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to add a tag to 
     - parameter overrideReturnAddressTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOverrideReturnAddressTag(overrideReturnAddressId overrideReturnAddressId: Int32, overrideReturnAddressTag: String, completion: ((error: ErrorType?) -> Void)) {
        addOverrideReturnAddressTagWithRequestBuilder(overrideReturnAddressId: overrideReturnAddressId, overrideReturnAddressTag: overrideReturnAddressTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an overrideReturnAddress.
     - PUT /beta/overrideReturnAddress/{overrideReturnAddressId}/tag/{overrideReturnAddressTag}
     - Adds a tag to an existing overrideReturnAddress.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to add a tag to 
     - parameter overrideReturnAddressTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOverrideReturnAddressTagWithRequestBuilder(overrideReturnAddressId overrideReturnAddressId: Int32, overrideReturnAddressTag: String) -> RequestBuilder<Void> {
        var path = "/beta/overrideReturnAddress/{overrideReturnAddressId}/tag/{overrideReturnAddressTag}"
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressId}", withString: "\(overrideReturnAddressId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressTag}", withString: "\(overrideReturnAddressTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an overrideReturnAddress
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOverrideReturnAddress(overrideReturnAddressId overrideReturnAddressId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteOverrideReturnAddressWithRequestBuilder(overrideReturnAddressId: overrideReturnAddressId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an overrideReturnAddress
     - DELETE /beta/overrideReturnAddress/{overrideReturnAddressId}
     - Deletes the overrideReturnAddress identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOverrideReturnAddressWithRequestBuilder(overrideReturnAddressId overrideReturnAddressId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/overrideReturnAddress/{overrideReturnAddressId}"
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressId}", withString: "\(overrideReturnAddressId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an overrideReturnAddress.
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to remove tag from 
     - parameter overrideReturnAddressTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOverrideReturnAddressTag(overrideReturnAddressId overrideReturnAddressId: Int32, overrideReturnAddressTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteOverrideReturnAddressTagWithRequestBuilder(overrideReturnAddressId: overrideReturnAddressId, overrideReturnAddressTag: overrideReturnAddressTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an overrideReturnAddress.
     - DELETE /beta/overrideReturnAddress/{overrideReturnAddressId}/tag/{overrideReturnAddressTag}
     - Deletes an existing overrideReturnAddress tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to remove tag from 
     - parameter overrideReturnAddressTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOverrideReturnAddressTagWithRequestBuilder(overrideReturnAddressId overrideReturnAddressId: Int32, overrideReturnAddressTag: String) -> RequestBuilder<Void> {
        var path = "/beta/overrideReturnAddress/{overrideReturnAddressId}/tag/{overrideReturnAddressTag}"
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressId}", withString: "\(overrideReturnAddressId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressTag}", withString: "\(overrideReturnAddressTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an overrideReturnAddress by id
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateOverrideReturnAddressById(overrideReturnAddressId overrideReturnAddressId: Int32, completion: ((data: OverrideReturnAddress?, error: ErrorType?) -> Void)) {
        getDuplicateOverrideReturnAddressByIdWithRequestBuilder(overrideReturnAddressId: overrideReturnAddressId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an overrideReturnAddress by id
     - GET /beta/overrideReturnAddress/duplicate/{overrideReturnAddressId}
     - Returns a duplicated overrideReturnAddress identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "zip" : "zip",
  "orderSourceId" : 5,
  "street3Province" : "street3Province",
  "country" : "country",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "warehouseId" : 1,
  "phone" : "phone",
  "street" : "street",
  "name" : "name",
  "attention" : "attention",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}}]
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to be duplicated. 

     - returns: RequestBuilder<OverrideReturnAddress> 
     */
    public class func getDuplicateOverrideReturnAddressByIdWithRequestBuilder(overrideReturnAddressId overrideReturnAddressId: Int32) -> RequestBuilder<OverrideReturnAddress> {
        var path = "/beta/overrideReturnAddress/duplicate/{overrideReturnAddressId}"
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressId}", withString: "\(overrideReturnAddressId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OverrideReturnAddress>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search overrideReturnAddresses by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOverrideReturnAddressByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [OverrideReturnAddress]?, error: ErrorType?) -> Void)) {
        getOverrideReturnAddressByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search overrideReturnAddresses by filter
     - GET /beta/overrideReturnAddress/search
     - Returns the list of overrideReturnAddresses that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "zip" : "zip",
  "orderSourceId" : 5,
  "street3Province" : "street3Province",
  "country" : "country",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "warehouseId" : 1,
  "phone" : "phone",
  "street" : "street",
  "name" : "name",
  "attention" : "attention",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}, {
  "zip" : "zip",
  "orderSourceId" : 5,
  "street3Province" : "street3Province",
  "country" : "country",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "warehouseId" : 1,
  "phone" : "phone",
  "street" : "street",
  "name" : "name",
  "attention" : "attention",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[OverrideReturnAddress]> 
     */
    public class func getOverrideReturnAddressByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[OverrideReturnAddress]> {
        let path = "/beta/overrideReturnAddress/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[OverrideReturnAddress]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an overrideReturnAddress by id
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOverrideReturnAddressById(overrideReturnAddressId overrideReturnAddressId: Int32, completion: ((data: OverrideReturnAddress?, error: ErrorType?) -> Void)) {
        getOverrideReturnAddressByIdWithRequestBuilder(overrideReturnAddressId: overrideReturnAddressId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an overrideReturnAddress by id
     - GET /beta/overrideReturnAddress/{overrideReturnAddressId}
     - Returns the overrideReturnAddress identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "zip" : "zip",
  "orderSourceId" : 5,
  "street3Province" : "street3Province",
  "country" : "country",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "customFields" : {
    "key" : "{}"
  },
  "warehouseId" : 1,
  "phone" : "phone",
  "street" : "street",
  "name" : "name",
  "attention" : "attention",
  "id" : 0,
  "street2" : "street2",
  "state" : "state",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6
}}]
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to be returned. 

     - returns: RequestBuilder<OverrideReturnAddress> 
     */
    public class func getOverrideReturnAddressByIdWithRequestBuilder(overrideReturnAddressId overrideReturnAddressId: Int32) -> RequestBuilder<OverrideReturnAddress> {
        var path = "/beta/overrideReturnAddress/{overrideReturnAddressId}"
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressId}", withString: "\(overrideReturnAddressId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OverrideReturnAddress>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an overrideReturnAddress.
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOverrideReturnAddressTags(overrideReturnAddressId overrideReturnAddressId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getOverrideReturnAddressTagsWithRequestBuilder(overrideReturnAddressId: overrideReturnAddressId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an overrideReturnAddress.
     - GET /beta/overrideReturnAddress/{overrideReturnAddressId}/tag
     - Get all existing overrideReturnAddress tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter overrideReturnAddressId: (path) Id of the overrideReturnAddress to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getOverrideReturnAddressTagsWithRequestBuilder(overrideReturnAddressId overrideReturnAddressId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/overrideReturnAddress/{overrideReturnAddressId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{overrideReturnAddressId}", withString: "\(overrideReturnAddressId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an overrideReturnAddress
     
     - parameter body: (body) OverrideReturnAddress to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOverrideReturnAddress(body body: OverrideReturnAddress, completion: ((error: ErrorType?) -> Void)) {
        updateOverrideReturnAddressWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an overrideReturnAddress
     - PUT /beta/overrideReturnAddress
     - Updates an existing overrideReturnAddress using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OverrideReturnAddress to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOverrideReturnAddressWithRequestBuilder(body body: OverrideReturnAddress) -> RequestBuilder<Void> {
        let path = "/beta/overrideReturnAddress"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an overrideReturnAddress custom fields
     
     - parameter body: (body) OverrideReturnAddress to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOverrideReturnAddressCustomFields(body body: OverrideReturnAddress, completion: ((error: ErrorType?) -> Void)) {
        updateOverrideReturnAddressCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an overrideReturnAddress custom fields
     - PUT /beta/overrideReturnAddress/customFields
     - Updates an existing overrideReturnAddress custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OverrideReturnAddress to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOverrideReturnAddressCustomFieldsWithRequestBuilder(body body: OverrideReturnAddress) -> RequestBuilder<Void> {
        let path = "/beta/overrideReturnAddress/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
