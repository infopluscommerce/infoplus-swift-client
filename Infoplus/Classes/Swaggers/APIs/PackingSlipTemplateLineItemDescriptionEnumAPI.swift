//
// PackingSlipTemplateLineItemDescriptionEnumAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PackingSlipTemplateLineItemDescriptionEnumAPI: APIBase {
    /**
     Get a packingSlipTemplateLineItemDescriptionEnum by id
     
     - parameter packingSlipTemplateLineItemDescriptionEnumId: (path) Id of packingSlipTemplateLineItemDescriptionEnum to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPackingSlipTemplateLineItemDescriptionEnumById(packingSlipTemplateLineItemDescriptionEnumId packingSlipTemplateLineItemDescriptionEnumId: String, completion: ((data: PackingSlipTemplateLineItemDescriptionEnum?, error: ErrorType?) -> Void)) {
        getPackingSlipTemplateLineItemDescriptionEnumByIdWithRequestBuilder(packingSlipTemplateLineItemDescriptionEnumId: packingSlipTemplateLineItemDescriptionEnumId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a packingSlipTemplateLineItemDescriptionEnum by id
     - GET /beta/packingSlipTemplateLineItemDescriptionEnum/{packingSlipTemplateLineItemDescriptionEnumId}
     - Returns the packingSlipTemplateLineItemDescriptionEnum identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "id" : "id",
  "label" : "label"
}}]
     
     - parameter packingSlipTemplateLineItemDescriptionEnumId: (path) Id of packingSlipTemplateLineItemDescriptionEnum to be returned. 

     - returns: RequestBuilder<PackingSlipTemplateLineItemDescriptionEnum> 
     */
    public class func getPackingSlipTemplateLineItemDescriptionEnumByIdWithRequestBuilder(packingSlipTemplateLineItemDescriptionEnumId packingSlipTemplateLineItemDescriptionEnumId: String) -> RequestBuilder<PackingSlipTemplateLineItemDescriptionEnum> {
        var path = "/beta/packingSlipTemplateLineItemDescriptionEnum/{packingSlipTemplateLineItemDescriptionEnumId}"
        path = path.stringByReplacingOccurrencesOfString("{packingSlipTemplateLineItemDescriptionEnumId}", withString: "\(packingSlipTemplateLineItemDescriptionEnumId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PackingSlipTemplateLineItemDescriptionEnum>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search packingSlipTemplateLineItemDescriptionEnums
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPackingSlipTemplateLineItemDescriptionEnumBySearchText(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil, completion: ((data: [PackingSlipTemplateLineItemDescriptionEnum]?, error: ErrorType?) -> Void)) {
        getPackingSlipTemplateLineItemDescriptionEnumBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search packingSlipTemplateLineItemDescriptionEnums
     - GET /beta/packingSlipTemplateLineItemDescriptionEnum/search
     - Returns the list of packingSlipTemplateLineItemDescriptionEnums that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "id" : "id",
  "label" : "label"
}, {
  "id" : "id",
  "label" : "label"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[PackingSlipTemplateLineItemDescriptionEnum]> 
     */
    public class func getPackingSlipTemplateLineItemDescriptionEnumBySearchTextWithRequestBuilder(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil) -> RequestBuilder<[PackingSlipTemplateLineItemDescriptionEnum]> {
        let path = "/beta/packingSlipTemplateLineItemDescriptionEnum/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[PackingSlipTemplateLineItemDescriptionEnum]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
