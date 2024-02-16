//
// CarrierAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CarrierAPI: APIBase {
    /**
     Get a carrier by id
     
     - parameter carrierId: (path) Id of carrier to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCarrierById(carrierId carrierId: String, completion: ((data: Carrier?, error: ErrorType?) -> Void)) {
        getCarrierByIdWithRequestBuilder(carrierId: carrierId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a carrier by id
     - GET /beta/carrier/{carrierId}
     - Returns the carrier identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "carrier" : 0,
  "scac" : "scac",
  "label" : "label"
}}]
     
     - parameter carrierId: (path) Id of carrier to be returned. 

     - returns: RequestBuilder<Carrier> 
     */
    public class func getCarrierByIdWithRequestBuilder(carrierId carrierId: String) -> RequestBuilder<Carrier> {
        var path = "/beta/carrier/{carrierId}"
        path = path.stringByReplacingOccurrencesOfString("{carrierId}", withString: "\(carrierId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Carrier>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search carriers
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCarrierBySearchText(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil, completion: ((data: [Carrier]?, error: ErrorType?) -> Void)) {
        getCarrierBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search carriers
     - GET /beta/carrier/search
     - Returns the list of carriers that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "carrier" : 0,
  "scac" : "scac",
  "label" : "label"
}, {
  "carrier" : 0,
  "scac" : "scac",
  "label" : "label"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[Carrier]> 
     */
    public class func getCarrierBySearchTextWithRequestBuilder(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil) -> RequestBuilder<[Carrier]> {
        let path = "/beta/carrier/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Carrier]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
