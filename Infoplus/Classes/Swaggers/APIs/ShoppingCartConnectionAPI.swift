//
// ShoppingCartConnectionAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ShoppingCartConnectionAPI: APIBase {
    /**
     
     Create a shoppingCartConnection
     
     - parameter body: (body) ShoppingCartConnection to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addShoppingCartConnection(body body: ShoppingCartConnection, completion: ((data: ShoppingCartConnection?, error: ErrorType?) -> Void)) {
        addShoppingCartConnectionWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a shoppingCartConnection
     
     - POST /beta/shoppingCartConnection
     - Inserts a new shoppingCartConnection using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "syncInventory" : true,
  "syncInventoryLevelsLastRunTime" : "2000-01-23T04:56:07.000+0000",
  "syncOrders" : true,
  "customFields" : {
    "key" : "{}"
  },
  "integrationPartnerId" : 123,
  "connectionType" : "aeiou",
  "syncTrackingData" : true,
  "password" : "aeiou",
  "accessCode" : "aeiou",
  "id" : 123,
  "itemFilterId" : 123,
  "orderShipmentLevel" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "orderSourceId" : 123,
  "clientId" : 123,
  "warehouseList" : [ {
    "zip" : "aeiou",
    "country" : "aeiou",
    "address" : "aeiou",
    "street3" : "aeiou",
    "modifyDate" : "2000-01-23T04:56:07.000+0000",
    "city" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "phone" : "aeiou",
    "lpnPrefix" : "aeiou",
    "name" : "aeiou",
    "client" : 123,
    "company" : "aeiou",
    "street1" : "aeiou",
    "id" : 123,
    "street2" : "aeiou",
    "state" : "aeiou",
    "locationBarcodePrefix" : "aeiou",
    "createDate" : "2000-01-23T04:56:07.000+0000"
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "infoplusSKUFieldToMap" : "aeiou",
  "accessToken" : "aeiou",
  "fulfillAllItems" : true,
  "nonce" : "aeiou",
  "createInvoices" : true,
  "syncOrdersLastRunTime" : "2000-01-23T04:56:07.000+0000",
  "defaultCarrierId" : 123,
  "scriptId" : 123,
  "shoppingCartStoreURL" : "aeiou",
  "name" : "aeiou",
  "shoppingCartSKUFieldToMap" : "aeiou",
  "inventoryLevelWarehouseControls" : "aeiou",
  "username" : "aeiou"
}}]
     
     - parameter body: (body) ShoppingCartConnection to be inserted. 

     - returns: RequestBuilder<ShoppingCartConnection> 
     */
    public class func addShoppingCartConnectionWithRequestBuilder(body body: ShoppingCartConnection) -> RequestBuilder<ShoppingCartConnection> {
        let path = "/beta/shoppingCartConnection"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<ShoppingCartConnection>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new audit for a shoppingCartConnection
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to add an audit to 
     - parameter shoppingCartConnectionAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addShoppingCartConnectionAudit(shoppingCartConnectionId shoppingCartConnectionId: Int, shoppingCartConnectionAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addShoppingCartConnectionAuditWithRequestBuilder(shoppingCartConnectionId: shoppingCartConnectionId, shoppingCartConnectionAudit: shoppingCartConnectionAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a shoppingCartConnection
     
     - PUT /beta/shoppingCartConnection/{shoppingCartConnectionId}/audit/{shoppingCartConnectionAudit}
     - Adds an audit to an existing shoppingCartConnection.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to add an audit to 
     - parameter shoppingCartConnectionAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addShoppingCartConnectionAuditWithRequestBuilder(shoppingCartConnectionId shoppingCartConnectionId: Int, shoppingCartConnectionAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/shoppingCartConnection/{shoppingCartConnectionId}/audit/{shoppingCartConnectionAudit}"
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionId}", withString: "\(shoppingCartConnectionId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionAudit}", withString: "\(shoppingCartConnectionAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a shoppingCartConnection.
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to add a tag to 
     - parameter shoppingCartConnectionTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addShoppingCartConnectionTag(shoppingCartConnectionId shoppingCartConnectionId: Int, shoppingCartConnectionTag: String, completion: ((error: ErrorType?) -> Void)) {
        addShoppingCartConnectionTagWithRequestBuilder(shoppingCartConnectionId: shoppingCartConnectionId, shoppingCartConnectionTag: shoppingCartConnectionTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a shoppingCartConnection.
     
     - PUT /beta/shoppingCartConnection/{shoppingCartConnectionId}/tag/{shoppingCartConnectionTag}
     - Adds a tag to an existing shoppingCartConnection.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to add a tag to 
     - parameter shoppingCartConnectionTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addShoppingCartConnectionTagWithRequestBuilder(shoppingCartConnectionId shoppingCartConnectionId: Int, shoppingCartConnectionTag: String) -> RequestBuilder<Void> {
        var path = "/beta/shoppingCartConnection/{shoppingCartConnectionId}/tag/{shoppingCartConnectionTag}"
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionId}", withString: "\(shoppingCartConnectionId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionTag}", withString: "\(shoppingCartConnectionTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a shoppingCartConnection
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteShoppingCartConnection(shoppingCartConnectionId shoppingCartConnectionId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteShoppingCartConnectionWithRequestBuilder(shoppingCartConnectionId: shoppingCartConnectionId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a shoppingCartConnection
     
     - DELETE /beta/shoppingCartConnection/{shoppingCartConnectionId}
     - Deletes the shoppingCartConnection identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteShoppingCartConnectionWithRequestBuilder(shoppingCartConnectionId shoppingCartConnectionId: Int) -> RequestBuilder<Void> {
        var path = "/beta/shoppingCartConnection/{shoppingCartConnectionId}"
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionId}", withString: "\(shoppingCartConnectionId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a shoppingCartConnection.
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to remove tag from 
     - parameter shoppingCartConnectionTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteShoppingCartConnectionTag(shoppingCartConnectionId shoppingCartConnectionId: Int, shoppingCartConnectionTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteShoppingCartConnectionTagWithRequestBuilder(shoppingCartConnectionId: shoppingCartConnectionId, shoppingCartConnectionTag: shoppingCartConnectionTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a shoppingCartConnection.
     
     - DELETE /beta/shoppingCartConnection/{shoppingCartConnectionId}/tag/{shoppingCartConnectionTag}
     - Deletes an existing shoppingCartConnection tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to remove tag from 
     - parameter shoppingCartConnectionTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteShoppingCartConnectionTagWithRequestBuilder(shoppingCartConnectionId shoppingCartConnectionId: Int, shoppingCartConnectionTag: String) -> RequestBuilder<Void> {
        var path = "/beta/shoppingCartConnection/{shoppingCartConnectionId}/tag/{shoppingCartConnectionTag}"
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionId}", withString: "\(shoppingCartConnectionId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionTag}", withString: "\(shoppingCartConnectionTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a shoppingCartConnection by id
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateShoppingCartConnectionById(shoppingCartConnectionId shoppingCartConnectionId: Int, completion: ((data: ShoppingCartConnection?, error: ErrorType?) -> Void)) {
        getDuplicateShoppingCartConnectionByIdWithRequestBuilder(shoppingCartConnectionId: shoppingCartConnectionId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a shoppingCartConnection by id
     
     - GET /beta/shoppingCartConnection/duplicate/{shoppingCartConnectionId}
     - Returns a duplicated shoppingCartConnection identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "syncInventory" : true,
  "syncInventoryLevelsLastRunTime" : "2000-01-23T04:56:07.000+0000",
  "syncOrders" : true,
  "customFields" : {
    "key" : "{}"
  },
  "integrationPartnerId" : 123,
  "connectionType" : "aeiou",
  "syncTrackingData" : true,
  "password" : "aeiou",
  "accessCode" : "aeiou",
  "id" : 123,
  "itemFilterId" : 123,
  "orderShipmentLevel" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "orderSourceId" : 123,
  "clientId" : 123,
  "warehouseList" : [ {
    "zip" : "aeiou",
    "country" : "aeiou",
    "address" : "aeiou",
    "street3" : "aeiou",
    "modifyDate" : "2000-01-23T04:56:07.000+0000",
    "city" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "phone" : "aeiou",
    "lpnPrefix" : "aeiou",
    "name" : "aeiou",
    "client" : 123,
    "company" : "aeiou",
    "street1" : "aeiou",
    "id" : 123,
    "street2" : "aeiou",
    "state" : "aeiou",
    "locationBarcodePrefix" : "aeiou",
    "createDate" : "2000-01-23T04:56:07.000+0000"
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "infoplusSKUFieldToMap" : "aeiou",
  "accessToken" : "aeiou",
  "fulfillAllItems" : true,
  "nonce" : "aeiou",
  "createInvoices" : true,
  "syncOrdersLastRunTime" : "2000-01-23T04:56:07.000+0000",
  "defaultCarrierId" : 123,
  "scriptId" : 123,
  "shoppingCartStoreURL" : "aeiou",
  "name" : "aeiou",
  "shoppingCartSKUFieldToMap" : "aeiou",
  "inventoryLevelWarehouseControls" : "aeiou",
  "username" : "aeiou"
}}]
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to be duplicated. 

     - returns: RequestBuilder<ShoppingCartConnection> 
     */
    public class func getDuplicateShoppingCartConnectionByIdWithRequestBuilder(shoppingCartConnectionId shoppingCartConnectionId: Int) -> RequestBuilder<ShoppingCartConnection> {
        var path = "/beta/shoppingCartConnection/duplicate/{shoppingCartConnectionId}"
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionId}", withString: "\(shoppingCartConnectionId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ShoppingCartConnection>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search shoppingCartConnections by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getShoppingCartConnectionByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [ShoppingCartConnection]?, error: ErrorType?) -> Void)) {
        getShoppingCartConnectionByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search shoppingCartConnections by filter
     
     - GET /beta/shoppingCartConnection/search
     - Returns the list of shoppingCartConnections that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "syncInventory" : true,
  "syncInventoryLevelsLastRunTime" : "2000-01-23T04:56:07.000+0000",
  "syncOrders" : true,
  "customFields" : {
    "key" : "{}"
  },
  "integrationPartnerId" : 123,
  "connectionType" : "aeiou",
  "syncTrackingData" : true,
  "password" : "aeiou",
  "accessCode" : "aeiou",
  "id" : 123,
  "itemFilterId" : 123,
  "orderShipmentLevel" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "orderSourceId" : 123,
  "clientId" : 123,
  "warehouseList" : [ {
    "zip" : "aeiou",
    "country" : "aeiou",
    "address" : "aeiou",
    "street3" : "aeiou",
    "modifyDate" : "2000-01-23T04:56:07.000+0000",
    "city" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "phone" : "aeiou",
    "lpnPrefix" : "aeiou",
    "name" : "aeiou",
    "client" : 123,
    "company" : "aeiou",
    "street1" : "aeiou",
    "id" : 123,
    "street2" : "aeiou",
    "state" : "aeiou",
    "locationBarcodePrefix" : "aeiou",
    "createDate" : "2000-01-23T04:56:07.000+0000"
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "infoplusSKUFieldToMap" : "aeiou",
  "accessToken" : "aeiou",
  "fulfillAllItems" : true,
  "nonce" : "aeiou",
  "createInvoices" : true,
  "syncOrdersLastRunTime" : "2000-01-23T04:56:07.000+0000",
  "defaultCarrierId" : 123,
  "scriptId" : 123,
  "shoppingCartStoreURL" : "aeiou",
  "name" : "aeiou",
  "shoppingCartSKUFieldToMap" : "aeiou",
  "inventoryLevelWarehouseControls" : "aeiou",
  "username" : "aeiou"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ShoppingCartConnection]> 
     */
    public class func getShoppingCartConnectionByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[ShoppingCartConnection]> {
        let path = "/beta/shoppingCartConnection/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ShoppingCartConnection]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a shoppingCartConnection by id
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getShoppingCartConnectionById(shoppingCartConnectionId shoppingCartConnectionId: Int, completion: ((data: ShoppingCartConnection?, error: ErrorType?) -> Void)) {
        getShoppingCartConnectionByIdWithRequestBuilder(shoppingCartConnectionId: shoppingCartConnectionId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a shoppingCartConnection by id
     
     - GET /beta/shoppingCartConnection/{shoppingCartConnectionId}
     - Returns the shoppingCartConnection identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "syncInventory" : true,
  "syncInventoryLevelsLastRunTime" : "2000-01-23T04:56:07.000+0000",
  "syncOrders" : true,
  "customFields" : {
    "key" : "{}"
  },
  "integrationPartnerId" : 123,
  "connectionType" : "aeiou",
  "syncTrackingData" : true,
  "password" : "aeiou",
  "accessCode" : "aeiou",
  "id" : 123,
  "itemFilterId" : 123,
  "orderShipmentLevel" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "orderSourceId" : 123,
  "clientId" : 123,
  "warehouseList" : [ {
    "zip" : "aeiou",
    "country" : "aeiou",
    "address" : "aeiou",
    "street3" : "aeiou",
    "modifyDate" : "2000-01-23T04:56:07.000+0000",
    "city" : "aeiou",
    "customFields" : {
      "key" : "{}"
    },
    "phone" : "aeiou",
    "lpnPrefix" : "aeiou",
    "name" : "aeiou",
    "client" : 123,
    "company" : "aeiou",
    "street1" : "aeiou",
    "id" : 123,
    "street2" : "aeiou",
    "state" : "aeiou",
    "locationBarcodePrefix" : "aeiou",
    "createDate" : "2000-01-23T04:56:07.000+0000"
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "infoplusSKUFieldToMap" : "aeiou",
  "accessToken" : "aeiou",
  "fulfillAllItems" : true,
  "nonce" : "aeiou",
  "createInvoices" : true,
  "syncOrdersLastRunTime" : "2000-01-23T04:56:07.000+0000",
  "defaultCarrierId" : 123,
  "scriptId" : 123,
  "shoppingCartStoreURL" : "aeiou",
  "name" : "aeiou",
  "shoppingCartSKUFieldToMap" : "aeiou",
  "inventoryLevelWarehouseControls" : "aeiou",
  "username" : "aeiou"
}}]
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to be returned. 

     - returns: RequestBuilder<ShoppingCartConnection> 
     */
    public class func getShoppingCartConnectionByIdWithRequestBuilder(shoppingCartConnectionId shoppingCartConnectionId: Int) -> RequestBuilder<ShoppingCartConnection> {
        var path = "/beta/shoppingCartConnection/{shoppingCartConnectionId}"
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionId}", withString: "\(shoppingCartConnectionId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ShoppingCartConnection>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a shoppingCartConnection.
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getShoppingCartConnectionTags(shoppingCartConnectionId shoppingCartConnectionId: Int, completion: ((error: ErrorType?) -> Void)) {
        getShoppingCartConnectionTagsWithRequestBuilder(shoppingCartConnectionId: shoppingCartConnectionId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a shoppingCartConnection.
     
     - GET /beta/shoppingCartConnection/{shoppingCartConnectionId}/tag
     - Get all existing shoppingCartConnection tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shoppingCartConnectionId: (path) Id of the shoppingCartConnection to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getShoppingCartConnectionTagsWithRequestBuilder(shoppingCartConnectionId shoppingCartConnectionId: Int) -> RequestBuilder<Void> {
        var path = "/beta/shoppingCartConnection/{shoppingCartConnectionId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{shoppingCartConnectionId}", withString: "\(shoppingCartConnectionId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a shoppingCartConnection
     
     - parameter body: (body) ShoppingCartConnection to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateShoppingCartConnection(body body: ShoppingCartConnection, completion: ((error: ErrorType?) -> Void)) {
        updateShoppingCartConnectionWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a shoppingCartConnection
     
     - PUT /beta/shoppingCartConnection
     - Updates an existing shoppingCartConnection using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ShoppingCartConnection to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateShoppingCartConnectionWithRequestBuilder(body body: ShoppingCartConnection) -> RequestBuilder<Void> {
        let path = "/beta/shoppingCartConnection"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a shoppingCartConnection custom fields
     
     - parameter body: (body) ShoppingCartConnection to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateShoppingCartConnectionCustomFields(body body: ShoppingCartConnection, completion: ((error: ErrorType?) -> Void)) {
        updateShoppingCartConnectionCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a shoppingCartConnection custom fields
     
     - PUT /beta/shoppingCartConnection/customFields
     - Updates an existing shoppingCartConnection custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ShoppingCartConnection to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateShoppingCartConnectionCustomFieldsWithRequestBuilder(body body: ShoppingCartConnection) -> RequestBuilder<Void> {
        let path = "/beta/shoppingCartConnection/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
