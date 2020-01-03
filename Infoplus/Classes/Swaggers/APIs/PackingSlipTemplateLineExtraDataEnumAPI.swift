//
// PackingSlipTemplateLineExtraDataEnumAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PackingSlipTemplateLineExtraDataEnumAPI: APIBase {
    /**
     Get a packingSlipTemplateLineExtraDataEnum by id
     
     - parameter packingSlipTemplateLineExtraDataEnumId: (path) Id of packingSlipTemplateLineExtraDataEnum to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPackingSlipTemplateLineExtraDataEnumById(packingSlipTemplateLineExtraDataEnumId packingSlipTemplateLineExtraDataEnumId: String, completion: ((data: PackingSlipTemplateLineExtraDataEnum?, error: ErrorType?) -> Void)) {
        getPackingSlipTemplateLineExtraDataEnumByIdWithRequestBuilder(packingSlipTemplateLineExtraDataEnumId: packingSlipTemplateLineExtraDataEnumId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a packingSlipTemplateLineExtraDataEnum by id
     - GET /beta/packingSlipTemplateLineExtraDataEnum/{packingSlipTemplateLineExtraDataEnumId}
     - Returns the packingSlipTemplateLineExtraDataEnum identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "fullEntityClassName" : "fullEntityClassName",
  "id" : "id",
  "label" : "label"
}}]
     
     - parameter packingSlipTemplateLineExtraDataEnumId: (path) Id of packingSlipTemplateLineExtraDataEnum to be returned. 

     - returns: RequestBuilder<PackingSlipTemplateLineExtraDataEnum> 
     */
    public class func getPackingSlipTemplateLineExtraDataEnumByIdWithRequestBuilder(packingSlipTemplateLineExtraDataEnumId packingSlipTemplateLineExtraDataEnumId: String) -> RequestBuilder<PackingSlipTemplateLineExtraDataEnum> {
        var path = "/beta/packingSlipTemplateLineExtraDataEnum/{packingSlipTemplateLineExtraDataEnumId}"
        path = path.stringByReplacingOccurrencesOfString("{packingSlipTemplateLineExtraDataEnumId}", withString: "\(packingSlipTemplateLineExtraDataEnumId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PackingSlipTemplateLineExtraDataEnum>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search packingSlipTemplateLineExtraDataEnums
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPackingSlipTemplateLineExtraDataEnumBySearchText(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil, completion: ((data: [PackingSlipTemplateLineExtraDataEnum]?, error: ErrorType?) -> Void)) {
        getPackingSlipTemplateLineExtraDataEnumBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search packingSlipTemplateLineExtraDataEnums
     - GET /beta/packingSlipTemplateLineExtraDataEnum/search
     - Returns the list of packingSlipTemplateLineExtraDataEnums that match the given searchText.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "fullEntityClassName" : "fullEntityClassName",
  "id" : "id",
  "label" : "label"
}, {
  "fullEntityClassName" : "fullEntityClassName",
  "id" : "id",
  "label" : "label"
} ]}]
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)

     - returns: RequestBuilder<[PackingSlipTemplateLineExtraDataEnum]> 
     */
    public class func getPackingSlipTemplateLineExtraDataEnumBySearchTextWithRequestBuilder(searchText searchText: String? = nil, page: Int32? = nil, limit: Int32? = nil) -> RequestBuilder<[PackingSlipTemplateLineExtraDataEnum]> {
        let path = "/beta/packingSlipTemplateLineExtraDataEnum/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[PackingSlipTemplateLineExtraDataEnum]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
