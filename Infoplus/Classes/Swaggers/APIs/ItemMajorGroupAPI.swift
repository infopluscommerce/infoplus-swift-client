//
// ItemMajorGroupAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemMajorGroupAPI: APIBase {
    /**
     
     Search itemMajorGroups
     
     - parameter searchText: (query) Search text, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemMajorGroupBySearchText(searchText searchText: String?, page: Int?, limit: Int?, completion: ((data: [ItemMajorGroup]?, error: ErrorType?) -> Void)) {
        getItemMajorGroupBySearchTextWithRequestBuilder(searchText: searchText, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search itemMajorGroups
     
     - GET /beta/itemMajorGroup/search
     - Returns the list of itemMajorGroups that match the given searchText.
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

     - returns: RequestBuilder<[ItemMajorGroup]> 
     */
    public class func getItemMajorGroupBySearchTextWithRequestBuilder(searchText searchText: String?, page: Int?, limit: Int?) -> RequestBuilder<[ItemMajorGroup]> {
        let path = "/beta/itemMajorGroup/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "searchText": searchText,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ItemMajorGroup]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an itemMajorGroup by id
     
     - parameter itemMajorGroupId: (path) Id of itemMajorGroup to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTranslateMajorGroupById(itemMajorGroupId itemMajorGroupId: String, completion: ((data: ItemMajorGroup?, error: ErrorType?) -> Void)) {
        getTranslateMajorGroupByIdWithRequestBuilder(itemMajorGroupId: itemMajorGroupId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an itemMajorGroup by id
     
     - GET /beta/itemMajorGroup/{itemMajorGroupId}
     - Returns the itemMajorGroup identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "id" : 123,
  "label" : "aeiou"
}}]
     
     - parameter itemMajorGroupId: (path) Id of itemMajorGroup to be returned. 

     - returns: RequestBuilder<ItemMajorGroup> 
     */
    public class func getTranslateMajorGroupByIdWithRequestBuilder(itemMajorGroupId itemMajorGroupId: String) -> RequestBuilder<ItemMajorGroup> {
        var path = "/beta/itemMajorGroup/{itemMajorGroupId}"
        path = path.stringByReplacingOccurrencesOfString("{itemMajorGroupId}", withString: "\(itemMajorGroupId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ItemMajorGroup>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
