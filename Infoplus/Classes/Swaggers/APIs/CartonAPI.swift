//
// CartonAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CartonAPI: APIBase {
    /**
     Create a carton
     
     - parameter body: (body) Carton to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCarton(body body: Carton, completion: ((data: Carton?, error: ErrorType?) -> Void)) {
        addCartonWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a carton
     - POST /beta/carton
     - Inserts a new carton using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "cartonNo" : 1,
  "cartonTypeId" : 5,
  "weightLbs" : 5.63737665663332876420099637471139430999755859375,
  "orderNo" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "cartonLPN" : "cartonLPN"
}}]
     
     - parameter body: (body) Carton to be inserted. 

     - returns: RequestBuilder<Carton> 
     */
    public class func addCartonWithRequestBuilder(body body: Carton) -> RequestBuilder<Carton> {
        let path = "/beta/carton"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Carton>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a carton
     
     - parameter cartonId: (path) Id of the carton to add an audit to 
     - parameter cartonAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonAudit(cartonId cartonId: Int32, cartonAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addCartonAuditWithRequestBuilder(cartonId: cartonId, cartonAudit: cartonAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a carton
     - PUT /beta/carton/{cartonId}/audit/{cartonAudit}
     - Adds an audit to an existing carton.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonId: (path) Id of the carton to add an audit to 
     - parameter cartonAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartonAuditWithRequestBuilder(cartonId cartonId: Int32, cartonAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/carton/{cartonId}/audit/{cartonAudit}"
        path = path.stringByReplacingOccurrencesOfString("{cartonId}", withString: "\(cartonId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonAudit}", withString: "\(cartonAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a carton.
     
     - parameter cartonId: (path) Id of the carton to add a tag to 
     - parameter cartonTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonTag(cartonId cartonId: Int32, cartonTag: String, completion: ((error: ErrorType?) -> Void)) {
        addCartonTagWithRequestBuilder(cartonId: cartonId, cartonTag: cartonTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a carton.
     - PUT /beta/carton/{cartonId}/tag/{cartonTag}
     - Adds a tag to an existing carton.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonId: (path) Id of the carton to add a tag to 
     - parameter cartonTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartonTagWithRequestBuilder(cartonId cartonId: Int32, cartonTag: String) -> RequestBuilder<Void> {
        var path = "/beta/carton/{cartonId}/tag/{cartonTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartonId}", withString: "\(cartonId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonTag}", withString: "\(cartonTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a carton
     
     - parameter cartonId: (path) Id of the carton to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCarton(cartonId cartonId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteCartonWithRequestBuilder(cartonId: cartonId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a carton
     - DELETE /beta/carton/{cartonId}
     - Deletes the carton identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonId: (path) Id of the carton to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartonWithRequestBuilder(cartonId cartonId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/carton/{cartonId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonId}", withString: "\(cartonId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a carton.
     
     - parameter cartonId: (path) Id of the carton to remove tag from 
     - parameter cartonTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartonTag(cartonId cartonId: Int32, cartonTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteCartonTagWithRequestBuilder(cartonId: cartonId, cartonTag: cartonTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a carton.
     - DELETE /beta/carton/{cartonId}/tag/{cartonTag}
     - Deletes an existing carton tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonId: (path) Id of the carton to remove tag from 
     - parameter cartonTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartonTagWithRequestBuilder(cartonId cartonId: Int32, cartonTag: String) -> RequestBuilder<Void> {
        var path = "/beta/carton/{cartonId}/tag/{cartonTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartonId}", withString: "\(cartonId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonTag}", withString: "\(cartonTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search cartons by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Carton]?, error: ErrorType?) -> Void)) {
        getCartonByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search cartons by filter
     - GET /beta/carton/search
     - Returns the list of cartons that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "cartonNo" : 1,
  "cartonTypeId" : 5,
  "weightLbs" : 5.63737665663332876420099637471139430999755859375,
  "orderNo" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "cartonLPN" : "cartonLPN"
}, {
  "cartonNo" : 1,
  "cartonTypeId" : 5,
  "weightLbs" : 5.63737665663332876420099637471139430999755859375,
  "orderNo" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "cartonLPN" : "cartonLPN"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Carton]> 
     */
    public class func getCartonByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Carton]> {
        let path = "/beta/carton/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Carton]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a carton by id
     
     - parameter cartonId: (path) Id of the carton to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonById(cartonId cartonId: Int32, completion: ((data: Carton?, error: ErrorType?) -> Void)) {
        getCartonByIdWithRequestBuilder(cartonId: cartonId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a carton by id
     - GET /beta/carton/{cartonId}
     - Returns the carton identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "cartonNo" : 1,
  "cartonTypeId" : 5,
  "weightLbs" : 5.63737665663332876420099637471139430999755859375,
  "orderNo" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "cartonLPN" : "cartonLPN"
}}]
     
     - parameter cartonId: (path) Id of the carton to be returned. 

     - returns: RequestBuilder<Carton> 
     */
    public class func getCartonByIdWithRequestBuilder(cartonId cartonId: Int32) -> RequestBuilder<Carton> {
        var path = "/beta/carton/{cartonId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonId}", withString: "\(cartonId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Carton>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a carton.
     
     - parameter cartonId: (path) Id of the carton to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonTags(cartonId cartonId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCartonTagsWithRequestBuilder(cartonId: cartonId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a carton.
     - GET /beta/carton/{cartonId}/tag
     - Get all existing carton tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonId: (path) Id of the carton to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCartonTagsWithRequestBuilder(cartonId cartonId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/carton/{cartonId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{cartonId}", withString: "\(cartonId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a carton by id
     
     - parameter cartonId: (path) Id of the carton to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateCartonById(cartonId cartonId: Int32, completion: ((data: Carton?, error: ErrorType?) -> Void)) {
        getDuplicateCartonByIdWithRequestBuilder(cartonId: cartonId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a carton by id
     - GET /beta/carton/duplicate/{cartonId}
     - Returns a duplicated carton identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "cartonNo" : 1,
  "cartonTypeId" : 5,
  "weightLbs" : 5.63737665663332876420099637471139430999755859375,
  "orderNo" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "id" : 0,
  "cartonLPN" : "cartonLPN"
}}]
     
     - parameter cartonId: (path) Id of the carton to be duplicated. 

     - returns: RequestBuilder<Carton> 
     */
    public class func getDuplicateCartonByIdWithRequestBuilder(cartonId cartonId: Int32) -> RequestBuilder<Carton> {
        var path = "/beta/carton/duplicate/{cartonId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonId}", withString: "\(cartonId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Carton>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a carton
     
     - parameter body: (body) Carton to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCarton(body body: Carton, completion: ((error: ErrorType?) -> Void)) {
        updateCartonWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a carton
     - PUT /beta/carton
     - Updates an existing carton using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Carton to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateCartonWithRequestBuilder(body body: Carton) -> RequestBuilder<Void> {
        let path = "/beta/carton"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a carton custom fields
     
     - parameter body: (body) Carton to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCartonCustomFields(body body: Carton, completion: ((error: ErrorType?) -> Void)) {
        updateCartonCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a carton custom fields
     - PUT /beta/carton/customFields
     - Updates an existing carton custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Carton to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateCartonCustomFieldsWithRequestBuilder(body body: Carton) -> RequestBuilder<Void> {
        let path = "/beta/carton/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
