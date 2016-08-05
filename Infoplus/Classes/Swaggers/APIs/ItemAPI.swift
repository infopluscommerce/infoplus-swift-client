//
// ItemAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemAPI: APIBase {
    /**
     
     Create an item
     
     - parameter body: (body) Item to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItem(body body: Item, completion: ((data: Item?, error: ErrorType?) -> Void)) {
        addItemWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create an item
     
     - POST /beta/item
     - Inserts a new item using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
  "storageLotMixingRule" : "aeiou",
  "buyerId" : 123,
  "secure" : "aeiou",
  "voidDate" : "2000-01-23T04:56:07.000+0000",
  "lowStockContactId" : 123,
  "forwardLotMixingRule" : "aeiou",
  "barcodeField" : "aeiou",
  "absoluteMax" : "aeiou",
  "criticalAmount" : 123,
  "podRevDate" : "aeiou",
  "unitCode" : "aeiou",
  "hazmat" : "aeiou",
  "commodityCode" : "aeiou",
  "id" : 123,
  "itemDescription" : "aeiou",
  "sku" : "aeiou",
  "sector" : "aeiou",
  "lobId" : 123,
  "productCodeId" : 123,
  "packingSlipDescription" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "maxCycle" : 123,
  "upc" : "aeiou",
  "allocationRule" : "aeiou",
  "extrinsicNumber2" : 123,
  "compCode" : 123,
  "extrinsicNumber1" : 123,
  "forwardItemMixingRule" : "aeiou",
  "extrinsicText1" : "aeiou",
  "storageItemMixingRule" : "aeiou",
  "backorder" : "aeiou",
  "outsideVendor" : 123,
  "extrinsicText3" : "aeiou",
  "extrinsicText2" : "aeiou",
  "subGroupId" : 123,
  "overallLeadTime" : 123,
  "chargeCode" : "aeiou",
  "status" : "aeiou",
  "legacyLowLevelContactId" : 123,
  "overallFixedReorderPoint" : 123,
  "seasonalItem" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "serialCode" : "aeiou",
  "extrinsicDecimal2" : 1.3579000000000001069366817318950779736042022705078125,
  "maxInterim" : 123,
  "wrapCode" : "aeiou",
  "additionalDescription" : "aeiou",
  "lowStockCodeId" : 123,
  "pickNo" : "aeiou",
  "majorGroupId" : 123,
  "lotControlFlag" : "aeiou",
  "extrinsicDecimal1" : 1.3579000000000001069366817318950779736042022705078125,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "unitsPerWrap" : 123,
  "podOrderSuffix" : 123,
  "accountCodeId" : 123,
  "vendorSKU" : "aeiou",
  "requiresProductionLot" : "aeiou",
  "casebreakEnabled" : "aeiou",
  "summaryCodeId" : 123,
  "numericSortOrder" : 123,
  "listPrice" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter body: (body) Item to be inserted. 

     - returns: RequestBuilder<Item> 
     */
    public class func addItemWithRequestBuilder(body body: Item) -> RequestBuilder<Item> {
        let path = "/beta/item"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Item>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete an item
     
     - parameter itemId: (path) Id of the item to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItem(itemId itemId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteItemWithRequestBuilder(itemId: itemId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete an item
     
     - DELETE /beta/item/{itemId}
     - Deletes the item identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemId: (path) Id of the item to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemWithRequestBuilder(itemId itemId: Int) -> RequestBuilder<Void> {
        var path = "/beta/item/{itemId}"
        path = path.stringByReplacingOccurrencesOfString("{itemId}", withString: "\(itemId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get an item by SKU
     
     - parameter lobId: (query) lobId of the item to be returned. 
     - parameter sku: (query) sku of the item to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBySKU(lobId lobId: Int, sku: String, completion: ((data: Item?, error: ErrorType?) -> Void)) {
        getBySKUWithRequestBuilder(lobId: lobId, sku: sku).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an item by SKU
     
     - GET /beta/item/getBySKU
     - Returns the item identified by the specified parameters.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
  "storageLotMixingRule" : "aeiou",
  "buyerId" : 123,
  "secure" : "aeiou",
  "voidDate" : "2000-01-23T04:56:07.000+0000",
  "lowStockContactId" : 123,
  "forwardLotMixingRule" : "aeiou",
  "barcodeField" : "aeiou",
  "absoluteMax" : "aeiou",
  "criticalAmount" : 123,
  "podRevDate" : "aeiou",
  "unitCode" : "aeiou",
  "hazmat" : "aeiou",
  "commodityCode" : "aeiou",
  "id" : 123,
  "itemDescription" : "aeiou",
  "sku" : "aeiou",
  "sector" : "aeiou",
  "lobId" : 123,
  "productCodeId" : 123,
  "packingSlipDescription" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "maxCycle" : 123,
  "upc" : "aeiou",
  "allocationRule" : "aeiou",
  "extrinsicNumber2" : 123,
  "compCode" : 123,
  "extrinsicNumber1" : 123,
  "forwardItemMixingRule" : "aeiou",
  "extrinsicText1" : "aeiou",
  "storageItemMixingRule" : "aeiou",
  "backorder" : "aeiou",
  "outsideVendor" : 123,
  "extrinsicText3" : "aeiou",
  "extrinsicText2" : "aeiou",
  "subGroupId" : 123,
  "overallLeadTime" : 123,
  "chargeCode" : "aeiou",
  "status" : "aeiou",
  "legacyLowLevelContactId" : 123,
  "overallFixedReorderPoint" : 123,
  "seasonalItem" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "serialCode" : "aeiou",
  "extrinsicDecimal2" : 1.3579000000000001069366817318950779736042022705078125,
  "maxInterim" : 123,
  "wrapCode" : "aeiou",
  "additionalDescription" : "aeiou",
  "lowStockCodeId" : 123,
  "pickNo" : "aeiou",
  "majorGroupId" : 123,
  "lotControlFlag" : "aeiou",
  "extrinsicDecimal1" : 1.3579000000000001069366817318950779736042022705078125,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "unitsPerWrap" : 123,
  "podOrderSuffix" : 123,
  "accountCodeId" : 123,
  "vendorSKU" : "aeiou",
  "requiresProductionLot" : "aeiou",
  "casebreakEnabled" : "aeiou",
  "summaryCodeId" : 123,
  "numericSortOrder" : 123,
  "listPrice" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter lobId: (query) lobId of the item to be returned. 
     - parameter sku: (query) sku of the item to be returned. 

     - returns: RequestBuilder<Item> 
     */
    public class func getBySKUWithRequestBuilder(lobId lobId: Int, sku: String) -> RequestBuilder<Item> {
        let path = "/beta/item/getBySKU"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "lobId": lobId,
            "sku": sku
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Item>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Search items by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [Item]?, error: ErrorType?) -> Void)) {
        getItemByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search items by filter
     
     - GET /beta/item/search
     - Returns the list of items that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
  "storageLotMixingRule" : "aeiou",
  "buyerId" : 123,
  "secure" : "aeiou",
  "voidDate" : "2000-01-23T04:56:07.000+0000",
  "lowStockContactId" : 123,
  "forwardLotMixingRule" : "aeiou",
  "barcodeField" : "aeiou",
  "absoluteMax" : "aeiou",
  "criticalAmount" : 123,
  "podRevDate" : "aeiou",
  "unitCode" : "aeiou",
  "hazmat" : "aeiou",
  "commodityCode" : "aeiou",
  "id" : 123,
  "itemDescription" : "aeiou",
  "sku" : "aeiou",
  "sector" : "aeiou",
  "lobId" : 123,
  "productCodeId" : 123,
  "packingSlipDescription" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "maxCycle" : 123,
  "upc" : "aeiou",
  "allocationRule" : "aeiou",
  "extrinsicNumber2" : 123,
  "compCode" : 123,
  "extrinsicNumber1" : 123,
  "forwardItemMixingRule" : "aeiou",
  "extrinsicText1" : "aeiou",
  "storageItemMixingRule" : "aeiou",
  "backorder" : "aeiou",
  "outsideVendor" : 123,
  "extrinsicText3" : "aeiou",
  "extrinsicText2" : "aeiou",
  "subGroupId" : 123,
  "overallLeadTime" : 123,
  "chargeCode" : "aeiou",
  "status" : "aeiou",
  "legacyLowLevelContactId" : 123,
  "overallFixedReorderPoint" : 123,
  "seasonalItem" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "serialCode" : "aeiou",
  "extrinsicDecimal2" : 1.3579000000000001069366817318950779736042022705078125,
  "maxInterim" : 123,
  "wrapCode" : "aeiou",
  "additionalDescription" : "aeiou",
  "lowStockCodeId" : 123,
  "pickNo" : "aeiou",
  "majorGroupId" : 123,
  "lotControlFlag" : "aeiou",
  "extrinsicDecimal1" : 1.3579000000000001069366817318950779736042022705078125,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "unitsPerWrap" : 123,
  "podOrderSuffix" : 123,
  "accountCodeId" : 123,
  "vendorSKU" : "aeiou",
  "requiresProductionLot" : "aeiou",
  "casebreakEnabled" : "aeiou",
  "summaryCodeId" : 123,
  "numericSortOrder" : 123,
  "listPrice" : 1.3579000000000001069366817318950779736042022705078125
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Item]> 
     */
    public class func getItemByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[Item]> {
        let path = "/beta/item/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[Item]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an item by id
     
     - parameter itemId: (path) Id of the item to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemById(itemId itemId: Int, completion: ((data: Item?, error: ErrorType?) -> Void)) {
        getItemByIdWithRequestBuilder(itemId: itemId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an item by id
     
     - GET /beta/item/{itemId}
     - Returns the item identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "weightPerWrap" : 1.3579000000000001069366817318950779736042022705078125,
  "storageLotMixingRule" : "aeiou",
  "buyerId" : 123,
  "secure" : "aeiou",
  "voidDate" : "2000-01-23T04:56:07.000+0000",
  "lowStockContactId" : 123,
  "forwardLotMixingRule" : "aeiou",
  "barcodeField" : "aeiou",
  "absoluteMax" : "aeiou",
  "criticalAmount" : 123,
  "podRevDate" : "aeiou",
  "unitCode" : "aeiou",
  "hazmat" : "aeiou",
  "commodityCode" : "aeiou",
  "id" : 123,
  "itemDescription" : "aeiou",
  "sku" : "aeiou",
  "sector" : "aeiou",
  "lobId" : 123,
  "productCodeId" : 123,
  "packingSlipDescription" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "maxCycle" : 123,
  "upc" : "aeiou",
  "allocationRule" : "aeiou",
  "extrinsicNumber2" : 123,
  "compCode" : 123,
  "extrinsicNumber1" : 123,
  "forwardItemMixingRule" : "aeiou",
  "extrinsicText1" : "aeiou",
  "storageItemMixingRule" : "aeiou",
  "backorder" : "aeiou",
  "outsideVendor" : 123,
  "extrinsicText3" : "aeiou",
  "extrinsicText2" : "aeiou",
  "subGroupId" : 123,
  "overallLeadTime" : 123,
  "chargeCode" : "aeiou",
  "status" : "aeiou",
  "legacyLowLevelContactId" : 123,
  "overallFixedReorderPoint" : 123,
  "seasonalItem" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "serialCode" : "aeiou",
  "extrinsicDecimal2" : 1.3579000000000001069366817318950779736042022705078125,
  "maxInterim" : 123,
  "wrapCode" : "aeiou",
  "additionalDescription" : "aeiou",
  "lowStockCodeId" : 123,
  "pickNo" : "aeiou",
  "majorGroupId" : 123,
  "lotControlFlag" : "aeiou",
  "extrinsicDecimal1" : 1.3579000000000001069366817318950779736042022705078125,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "unitsPerWrap" : 123,
  "podOrderSuffix" : 123,
  "accountCodeId" : 123,
  "vendorSKU" : "aeiou",
  "requiresProductionLot" : "aeiou",
  "casebreakEnabled" : "aeiou",
  "summaryCodeId" : 123,
  "numericSortOrder" : 123,
  "listPrice" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter itemId: (path) Id of the item to be returned. 

     - returns: RequestBuilder<Item> 
     */
    public class func getItemByIdWithRequestBuilder(itemId itemId: Int) -> RequestBuilder<Item> {
        var path = "/beta/item/{itemId}"
        path = path.stringByReplacingOccurrencesOfString("{itemId}", withString: "\(itemId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Item>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an item
     
     - parameter body: (body) Item to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateItem(body body: Item, completion: ((error: ErrorType?) -> Void)) {
        updateItemWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an item
     
     - PUT /beta/item
     - Updates an existing item using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Item to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateItemWithRequestBuilder(body body: Item) -> RequestBuilder<Void> {
        let path = "/beta/item"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an item custom fields
     
     - parameter body: (body) Item to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateItemCustomFields(body body: Item, completion: ((error: ErrorType?) -> Void)) {
        updateItemCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an item custom fields
     
     - PUT /beta/item/customFields
     - Updates an existing item custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Item to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateItemCustomFieldsWithRequestBuilder(body body: Item) -> RequestBuilder<Void> {
        let path = "/beta/item/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
