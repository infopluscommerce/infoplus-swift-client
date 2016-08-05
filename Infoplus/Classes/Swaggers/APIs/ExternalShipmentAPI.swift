//
// ExternalShipmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ExternalShipmentAPI: APIBase {
    /**
     
     Create an externalShipment
     
     - parameter body: (body) ExternalShipment to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShipment(body body: ExternalShipment, completion: ((data: ExternalShipment?, error: ErrorType?) -> Void)) {
        addExternalShipmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create an externalShipment
     
     - POST /beta/externalShipment
     - Inserts a new externalShipment using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "orderId" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "parcelAccountId" : 123,
  "dim3In" : 1.3579000000000001069366817318950779736042022705078125,
  "dim1In" : 1.3579000000000001069366817318950779736042022705078125,
  "dim2In" : 1.3579000000000001069366817318950779736042022705078125,
  "residential" : true,
  "dimWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyParcelAccountId" : 123,
  "trackingNo" : "aeiou",
  "zone" : "aeiou",
  "id" : 123,
  "carrierId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou"
}}]
     
     - parameter body: (body) ExternalShipment to be inserted. 

     - returns: RequestBuilder<ExternalShipment> 
     */
    public class func addExternalShipmentWithRequestBuilder(body body: ExternalShipment) -> RequestBuilder<ExternalShipment> {
        let path = "/beta/externalShipment"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<ExternalShipment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete an externalShipment
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteExternalShipment(externalShipmentId externalShipmentId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteExternalShipmentWithRequestBuilder(externalShipmentId: externalShipmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete an externalShipment
     
     - DELETE /beta/externalShipment/{externalShipmentId}
     - Deletes the externalShipment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteExternalShipmentWithRequestBuilder(externalShipmentId externalShipmentId: Int) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search externalShipments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShipmentByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [ExternalShipment]?, error: ErrorType?) -> Void)) {
        getExternalShipmentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search externalShipments by filter
     
     - GET /beta/externalShipment/search
     - Returns the list of externalShipments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "orderId" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "parcelAccountId" : 123,
  "dim3In" : 1.3579000000000001069366817318950779736042022705078125,
  "dim1In" : 1.3579000000000001069366817318950779736042022705078125,
  "dim2In" : 1.3579000000000001069366817318950779736042022705078125,
  "residential" : true,
  "dimWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyParcelAccountId" : 123,
  "trackingNo" : "aeiou",
  "zone" : "aeiou",
  "id" : 123,
  "carrierId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ExternalShipment]> 
     */
    public class func getExternalShipmentByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[ExternalShipment]> {
        let path = "/beta/externalShipment/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ExternalShipment]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an externalShipment by id
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShipmentById(externalShipmentId externalShipmentId: Int, completion: ((data: ExternalShipment?, error: ErrorType?) -> Void)) {
        getExternalShipmentByIdWithRequestBuilder(externalShipmentId: externalShipmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an externalShipment by id
     
     - GET /beta/externalShipment/{externalShipmentId}
     - Returns the externalShipment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "orderId" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "parcelAccountId" : 123,
  "dim3In" : 1.3579000000000001069366817318950779736042022705078125,
  "dim1In" : 1.3579000000000001069366817318950779736042022705078125,
  "dim2In" : 1.3579000000000001069366817318950779736042022705078125,
  "residential" : true,
  "dimWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyParcelAccountId" : 123,
  "trackingNo" : "aeiou",
  "zone" : "aeiou",
  "id" : 123,
  "carrierId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "status" : "aeiou"
}}]
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be returned. 

     - returns: RequestBuilder<ExternalShipment> 
     */
    public class func getExternalShipmentByIdWithRequestBuilder(externalShipmentId externalShipmentId: Int) -> RequestBuilder<ExternalShipment> {
        var path = "/beta/externalShipment/{externalShipmentId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ExternalShipment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an externalShipment
     
     - parameter body: (body) ExternalShipment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateExternalShipment(body body: ExternalShipment, completion: ((error: ErrorType?) -> Void)) {
        updateExternalShipmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an externalShipment
     
     - PUT /beta/externalShipment
     - Updates an existing externalShipment using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ExternalShipment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateExternalShipmentWithRequestBuilder(body body: ExternalShipment) -> RequestBuilder<Void> {
        let path = "/beta/externalShipment"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an externalShipment custom fields
     
     - parameter body: (body) ExternalShipment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateExternalShipmentCustomFields(body body: ExternalShipment, completion: ((error: ErrorType?) -> Void)) {
        updateExternalShipmentCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an externalShipment custom fields
     
     - PUT /beta/externalShipment/customFields
     - Updates an existing externalShipment custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ExternalShipment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateExternalShipmentCustomFieldsWithRequestBuilder(body body: ExternalShipment) -> RequestBuilder<Void> {
        let path = "/beta/externalShipment/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
