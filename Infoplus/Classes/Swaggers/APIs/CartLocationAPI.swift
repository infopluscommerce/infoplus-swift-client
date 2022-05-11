//
// CartLocationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CartLocationAPI: APIBase {
    /**
     Add new audit for a cartLocation
     
     - parameter cartLocationId: (path) Id of the cartLocation to add an audit to 
     - parameter cartLocationAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartLocationAudit(cartLocationId cartLocationId: Int32, cartLocationAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addCartLocationAuditWithRequestBuilder(cartLocationId: cartLocationId, cartLocationAudit: cartLocationAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a cartLocation
     - PUT /v3.0/cartLocation/{cartLocationId}/audit/{cartLocationAudit}
     - Adds an audit to an existing cartLocation.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartLocationId: (path) Id of the cartLocation to add an audit to 
     - parameter cartLocationAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartLocationAuditWithRequestBuilder(cartLocationId cartLocationId: Int32, cartLocationAudit: String) -> RequestBuilder<Void> {
        var path = "/v3.0/cartLocation/{cartLocationId}/audit/{cartLocationAudit}"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartLocationAudit}", withString: "\(cartLocationAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a cartLocation
     
     - parameter cartLocationId: (path) Id of the cartLocation to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartLocationFile(cartLocationId cartLocationId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addCartLocationFileWithRequestBuilder(cartLocationId: cartLocationId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a cartLocation
     - POST /v3.0/cartLocation/{cartLocationId}/file/{fileName}
     - Adds a file to an existing cartLocation.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartLocationId: (path) Id of the cartLocation to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartLocationFileWithRequestBuilder(cartLocationId cartLocationId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/v3.0/cartLocation/{cartLocationId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a cartLocation by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter cartLocationId: (path) Id of the cartLocation to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartLocationFileByURL(body body: RecordFile, cartLocationId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addCartLocationFileByURLWithRequestBuilder(body: body, cartLocationId: cartLocationId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a cartLocation by URL.
     - POST /v3.0/cartLocation/{cartLocationId}/file
     - Adds a file to an existing cartLocation by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter cartLocationId: (path) Id of the cartLocation to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartLocationFileByURLWithRequestBuilder(body body: RecordFile, cartLocationId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/cartLocation/{cartLocationId}/file"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a cartLocation.
     
     - parameter cartLocationId: (path) Id of the cartLocation to add a tag to 
     - parameter cartLocationTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartLocationTag(cartLocationId cartLocationId: Int32, cartLocationTag: String, completion: ((error: ErrorType?) -> Void)) {
        addCartLocationTagWithRequestBuilder(cartLocationId: cartLocationId, cartLocationTag: cartLocationTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a cartLocation.
     - PUT /v3.0/cartLocation/{cartLocationId}/tag/{cartLocationTag}
     - Adds a tag to an existing cartLocation.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartLocationId: (path) Id of the cartLocation to add a tag to 
     - parameter cartLocationTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartLocationTagWithRequestBuilder(cartLocationId cartLocationId: Int32, cartLocationTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/cartLocation/{cartLocationId}/tag/{cartLocationTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartLocationTag}", withString: "\(cartLocationTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a cartLocation.
     
     - parameter cartLocationId: (path) Id of the cartLocation to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartLocationFile(cartLocationId cartLocationId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteCartLocationFileWithRequestBuilder(cartLocationId: cartLocationId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a cartLocation.
     - DELETE /v3.0/cartLocation/{cartLocationId}/file/{fileId}
     - Deletes an existing cartLocation file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartLocationId: (path) Id of the cartLocation to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartLocationFileWithRequestBuilder(cartLocationId cartLocationId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/cartLocation/{cartLocationId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a cartLocation.
     
     - parameter cartLocationId: (path) Id of the cartLocation to remove tag from 
     - parameter cartLocationTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartLocationTag(cartLocationId cartLocationId: Int32, cartLocationTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteCartLocationTagWithRequestBuilder(cartLocationId: cartLocationId, cartLocationTag: cartLocationTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a cartLocation.
     - DELETE /v3.0/cartLocation/{cartLocationId}/tag/{cartLocationTag}
     - Deletes an existing cartLocation tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartLocationId: (path) Id of the cartLocation to remove tag from 
     - parameter cartLocationTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartLocationTagWithRequestBuilder(cartLocationId cartLocationId: Int32, cartLocationTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/cartLocation/{cartLocationId}/tag/{cartLocationTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartLocationTag}", withString: "\(cartLocationTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search cartLocations by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartLocationByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [CartLocation]?, error: ErrorType?) -> Void)) {
        getCartLocationByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search cartLocations by filter
     - GET /v3.0/cartLocation/search
     - Returns the list of cartLocations that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : 6,
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : 6,
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[CartLocation]> 
     */
    public class func getCartLocationByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[CartLocation]> {
        let path = "/v3.0/cartLocation/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CartLocation]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a cartLocation by id
     
     - parameter cartLocationId: (path) Id of the cartLocation to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartLocationById(cartLocationId cartLocationId: Int32, completion: ((data: CartLocation?, error: ErrorType?) -> Void)) {
        getCartLocationByIdWithRequestBuilder(cartLocationId: cartLocationId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a cartLocation by id
     - GET /v3.0/cartLocation/{cartLocationId}
     - Returns the cartLocation identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : 6,
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter cartLocationId: (path) Id of the cartLocation to be returned. 

     - returns: RequestBuilder<CartLocation> 
     */
    public class func getCartLocationByIdWithRequestBuilder(cartLocationId cartLocationId: Int32) -> RequestBuilder<CartLocation> {
        var path = "/v3.0/cartLocation/{cartLocationId}"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CartLocation>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a cartLocation.
     
     - parameter cartLocationId: (path) Id of the cartLocation to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartLocationFiles(cartLocationId cartLocationId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCartLocationFilesWithRequestBuilder(cartLocationId: cartLocationId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a cartLocation.
     - GET /v3.0/cartLocation/{cartLocationId}/file
     - Get all existing cartLocation files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartLocationId: (path) Id of the cartLocation to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCartLocationFilesWithRequestBuilder(cartLocationId cartLocationId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/cartLocation/{cartLocationId}/file"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a cartLocation.
     
     - parameter cartLocationId: (path) Id of the cartLocation to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartLocationTags(cartLocationId cartLocationId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCartLocationTagsWithRequestBuilder(cartLocationId: cartLocationId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a cartLocation.
     - GET /v3.0/cartLocation/{cartLocationId}/tag
     - Get all existing cartLocation tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartLocationId: (path) Id of the cartLocation to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCartLocationTagsWithRequestBuilder(cartLocationId cartLocationId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/cartLocation/{cartLocationId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a cartLocation by id
     
     - parameter cartLocationId: (path) Id of the cartLocation to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateCartLocationById(cartLocationId cartLocationId: Int32, completion: ((data: CartLocation?, error: ErrorType?) -> Void)) {
        getDuplicateCartLocationByIdWithRequestBuilder(cartLocationId: cartLocationId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a cartLocation by id
     - GET /v3.0/cartLocation/duplicate/{cartLocationId}
     - Returns a duplicated cartLocation identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : 6,
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter cartLocationId: (path) Id of the cartLocation to be duplicated. 

     - returns: RequestBuilder<CartLocation> 
     */
    public class func getDuplicateCartLocationByIdWithRequestBuilder(cartLocationId cartLocationId: Int32) -> RequestBuilder<CartLocation> {
        var path = "/v3.0/cartLocation/duplicate/{cartLocationId}"
        path = path.stringByReplacingOccurrencesOfString("{cartLocationId}", withString: "\(cartLocationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CartLocation>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
