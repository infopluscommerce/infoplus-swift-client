//
// LocationFootprintAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LocationFootprintAPI: APIBase {
    /**
     
     Create a locationFootprint
     
     - parameter body: (body) LocationFootprint to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationFootprint(body body: LocationFootprint, completion: ((data: LocationFootprint?, error: ErrorType?) -> Void)) {
        addLocationFootprintWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a locationFootprint
     
     - POST /v1.0/locationFootprint
     - Inserts a new locationFootprint using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 123,
  "depth" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "width" : 123,
  "id" : 123,
  "height" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) LocationFootprint to be inserted. 

     - returns: RequestBuilder<LocationFootprint> 
     */
    public class func addLocationFootprintWithRequestBuilder(body body: LocationFootprint) -> RequestBuilder<LocationFootprint> {
        let path = "/v1.0/locationFootprint"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<LocationFootprint>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a locationFootprint
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationFootprint(locationFootprintId locationFootprintId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationFootprintWithRequestBuilder(locationFootprintId: locationFootprintId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a locationFootprint
     
     - DELETE /v1.0/locationFootprint/{locationFootprintId}
     - Deletes the locationFootprint identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationFootprintWithRequestBuilder(locationFootprintId locationFootprintId: Int) -> RequestBuilder<Void> {
        var path = "/v1.0/locationFootprint/{locationFootprintId}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search locationFootprints by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationFootprintByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [LocationFootprint]?, error: ErrorType?) -> Void)) {
        getLocationFootprintByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search locationFootprints by filter
     
     - GET /v1.0/locationFootprint/search
     - Returns the list of locationFootprints that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "clientId" : 123,
  "depth" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "width" : 123,
  "id" : 123,
  "height" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[LocationFootprint]> 
     */
    public class func getLocationFootprintByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[LocationFootprint]> {
        let path = "/v1.0/locationFootprint/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[LocationFootprint]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a locationFootprint by id
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationFootprintById(locationFootprintId locationFootprintId: Int, completion: ((data: LocationFootprint?, error: ErrorType?) -> Void)) {
        getLocationFootprintByIdWithRequestBuilder(locationFootprintId: locationFootprintId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a locationFootprint by id
     
     - GET /v1.0/locationFootprint/{locationFootprintId}
     - Returns the locationFootprint identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 123,
  "depth" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "width" : 123,
  "id" : 123,
  "height" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter locationFootprintId: (path) Id of the locationFootprint to be returned. 

     - returns: RequestBuilder<LocationFootprint> 
     */
    public class func getLocationFootprintByIdWithRequestBuilder(locationFootprintId locationFootprintId: Int) -> RequestBuilder<LocationFootprint> {
        var path = "/v1.0/locationFootprint/{locationFootprintId}"
        path = path.stringByReplacingOccurrencesOfString("{locationFootprintId}", withString: "\(locationFootprintId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LocationFootprint>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a locationFootprint
     
     - parameter body: (body) LocationFootprint to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocationFootprint(body body: LocationFootprint, completion: ((error: ErrorType?) -> Void)) {
        updateLocationFootprintWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a locationFootprint
     
     - PUT /v1.0/locationFootprint
     - Updates an existing locationFootprint using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) LocationFootprint to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationFootprintWithRequestBuilder(body body: LocationFootprint) -> RequestBuilder<Void> {
        let path = "/v1.0/locationFootprint"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
