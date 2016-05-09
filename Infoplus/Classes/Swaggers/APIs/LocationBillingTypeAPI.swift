//
// LocationBillingTypeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LocationBillingTypeAPI: APIBase {
    /**
     
     Create a locationBillingType
     
     - parameter body: (body) LocationBillingType to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationBillingType(body body: LocationBillingType, completion: ((data: LocationBillingType?, error: ErrorType?) -> Void)) {
        addLocationBillingTypeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a locationBillingType
     
     - POST /v1.0/locationBillingType
     - Inserts a new locationBillingType using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) LocationBillingType to be inserted. 

     - returns: RequestBuilder<LocationBillingType> 
     */
    public class func addLocationBillingTypeWithRequestBuilder(body body: LocationBillingType) -> RequestBuilder<LocationBillingType> {
        let path = "/v1.0/locationBillingType"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<LocationBillingType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a locationBillingType
     
     - parameter locationBillingTypeId: (path) Id of the locationBillingType to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationBillingType(locationBillingTypeId locationBillingTypeId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationBillingTypeWithRequestBuilder(locationBillingTypeId: locationBillingTypeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a locationBillingType
     
     - DELETE /v1.0/locationBillingType/{locationBillingTypeId}
     - Deletes the locationBillingType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationBillingTypeId: (path) Id of the locationBillingType to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationBillingTypeWithRequestBuilder(locationBillingTypeId locationBillingTypeId: Int) -> RequestBuilder<Void> {
        var path = "/v1.0/locationBillingType/{locationBillingTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{locationBillingTypeId}", withString: "\(locationBillingTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search locationBillingTypes by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationBillingTypeByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [LocationBillingType]?, error: ErrorType?) -> Void)) {
        getLocationBillingTypeByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search locationBillingTypes by filter
     
     - GET /v1.0/locationBillingType/search
     - Returns the list of locationBillingTypes that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "clientId" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[LocationBillingType]> 
     */
    public class func getLocationBillingTypeByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[LocationBillingType]> {
        let path = "/v1.0/locationBillingType/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[LocationBillingType]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a locationBillingType by id
     
     - parameter locationBillingTypeId: (path) Id of the locationBillingType to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationBillingTypeById(locationBillingTypeId locationBillingTypeId: Int, completion: ((data: LocationBillingType?, error: ErrorType?) -> Void)) {
        getLocationBillingTypeByIdWithRequestBuilder(locationBillingTypeId: locationBillingTypeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a locationBillingType by id
     
     - GET /v1.0/locationBillingType/{locationBillingTypeId}
     - Returns the locationBillingType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "id" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter locationBillingTypeId: (path) Id of the locationBillingType to be returned. 

     - returns: RequestBuilder<LocationBillingType> 
     */
    public class func getLocationBillingTypeByIdWithRequestBuilder(locationBillingTypeId locationBillingTypeId: Int) -> RequestBuilder<LocationBillingType> {
        var path = "/v1.0/locationBillingType/{locationBillingTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{locationBillingTypeId}", withString: "\(locationBillingTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LocationBillingType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a locationBillingType
     
     - parameter body: (body) LocationBillingType to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocationBillingType(body body: LocationBillingType, completion: ((error: ErrorType?) -> Void)) {
        updateLocationBillingTypeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a locationBillingType
     
     - PUT /v1.0/locationBillingType
     - Updates an existing locationBillingType using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LocationBillingType to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationBillingTypeWithRequestBuilder(body body: LocationBillingType) -> RequestBuilder<Void> {
        let path = "/v1.0/locationBillingType"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
