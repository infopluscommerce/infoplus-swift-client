//
// ItemSubGroupAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemSubGroupAPI: APIBase {
    /**
     
     Search itemSubGroups
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemSubGroupBySearchText(searchText searchText: String?, page: Int?, limit: Int?, completion: ((data: [ItemSubGroup]?, error: ErrorType?) -> Void)) {
        getItemSubGroupBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search itemSubGroups
     
     - GET /beta/itemSubGroup/search
     - Returns the list of itemSubGroups that match the given searchText.
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

     - returns: RequestBuilder<[ItemSubGroup]> 
     */
    public class func getItemSubGroupBySearchTextWithRequestBuilder(searchText searchText: String?, page: Int?, limit: Int?) -> RequestBuilder<[ItemSubGroup]> {
        let path = "/beta/itemSubGroup/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ItemSubGroup]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an itemSubGroup by id
     
     - parameter itemSubGroupId: (path) Id of itemSubGroup to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTranslateSubGroupById(itemSubGroupId itemSubGroupId: String, completion: ((data: ItemSubGroup?, error: ErrorType?) -> Void)) {
        getTranslateSubGroupByIdWithRequestBuilder(itemSubGroupId: itemSubGroupId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an itemSubGroup by id
     
     - GET /beta/itemSubGroup/{itemSubGroupId}
     - Returns the itemSubGroup identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "id" : 123,
  "label" : "aeiou"
}}]
     
     - parameter itemSubGroupId: (path) Id of itemSubGroup to be returned. 

     - returns: RequestBuilder<ItemSubGroup> 
     */
    public class func getTranslateSubGroupByIdWithRequestBuilder(itemSubGroupId itemSubGroupId: String) -> RequestBuilder<ItemSubGroup> {
        var path = "/beta/itemSubGroup/{itemSubGroupId}"
        path = path.stringByReplacingOccurrencesOfString("{itemSubGroupId}", withString: "\(itemSubGroupId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ItemSubGroup>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
