//
// AisleAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AisleAPI: APIBase {
    /**
     Create an aisle
     
     - parameter body: (body) Aisle to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addAisle(body body: Aisle, completion: ((data: Aisle?, error: ErrorType?) -> Void)) {
        addAisleWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an aisle
     - POST /beta/aisle
     - Inserts a new aisle using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) Aisle to be inserted. 

     - returns: RequestBuilder<Aisle> 
     */
    public class func addAisleWithRequestBuilder(body body: Aisle) -> RequestBuilder<Aisle> {
        let path = "/beta/aisle"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Aisle>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an aisle
     
     - parameter aisleId: (path) Id of the aisle to add an audit to 
     - parameter aisleAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addAisleAudit(aisleId aisleId: Int32, aisleAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addAisleAuditWithRequestBuilder(aisleId: aisleId, aisleAudit: aisleAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an aisle
     - PUT /beta/aisle/{aisleId}/audit/{aisleAudit}
     - Adds an audit to an existing aisle.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter aisleId: (path) Id of the aisle to add an audit to 
     - parameter aisleAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addAisleAuditWithRequestBuilder(aisleId aisleId: Int32, aisleAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/aisle/{aisleId}/audit/{aisleAudit}"
        path = path.stringByReplacingOccurrencesOfString("{aisleId}", withString: "\(aisleId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{aisleAudit}", withString: "\(aisleAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an aisle
     
     - parameter aisleId: (path) Id of the aisle to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addAisleFile(aisleId aisleId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addAisleFileWithRequestBuilder(aisleId: aisleId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an aisle
     - POST /beta/aisle/{aisleId}/file/{fileName}
     - Adds a file to an existing aisle.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter aisleId: (path) Id of the aisle to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addAisleFileWithRequestBuilder(aisleId aisleId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/aisle/{aisleId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{aisleId}", withString: "\(aisleId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an aisle.
     
     - parameter aisleId: (path) Id of the aisle to add a tag to 
     - parameter aisleTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addAisleTag(aisleId aisleId: Int32, aisleTag: String, completion: ((error: ErrorType?) -> Void)) {
        addAisleTagWithRequestBuilder(aisleId: aisleId, aisleTag: aisleTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an aisle.
     - PUT /beta/aisle/{aisleId}/tag/{aisleTag}
     - Adds a tag to an existing aisle.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter aisleId: (path) Id of the aisle to add a tag to 
     - parameter aisleTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addAisleTagWithRequestBuilder(aisleId aisleId: Int32, aisleTag: String) -> RequestBuilder<Void> {
        var path = "/beta/aisle/{aisleId}/tag/{aisleTag}"
        path = path.stringByReplacingOccurrencesOfString("{aisleId}", withString: "\(aisleId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{aisleTag}", withString: "\(aisleTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an aisle
     
     - parameter aisleId: (path) Id of the aisle to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteAisle(aisleId aisleId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteAisleWithRequestBuilder(aisleId: aisleId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an aisle
     - DELETE /beta/aisle/{aisleId}
     - Deletes the aisle identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter aisleId: (path) Id of the aisle to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteAisleWithRequestBuilder(aisleId aisleId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/aisle/{aisleId}"
        path = path.stringByReplacingOccurrencesOfString("{aisleId}", withString: "\(aisleId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an aisle.
     
     - parameter aisleId: (path) Id of the aisle to remove tag from 
     - parameter aisleTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteAisleTag(aisleId aisleId: Int32, aisleTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteAisleTagWithRequestBuilder(aisleId: aisleId, aisleTag: aisleTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an aisle.
     - DELETE /beta/aisle/{aisleId}/tag/{aisleTag}
     - Deletes an existing aisle tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter aisleId: (path) Id of the aisle to remove tag from 
     - parameter aisleTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteAisleTagWithRequestBuilder(aisleId aisleId: Int32, aisleTag: String) -> RequestBuilder<Void> {
        var path = "/beta/aisle/{aisleId}/tag/{aisleTag}"
        path = path.stringByReplacingOccurrencesOfString("{aisleId}", withString: "\(aisleId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{aisleTag}", withString: "\(aisleTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search aisles by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getAisleByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Aisle]?, error: ErrorType?) -> Void)) {
        getAisleByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search aisles by filter
     - GET /beta/aisle/search
     - Returns the list of aisles that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
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

     - returns: RequestBuilder<[Aisle]> 
     */
    public class func getAisleByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Aisle]> {
        let path = "/beta/aisle/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Aisle]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an aisle by id
     
     - parameter aisleId: (path) Id of the aisle to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getAisleById(aisleId aisleId: Int32, completion: ((data: Aisle?, error: ErrorType?) -> Void)) {
        getAisleByIdWithRequestBuilder(aisleId: aisleId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an aisle by id
     - GET /beta/aisle/{aisleId}
     - Returns the aisle identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter aisleId: (path) Id of the aisle to be returned. 

     - returns: RequestBuilder<Aisle> 
     */
    public class func getAisleByIdWithRequestBuilder(aisleId aisleId: Int32) -> RequestBuilder<Aisle> {
        var path = "/beta/aisle/{aisleId}"
        path = path.stringByReplacingOccurrencesOfString("{aisleId}", withString: "\(aisleId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Aisle>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an aisle.
     
     - parameter aisleId: (path) Id of the aisle to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getAisleTags(aisleId aisleId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getAisleTagsWithRequestBuilder(aisleId: aisleId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an aisle.
     - GET /beta/aisle/{aisleId}/tag
     - Get all existing aisle tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter aisleId: (path) Id of the aisle to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getAisleTagsWithRequestBuilder(aisleId aisleId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/aisle/{aisleId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{aisleId}", withString: "\(aisleId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an aisle by id
     
     - parameter aisleId: (path) Id of the aisle to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateAisleById(aisleId aisleId: Int32, completion: ((data: Aisle?, error: ErrorType?) -> Void)) {
        getDuplicateAisleByIdWithRequestBuilder(aisleId: aisleId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an aisle by id
     - GET /beta/aisle/duplicate/{aisleId}
     - Returns a duplicated aisle identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 6,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter aisleId: (path) Id of the aisle to be duplicated. 

     - returns: RequestBuilder<Aisle> 
     */
    public class func getDuplicateAisleByIdWithRequestBuilder(aisleId aisleId: Int32) -> RequestBuilder<Aisle> {
        var path = "/beta/aisle/duplicate/{aisleId}"
        path = path.stringByReplacingOccurrencesOfString("{aisleId}", withString: "\(aisleId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Aisle>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an aisle
     
     - parameter body: (body) Aisle to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateAisle(body body: Aisle, completion: ((error: ErrorType?) -> Void)) {
        updateAisleWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an aisle
     - PUT /beta/aisle
     - Updates an existing aisle using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Aisle to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateAisleWithRequestBuilder(body body: Aisle) -> RequestBuilder<Void> {
        let path = "/beta/aisle"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an aisle custom fields
     
     - parameter body: (body) Aisle to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateAisleCustomFields(body body: Aisle, completion: ((error: ErrorType?) -> Void)) {
        updateAisleCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an aisle custom fields
     - PUT /beta/aisle/customFields
     - Updates an existing aisle custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Aisle to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateAisleCustomFieldsWithRequestBuilder(body body: Aisle) -> RequestBuilder<Void> {
        let path = "/beta/aisle/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
