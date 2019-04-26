//
// LocationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LocationAPI: APIBase {
    /**
     Create a location
     
     - parameter body: (body) Location to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocation(body body: Location, completion: ((data: Location?, error: ErrorType?) -> Void)) {
        addLocationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a location
     - POST /beta/location
     - Inserts a new location using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "cost" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "level" : 2,
  "allowItemMixing" : false,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 3,
  "buildingId" : 1,
  "aisleId" : 5,
  "number" : 7,
  "footprintId" : 7,
  "warehouseId" : 6,
  "billingTypeId" : 2,
  "zoneId" : 5,
  "online" : false,
  "priorityCode" : 1,
  "id" : 0,
  "bay" : 4,
  "behaviorType" : "behaviorType",
  "addressSchemeId" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) Location to be inserted. 

     - returns: RequestBuilder<Location> 
     */
    public class func addLocationWithRequestBuilder(body body: Location) -> RequestBuilder<Location> {
        let path = "/beta/location"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Location>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a location
     
     - parameter locationId: (path) Id of the location to add an audit to 
     - parameter locationAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationAudit(locationId locationId: Int32, locationAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationAuditWithRequestBuilder(locationId: locationId, locationAudit: locationAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a location
     - PUT /beta/location/{locationId}/audit/{locationAudit}
     - Adds an audit to an existing location.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationId: (path) Id of the location to add an audit to 
     - parameter locationAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationAuditWithRequestBuilder(locationId locationId: Int32, locationAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/location/{locationId}/audit/{locationAudit}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationAudit}", withString: "\(locationAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a location
     
     - parameter locationId: (path) Id of the location to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationFile(locationId locationId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationFileWithRequestBuilder(locationId: locationId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a location
     - POST /beta/location/{locationId}/file/{fileName}
     - Adds a file to an existing location.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationId: (path) Id of the location to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationFileWithRequestBuilder(locationId locationId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/location/{locationId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a location.
     
     - parameter locationId: (path) Id of the location to add a tag to 
     - parameter locationTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addLocationTag(locationId locationId: Int32, locationTag: String, completion: ((error: ErrorType?) -> Void)) {
        addLocationTagWithRequestBuilder(locationId: locationId, locationTag: locationTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a location.
     - PUT /beta/location/{locationId}/tag/{locationTag}
     - Adds a tag to an existing location.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationId: (path) Id of the location to add a tag to 
     - parameter locationTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addLocationTagWithRequestBuilder(locationId locationId: Int32, locationTag: String) -> RequestBuilder<Void> {
        var path = "/beta/location/{locationId}/tag/{locationTag}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationTag}", withString: "\(locationTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a location
     
     - parameter locationId: (path) Id of the location to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocation(locationId locationId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationWithRequestBuilder(locationId: locationId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a location
     - DELETE /beta/location/{locationId}
     - Deletes the location identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationId: (path) Id of the location to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationWithRequestBuilder(locationId locationId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/location/{locationId}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a location.
     
     - parameter locationId: (path) Id of the location to remove tag from 
     - parameter locationTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteLocationTag(locationId locationId: Int32, locationTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteLocationTagWithRequestBuilder(locationId: locationId, locationTag: locationTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a location.
     - DELETE /beta/location/{locationId}/tag/{locationTag}
     - Deletes an existing location tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationId: (path) Id of the location to remove tag from 
     - parameter locationTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteLocationTagWithRequestBuilder(locationId locationId: Int32, locationTag: String) -> RequestBuilder<Void> {
        var path = "/beta/location/{locationId}/tag/{locationTag}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{locationTag}", withString: "\(locationTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a location by id
     
     - parameter locationId: (path) Id of the location to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateLocationById(locationId locationId: Int32, completion: ((data: Location?, error: ErrorType?) -> Void)) {
        getDuplicateLocationByIdWithRequestBuilder(locationId: locationId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a location by id
     - GET /beta/location/duplicate/{locationId}
     - Returns a duplicated location identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "cost" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "level" : 2,
  "allowItemMixing" : false,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 3,
  "buildingId" : 1,
  "aisleId" : 5,
  "number" : 7,
  "footprintId" : 7,
  "warehouseId" : 6,
  "billingTypeId" : 2,
  "zoneId" : 5,
  "online" : false,
  "priorityCode" : 1,
  "id" : 0,
  "bay" : 4,
  "behaviorType" : "behaviorType",
  "addressSchemeId" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter locationId: (path) Id of the location to be duplicated. 

     - returns: RequestBuilder<Location> 
     */
    public class func getDuplicateLocationByIdWithRequestBuilder(locationId locationId: Int32) -> RequestBuilder<Location> {
        var path = "/beta/location/duplicate/{locationId}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Location>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search locations by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Location]?, error: ErrorType?) -> Void)) {
        getLocationByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search locations by filter
     - GET /beta/location/search
     - Returns the list of locations that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "address" : "address",
  "cost" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "level" : 2,
  "allowItemMixing" : false,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 3,
  "buildingId" : 1,
  "aisleId" : 5,
  "number" : 7,
  "footprintId" : 7,
  "warehouseId" : 6,
  "billingTypeId" : 2,
  "zoneId" : 5,
  "online" : false,
  "priorityCode" : 1,
  "id" : 0,
  "bay" : 4,
  "behaviorType" : "behaviorType",
  "addressSchemeId" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "address" : "address",
  "cost" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "level" : 2,
  "allowItemMixing" : false,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 3,
  "buildingId" : 1,
  "aisleId" : 5,
  "number" : 7,
  "footprintId" : 7,
  "warehouseId" : 6,
  "billingTypeId" : 2,
  "zoneId" : 5,
  "online" : false,
  "priorityCode" : 1,
  "id" : 0,
  "bay" : 4,
  "behaviorType" : "behaviorType",
  "addressSchemeId" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Location]> 
     */
    public class func getLocationByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Location]> {
        let path = "/beta/location/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Location]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a location by id
     
     - parameter locationId: (path) Id of the location to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationById(locationId locationId: Int32, completion: ((data: Location?, error: ErrorType?) -> Void)) {
        getLocationByIdWithRequestBuilder(locationId: locationId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a location by id
     - GET /beta/location/{locationId}
     - Returns the location identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "address" : "address",
  "cost" : 1,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "level" : 2,
  "allowItemMixing" : false,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : 3,
  "buildingId" : 1,
  "aisleId" : 5,
  "number" : 7,
  "footprintId" : 7,
  "warehouseId" : 6,
  "billingTypeId" : 2,
  "zoneId" : 5,
  "online" : false,
  "priorityCode" : 1,
  "id" : 0,
  "bay" : 4,
  "behaviorType" : "behaviorType",
  "addressSchemeId" : 9,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter locationId: (path) Id of the location to be returned. 

     - returns: RequestBuilder<Location> 
     */
    public class func getLocationByIdWithRequestBuilder(locationId locationId: Int32) -> RequestBuilder<Location> {
        var path = "/beta/location/{locationId}"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Location>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a location.
     
     - parameter locationId: (path) Id of the location to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLocationTags(locationId locationId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getLocationTagsWithRequestBuilder(locationId: locationId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a location.
     - GET /beta/location/{locationId}/tag
     - Get all existing location tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter locationId: (path) Id of the location to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getLocationTagsWithRequestBuilder(locationId locationId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/location/{locationId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{locationId}", withString: "\(locationId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a location
     
     - parameter body: (body) Location to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocation(body body: Location, completion: ((error: ErrorType?) -> Void)) {
        updateLocationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a location
     - PUT /beta/location
     - Updates an existing location using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Location to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationWithRequestBuilder(body body: Location) -> RequestBuilder<Void> {
        let path = "/beta/location"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a location custom fields
     
     - parameter body: (body) Location to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateLocationCustomFields(body body: Location, completion: ((error: ErrorType?) -> Void)) {
        updateLocationCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a location custom fields
     - PUT /beta/location/customFields
     - Updates an existing location custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Location to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateLocationCustomFieldsWithRequestBuilder(body body: Location) -> RequestBuilder<Void> {
        let path = "/beta/location/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
