//
// OrderLineAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderLineAPI: APIBase {
    /**
     
     Search orderLines by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderLineByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [OrderLine]?, error: ErrorType?) -> Void)) {
        getOrderLineByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search orderLines by filter
     
     - GET /beta/orderLine/search
     - Returns the list of orderLines that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "itemSubGroupId" : 123,
  "distributionCode" : "aeiou",
  "itemMajorGroupId" : 123,
  "ncExtendedSell" : 1.3579000000000001069366817318950779736042022705078125,
  "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "itemLegacyLowStockContactId" : 123,
  "revDate" : "aeiou",
  "backorderQty" : 123,
  "orderSourceSKU" : "aeiou",
  "extendedCost" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123,
  "sku" : "aeiou",
  "sector" : "aeiou",
  "itemAccountCodeId" : 123,
  "itemProductCodeId" : 123,
  "itemWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "lobId" : 123,
  "shippedQty" : 123,
  "itemSummaryCodeId" : 123,
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "extendedSell" : 1.3579000000000001069366817318950779736042022705078125,
  "upc" : "aeiou",
  "productionLot" : "aeiou",
  "orderedQty" : 123,
  "vendorSKU" : "aeiou",
  "unitCost" : 1.3579000000000001069366817318950779736042022705078125,
  "poNoId" : 123,
  "unitSell" : 1.3579000000000001069366817318950779736042022705078125,
  "allowedQty" : 123,
  "chargeCode" : "aeiou"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[OrderLine]> 
     */
    public class func getOrderLineByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[OrderLine]> {
        let path = "/beta/orderLine/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[OrderLine]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an orderLine by id
     
     - parameter orderLineId: (path) Id of the orderLine to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderLineById(orderLineId orderLineId: Int, completion: ((data: OrderLine?, error: ErrorType?) -> Void)) {
        getOrderLineByIdWithRequestBuilder(orderLineId: orderLineId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an orderLine by id
     
     - GET /beta/orderLine/{orderLineId}
     - Returns the orderLine identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "itemSubGroupId" : 123,
  "distributionCode" : "aeiou",
  "itemMajorGroupId" : 123,
  "ncExtendedSell" : 1.3579000000000001069366817318950779736042022705078125,
  "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
  "customFields" : {
    "key" : "{}"
  },
  "itemLegacyLowStockContactId" : 123,
  "revDate" : "aeiou",
  "backorderQty" : 123,
  "orderSourceSKU" : "aeiou",
  "extendedCost" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123,
  "sku" : "aeiou",
  "sector" : "aeiou",
  "itemAccountCodeId" : 123,
  "itemProductCodeId" : 123,
  "itemWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "lobId" : 123,
  "shippedQty" : 123,
  "itemSummaryCodeId" : 123,
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "extendedSell" : 1.3579000000000001069366817318950779736042022705078125,
  "upc" : "aeiou",
  "productionLot" : "aeiou",
  "orderedQty" : 123,
  "vendorSKU" : "aeiou",
  "unitCost" : 1.3579000000000001069366817318950779736042022705078125,
  "poNoId" : 123,
  "unitSell" : 1.3579000000000001069366817318950779736042022705078125,
  "allowedQty" : 123,
  "chargeCode" : "aeiou"
}}]
     
     - parameter orderLineId: (path) Id of the orderLine to be returned. 

     - returns: RequestBuilder<OrderLine> 
     */
    public class func getOrderLineByIdWithRequestBuilder(orderLineId orderLineId: Int) -> RequestBuilder<OrderLine> {
        var path = "/beta/orderLine/{orderLineId}"
        path = path.stringByReplacingOccurrencesOfString("{orderLineId}", withString: "\(orderLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<OrderLine>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an orderLine custom fields
     
     - parameter body: (body) OrderLine to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrderLineCustomFields(body body: OrderLine, completion: ((error: ErrorType?) -> Void)) {
        updateOrderLineCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an orderLine custom fields
     
     - PUT /beta/orderLine/customFields
     - Updates an existing orderLine custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OrderLine to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderLineCustomFieldsWithRequestBuilder(body body: OrderLine) -> RequestBuilder<Void> {
        let path = "/beta/orderLine/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
