//
// LineOfBusinessAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LineOfBusinessAPI: APIBase {
    /**
     
     Get a lineOfBusiness by id
     
     - parameter lineOfBusinessId: (path) Id of lineOfBusiness to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLineOfBusinessById(lineOfBusinessId lineOfBusinessId: String, completion: ((data: LineOfBusiness?, error: ErrorType?) -> Void)) {
        getLineOfBusinessByIdWithRequestBuilder(lineOfBusinessId: lineOfBusinessId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a lineOfBusiness by id
     
     - GET /v1.0/lineOfBusiness/{lineOfBusinessId}
     - Returns the lineOfBusiness identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "id" : 123,
  "label" : "aeiou"
}}]
     
     - parameter lineOfBusinessId: (path) Id of lineOfBusiness to be returned. 

     - returns: RequestBuilder<LineOfBusiness> 
     */
    public class func getLineOfBusinessByIdWithRequestBuilder(lineOfBusinessId lineOfBusinessId: String) -> RequestBuilder<LineOfBusiness> {
        var path = "/v1.0/lineOfBusiness/{lineOfBusinessId}"
        path = path.stringByReplacingOccurrencesOfString("{lineOfBusinessId}", withString: "\(lineOfBusinessId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LineOfBusiness>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search lineOfBusinesses
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getLineOfBusinessBySearchText(searchText searchText: String?, page: Int?, limit: Int?, completion: ((data: [LineOfBusiness]?, error: ErrorType?) -> Void)) {
        getLineOfBusinessBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search lineOfBusinesses
     
     - GET /v1.0/lineOfBusiness/search
     - Returns the list of lineOfBusinesses that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "id" : 123,
  "label" : "aeiou"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[LineOfBusiness]> 
     */
    public class func getLineOfBusinessBySearchTextWithRequestBuilder(searchText searchText: String?, page: Int?, limit: Int?) -> RequestBuilder<[LineOfBusiness]> {
        let path = "/v1.0/lineOfBusiness/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[LineOfBusiness]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
