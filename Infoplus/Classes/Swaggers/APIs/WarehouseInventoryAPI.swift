//
// WarehouseInventoryAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class WarehouseInventoryAPI: APIBase {
    /**
     Add new audit for a warehouseInventory
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to add an audit to 
     - parameter warehouseInventoryAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWarehouseInventoryAudit(warehouseInventoryId warehouseInventoryId: Int32, warehouseInventoryAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addWarehouseInventoryAuditWithRequestBuilder(warehouseInventoryId: warehouseInventoryId, warehouseInventoryAudit: warehouseInventoryAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a warehouseInventory
     - PUT /beta/warehouseInventory/{warehouseInventoryId}/audit/{warehouseInventoryAudit}
     - Adds an audit to an existing warehouseInventory.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to add an audit to 
     - parameter warehouseInventoryAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addWarehouseInventoryAuditWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32, warehouseInventoryAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}/audit/{warehouseInventoryAudit}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryAudit}", withString: "\(warehouseInventoryAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a warehouseInventory
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWarehouseInventoryFile(warehouseInventoryId warehouseInventoryId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addWarehouseInventoryFileWithRequestBuilder(warehouseInventoryId: warehouseInventoryId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a warehouseInventory
     - POST /beta/warehouseInventory/{warehouseInventoryId}/file/{fileName}
     - Adds a file to an existing warehouseInventory.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addWarehouseInventoryFileWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a warehouseInventory by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWarehouseInventoryFileByURL(body body: RecordFile, warehouseInventoryId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addWarehouseInventoryFileByURLWithRequestBuilder(body: body, warehouseInventoryId: warehouseInventoryId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a warehouseInventory by URL.
     - POST /beta/warehouseInventory/{warehouseInventoryId}/file
     - Adds a file to an existing warehouseInventory by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addWarehouseInventoryFileByURLWithRequestBuilder(body body: RecordFile, warehouseInventoryId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}/file"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a warehouseInventory.
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to add a tag to 
     - parameter warehouseInventoryTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addWarehouseInventoryTag(warehouseInventoryId warehouseInventoryId: Int32, warehouseInventoryTag: String, completion: ((error: ErrorType?) -> Void)) {
        addWarehouseInventoryTagWithRequestBuilder(warehouseInventoryId: warehouseInventoryId, warehouseInventoryTag: warehouseInventoryTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a warehouseInventory.
     - PUT /beta/warehouseInventory/{warehouseInventoryId}/tag/{warehouseInventoryTag}
     - Adds a tag to an existing warehouseInventory.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to add a tag to 
     - parameter warehouseInventoryTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addWarehouseInventoryTagWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32, warehouseInventoryTag: String) -> RequestBuilder<Void> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}/tag/{warehouseInventoryTag}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryTag}", withString: "\(warehouseInventoryTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a warehouseInventory.
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteWarehouseInventoryFile(warehouseInventoryId warehouseInventoryId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteWarehouseInventoryFileWithRequestBuilder(warehouseInventoryId: warehouseInventoryId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a warehouseInventory.
     - DELETE /beta/warehouseInventory/{warehouseInventoryId}/file/{fileId}
     - Deletes an existing warehouseInventory file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteWarehouseInventoryFileWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a warehouseInventory.
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to remove tag from 
     - parameter warehouseInventoryTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteWarehouseInventoryTag(warehouseInventoryId warehouseInventoryId: Int32, warehouseInventoryTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteWarehouseInventoryTagWithRequestBuilder(warehouseInventoryId: warehouseInventoryId, warehouseInventoryTag: warehouseInventoryTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a warehouseInventory.
     - DELETE /beta/warehouseInventory/{warehouseInventoryId}/tag/{warehouseInventoryTag}
     - Deletes an existing warehouseInventory tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to remove tag from 
     - parameter warehouseInventoryTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteWarehouseInventoryTagWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32, warehouseInventoryTag: String) -> RequestBuilder<Void> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}/tag/{warehouseInventoryTag}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryTag}", withString: "\(warehouseInventoryTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a warehouseInventory by id
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateWarehouseInventoryById(warehouseInventoryId warehouseInventoryId: Int32, completion: ((data: WarehouseInventory?, error: ErrorType?) -> Void)) {
        getDuplicateWarehouseInventoryByIdWithRequestBuilder(warehouseInventoryId: warehouseInventoryId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a warehouseInventory by id
     - GET /beta/warehouseInventory/duplicate/{warehouseInventoryId}
     - Returns a duplicated warehouseInventory identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "onHandQuantityCases" : 6,
  "inFulfillmentProcessQuantity" : 2,
  "customFields" : {
    "key" : "{}"
  },
  "orderableQuantityInnerPacks" : 5,
  "openPOQuantityPallets" : 6,
  "damagedQuantityInnerPacks" : 1,
  "unallocatableQuantityPallets" : 7,
  "unallocatableQuantityCases" : 3,
  "damagedQuantity" : 3,
  "unavailableQuantityCases" : 0,
  "totalDemand" : 0,
  "orderableQuantity" : 4,
  "unavailableQuantity" : 5,
  "openPOQuantity" : 2,
  "unavailableQuantityInnerPacks" : 7,
  "stockStatus" : "stockStatus",
  "inFulfillmentProcessQuantityPallets" : 9,
  "orderableQuantityCases" : 6,
  "orderableQuantityPallets" : 6,
  "id" : 0,
  "sku" : "sku",
  "daysOnHand" : 1,
  "lobId" : 6,
  "damagedQuantityPallets" : 4,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "openOrderQuantityCases" : 6,
  "availableQuantity" : 9,
  "inFulfillmentProcessQuantityInnerPacks" : 9,
  "onHandQuantityInnerPacks" : 8,
  "nextRequestDeliveryDate" : "2000-01-23T04:56:07.000+00:00",
  "openOrderQuantity" : 7,
  "onHandQuantityPallets" : 9,
  "openPOQuantityCases" : 1,
  "openPOQuantityInnerPacks" : 2,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "unallocatableQuantity" : 7,
  "damagedQuantityCases" : 7,
  "availableQuantityInnerPacks" : 1,
  "availableQuantityPallets" : 6,
  "openOrderQuantityPallets" : 6,
  "unallocatableQuantityInnerPacks" : 3,
  "openOrderQuantityInnerPacks" : 3,
  "warehouseId" : 1,
  "availableQuantityCases" : 1,
  "onHandQuantity" : 5,
  "inFulfillmentProcessQuantityCases" : 5,
  "unavailableQuantityPallets" : 6
}}]
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to be duplicated. 

     - returns: RequestBuilder<WarehouseInventory> 
     */
    public class func getDuplicateWarehouseInventoryByIdWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32) -> RequestBuilder<WarehouseInventory> {
        var path = "/beta/warehouseInventory/duplicate/{warehouseInventoryId}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<WarehouseInventory>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search warehouseInventorys by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseInventoryByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [WarehouseInventory]?, error: ErrorType?) -> Void)) {
        getWarehouseInventoryByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search warehouseInventorys by filter
     - GET /beta/warehouseInventory/search
     - Returns the list of warehouseInventorys that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "onHandQuantityCases" : 6,
  "inFulfillmentProcessQuantity" : 2,
  "customFields" : {
    "key" : "{}"
  },
  "orderableQuantityInnerPacks" : 5,
  "openPOQuantityPallets" : 6,
  "damagedQuantityInnerPacks" : 1,
  "unallocatableQuantityPallets" : 7,
  "unallocatableQuantityCases" : 3,
  "damagedQuantity" : 3,
  "unavailableQuantityCases" : 0,
  "totalDemand" : 0,
  "orderableQuantity" : 4,
  "unavailableQuantity" : 5,
  "openPOQuantity" : 2,
  "unavailableQuantityInnerPacks" : 7,
  "stockStatus" : "stockStatus",
  "inFulfillmentProcessQuantityPallets" : 9,
  "orderableQuantityCases" : 6,
  "orderableQuantityPallets" : 6,
  "id" : 0,
  "sku" : "sku",
  "daysOnHand" : 1,
  "lobId" : 6,
  "damagedQuantityPallets" : 4,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "openOrderQuantityCases" : 6,
  "availableQuantity" : 9,
  "inFulfillmentProcessQuantityInnerPacks" : 9,
  "onHandQuantityInnerPacks" : 8,
  "nextRequestDeliveryDate" : "2000-01-23T04:56:07.000+00:00",
  "openOrderQuantity" : 7,
  "onHandQuantityPallets" : 9,
  "openPOQuantityCases" : 1,
  "openPOQuantityInnerPacks" : 2,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "unallocatableQuantity" : 7,
  "damagedQuantityCases" : 7,
  "availableQuantityInnerPacks" : 1,
  "availableQuantityPallets" : 6,
  "openOrderQuantityPallets" : 6,
  "unallocatableQuantityInnerPacks" : 3,
  "openOrderQuantityInnerPacks" : 3,
  "warehouseId" : 1,
  "availableQuantityCases" : 1,
  "onHandQuantity" : 5,
  "inFulfillmentProcessQuantityCases" : 5,
  "unavailableQuantityPallets" : 6
}, {
  "onHandQuantityCases" : 6,
  "inFulfillmentProcessQuantity" : 2,
  "customFields" : {
    "key" : "{}"
  },
  "orderableQuantityInnerPacks" : 5,
  "openPOQuantityPallets" : 6,
  "damagedQuantityInnerPacks" : 1,
  "unallocatableQuantityPallets" : 7,
  "unallocatableQuantityCases" : 3,
  "damagedQuantity" : 3,
  "unavailableQuantityCases" : 0,
  "totalDemand" : 0,
  "orderableQuantity" : 4,
  "unavailableQuantity" : 5,
  "openPOQuantity" : 2,
  "unavailableQuantityInnerPacks" : 7,
  "stockStatus" : "stockStatus",
  "inFulfillmentProcessQuantityPallets" : 9,
  "orderableQuantityCases" : 6,
  "orderableQuantityPallets" : 6,
  "id" : 0,
  "sku" : "sku",
  "daysOnHand" : 1,
  "lobId" : 6,
  "damagedQuantityPallets" : 4,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "openOrderQuantityCases" : 6,
  "availableQuantity" : 9,
  "inFulfillmentProcessQuantityInnerPacks" : 9,
  "onHandQuantityInnerPacks" : 8,
  "nextRequestDeliveryDate" : "2000-01-23T04:56:07.000+00:00",
  "openOrderQuantity" : 7,
  "onHandQuantityPallets" : 9,
  "openPOQuantityCases" : 1,
  "openPOQuantityInnerPacks" : 2,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "unallocatableQuantity" : 7,
  "damagedQuantityCases" : 7,
  "availableQuantityInnerPacks" : 1,
  "availableQuantityPallets" : 6,
  "openOrderQuantityPallets" : 6,
  "unallocatableQuantityInnerPacks" : 3,
  "openOrderQuantityInnerPacks" : 3,
  "warehouseId" : 1,
  "availableQuantityCases" : 1,
  "onHandQuantity" : 5,
  "inFulfillmentProcessQuantityCases" : 5,
  "unavailableQuantityPallets" : 6
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[WarehouseInventory]> 
     */
    public class func getWarehouseInventoryByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[WarehouseInventory]> {
        let path = "/beta/warehouseInventory/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[WarehouseInventory]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a warehouseInventory by id
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseInventoryById(warehouseInventoryId warehouseInventoryId: Int32, completion: ((data: WarehouseInventory?, error: ErrorType?) -> Void)) {
        getWarehouseInventoryByIdWithRequestBuilder(warehouseInventoryId: warehouseInventoryId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a warehouseInventory by id
     - GET /beta/warehouseInventory/{warehouseInventoryId}
     - Returns the warehouseInventory identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "onHandQuantityCases" : 6,
  "inFulfillmentProcessQuantity" : 2,
  "customFields" : {
    "key" : "{}"
  },
  "orderableQuantityInnerPacks" : 5,
  "openPOQuantityPallets" : 6,
  "damagedQuantityInnerPacks" : 1,
  "unallocatableQuantityPallets" : 7,
  "unallocatableQuantityCases" : 3,
  "damagedQuantity" : 3,
  "unavailableQuantityCases" : 0,
  "totalDemand" : 0,
  "orderableQuantity" : 4,
  "unavailableQuantity" : 5,
  "openPOQuantity" : 2,
  "unavailableQuantityInnerPacks" : 7,
  "stockStatus" : "stockStatus",
  "inFulfillmentProcessQuantityPallets" : 9,
  "orderableQuantityCases" : 6,
  "orderableQuantityPallets" : 6,
  "id" : 0,
  "sku" : "sku",
  "daysOnHand" : 1,
  "lobId" : 6,
  "damagedQuantityPallets" : 4,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "openOrderQuantityCases" : 6,
  "availableQuantity" : 9,
  "inFulfillmentProcessQuantityInnerPacks" : 9,
  "onHandQuantityInnerPacks" : 8,
  "nextRequestDeliveryDate" : "2000-01-23T04:56:07.000+00:00",
  "openOrderQuantity" : 7,
  "onHandQuantityPallets" : 9,
  "openPOQuantityCases" : 1,
  "openPOQuantityInnerPacks" : 2,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "unallocatableQuantity" : 7,
  "damagedQuantityCases" : 7,
  "availableQuantityInnerPacks" : 1,
  "availableQuantityPallets" : 6,
  "openOrderQuantityPallets" : 6,
  "unallocatableQuantityInnerPacks" : 3,
  "openOrderQuantityInnerPacks" : 3,
  "warehouseId" : 1,
  "availableQuantityCases" : 1,
  "onHandQuantity" : 5,
  "inFulfillmentProcessQuantityCases" : 5,
  "unavailableQuantityPallets" : 6
}}]
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to be returned. 

     - returns: RequestBuilder<WarehouseInventory> 
     */
    public class func getWarehouseInventoryByIdWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32) -> RequestBuilder<WarehouseInventory> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<WarehouseInventory>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a warehouseInventory.
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseInventoryFiles(warehouseInventoryId warehouseInventoryId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getWarehouseInventoryFilesWithRequestBuilder(warehouseInventoryId: warehouseInventoryId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a warehouseInventory.
     - GET /beta/warehouseInventory/{warehouseInventoryId}/file
     - Get all existing warehouseInventory files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getWarehouseInventoryFilesWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}/file"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a warehouseInventory.
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getWarehouseInventoryTags(warehouseInventoryId warehouseInventoryId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getWarehouseInventoryTagsWithRequestBuilder(warehouseInventoryId: warehouseInventoryId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a warehouseInventory.
     - GET /beta/warehouseInventory/{warehouseInventoryId}/tag
     - Get all existing warehouseInventory tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter warehouseInventoryId: (path) Id of the warehouseInventory to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getWarehouseInventoryTagsWithRequestBuilder(warehouseInventoryId warehouseInventoryId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/warehouseInventory/{warehouseInventoryId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{warehouseInventoryId}", withString: "\(warehouseInventoryId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
