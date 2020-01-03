//
// CartAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CartAPI: APIBase {
    /**
     Create a cart
     
     - parameter body: (body) Cart to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCart(body body: Cart, completion: ((data: Cart?, error: ErrorType?) -> Void)) {
        addCartWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a cart
     - POST /beta/cart
     - Inserts a new cart using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "positionType" : "positionType",
  "currentFulfillmentProcessId" : 6,
  "currentWorkBatchId" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : "cartId",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) Cart to be inserted. 

     - returns: RequestBuilder<Cart> 
     */
    public class func addCartWithRequestBuilder(body body: Cart) -> RequestBuilder<Cart> {
        let path = "/beta/cart"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Cart>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a cart
     
     - parameter cartId: (path) Id of the cart to add an audit to 
     - parameter cartAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartAudit(cartId cartId: Int32, cartAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addCartAuditWithRequestBuilder(cartId: cartId, cartAudit: cartAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a cart
     - PUT /beta/cart/{cartId}/audit/{cartAudit}
     - Adds an audit to an existing cart.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartId: (path) Id of the cart to add an audit to 
     - parameter cartAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartAuditWithRequestBuilder(cartId cartId: Int32, cartAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/cart/{cartId}/audit/{cartAudit}"
        path = path.stringByReplacingOccurrencesOfString("{cartId}", withString: "\(cartId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartAudit}", withString: "\(cartAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a cart
     
     - parameter cartId: (path) Id of the cart to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartFile(cartId cartId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addCartFileWithRequestBuilder(cartId: cartId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a cart
     - POST /beta/cart/{cartId}/file/{fileName}
     - Adds a file to an existing cart.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartId: (path) Id of the cart to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartFileWithRequestBuilder(cartId cartId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/cart/{cartId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{cartId}", withString: "\(cartId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a cart.
     
     - parameter cartId: (path) Id of the cart to add a tag to 
     - parameter cartTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartTag(cartId cartId: Int32, cartTag: String, completion: ((error: ErrorType?) -> Void)) {
        addCartTagWithRequestBuilder(cartId: cartId, cartTag: cartTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a cart.
     - PUT /beta/cart/{cartId}/tag/{cartTag}
     - Adds a tag to an existing cart.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartId: (path) Id of the cart to add a tag to 
     - parameter cartTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartTagWithRequestBuilder(cartId cartId: Int32, cartTag: String) -> RequestBuilder<Void> {
        var path = "/beta/cart/{cartId}/tag/{cartTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartId}", withString: "\(cartId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartTag}", withString: "\(cartTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a cart
     
     - parameter cartId: (path) Id of the cart to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCart(cartId cartId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteCartWithRequestBuilder(cartId: cartId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a cart
     - DELETE /beta/cart/{cartId}
     - Deletes the cart identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartId: (path) Id of the cart to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartWithRequestBuilder(cartId cartId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/cart/{cartId}"
        path = path.stringByReplacingOccurrencesOfString("{cartId}", withString: "\(cartId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a cart.
     
     - parameter cartId: (path) Id of the cart to remove tag from 
     - parameter cartTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartTag(cartId cartId: Int32, cartTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteCartTagWithRequestBuilder(cartId: cartId, cartTag: cartTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a cart.
     - DELETE /beta/cart/{cartId}/tag/{cartTag}
     - Deletes an existing cart tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartId: (path) Id of the cart to remove tag from 
     - parameter cartTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartTagWithRequestBuilder(cartId cartId: Int32, cartTag: String) -> RequestBuilder<Void> {
        var path = "/beta/cart/{cartId}/tag/{cartTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartId}", withString: "\(cartId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartTag}", withString: "\(cartTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search carts by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Cart]?, error: ErrorType?) -> Void)) {
        getCartByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search carts by filter
     - GET /beta/cart/search
     - Returns the list of carts that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "positionType" : "positionType",
  "currentFulfillmentProcessId" : 6,
  "currentWorkBatchId" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : "cartId",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "positionType" : "positionType",
  "currentFulfillmentProcessId" : 6,
  "currentWorkBatchId" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : "cartId",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Cart]> 
     */
    public class func getCartByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Cart]> {
        let path = "/beta/cart/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Cart]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a cart by id
     
     - parameter cartId: (path) Id of the cart to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartById(cartId cartId: Int32, completion: ((data: Cart?, error: ErrorType?) -> Void)) {
        getCartByIdWithRequestBuilder(cartId: cartId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a cart by id
     - GET /beta/cart/{cartId}
     - Returns the cart identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "positionType" : "positionType",
  "currentFulfillmentProcessId" : 6,
  "currentWorkBatchId" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : "cartId",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter cartId: (path) Id of the cart to be returned. 

     - returns: RequestBuilder<Cart> 
     */
    public class func getCartByIdWithRequestBuilder(cartId cartId: Int32) -> RequestBuilder<Cart> {
        var path = "/beta/cart/{cartId}"
        path = path.stringByReplacingOccurrencesOfString("{cartId}", withString: "\(cartId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Cart>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a cart.
     
     - parameter cartId: (path) Id of the cart to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartTags(cartId cartId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCartTagsWithRequestBuilder(cartId: cartId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a cart.
     - GET /beta/cart/{cartId}/tag
     - Get all existing cart tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartId: (path) Id of the cart to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCartTagsWithRequestBuilder(cartId cartId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/cart/{cartId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{cartId}", withString: "\(cartId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a cart by id
     
     - parameter cartId: (path) Id of the cart to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateCartById(cartId cartId: Int32, completion: ((data: Cart?, error: ErrorType?) -> Void)) {
        getDuplicateCartByIdWithRequestBuilder(cartId: cartId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a cart by id
     - GET /beta/cart/duplicate/{cartId}
     - Returns a duplicated cart identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "positionType" : "positionType",
  "currentFulfillmentProcessId" : 6,
  "currentWorkBatchId" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "cartId" : "cartId",
  "description" : "description",
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter cartId: (path) Id of the cart to be duplicated. 

     - returns: RequestBuilder<Cart> 
     */
    public class func getDuplicateCartByIdWithRequestBuilder(cartId cartId: Int32) -> RequestBuilder<Cart> {
        var path = "/beta/cart/duplicate/{cartId}"
        path = path.stringByReplacingOccurrencesOfString("{cartId}", withString: "\(cartId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Cart>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a cart
     
     - parameter body: (body) Cart to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCart(body body: Cart, completion: ((error: ErrorType?) -> Void)) {
        updateCartWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a cart
     - PUT /beta/cart
     - Updates an existing cart using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Cart to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateCartWithRequestBuilder(body body: Cart) -> RequestBuilder<Void> {
        let path = "/beta/cart"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
