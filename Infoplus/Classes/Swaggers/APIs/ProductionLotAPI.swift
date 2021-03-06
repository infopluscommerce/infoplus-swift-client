//
// ProductionLotAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ProductionLotAPI: APIBase {
    /**
     Create a productionLot
     
     - parameter body: (body) ProductionLot to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionLot(body body: ProductionLot, completion: ((data: ProductionLot?, error: ErrorType?) -> Void)) {
        addProductionLotWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a productionLot
     - POST /beta/productionLot
     - Inserts a new productionLot using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "quantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "productionLot" : "productionLot",
  "id" : 0,
  "sku" : "sku",
  "lobId" : 6
}}]
     
     - parameter body: (body) ProductionLot to be inserted. 

     - returns: RequestBuilder<ProductionLot> 
     */
    public class func addProductionLotWithRequestBuilder(body body: ProductionLot) -> RequestBuilder<ProductionLot> {
        let path = "/beta/productionLot"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ProductionLot>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a productionLot
     
     - parameter productionLotId: (path) Id of the productionLot to add an audit to 
     - parameter productionLotAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionLotAudit(productionLotId productionLotId: Int32, productionLotAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addProductionLotAuditWithRequestBuilder(productionLotId: productionLotId, productionLotAudit: productionLotAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a productionLot
     - PUT /beta/productionLot/{productionLotId}/audit/{productionLotAudit}
     - Adds an audit to an existing productionLot.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionLotId: (path) Id of the productionLot to add an audit to 
     - parameter productionLotAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addProductionLotAuditWithRequestBuilder(productionLotId productionLotId: Int32, productionLotAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}/audit/{productionLotAudit}"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{productionLotAudit}", withString: "\(productionLotAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a productionLot
     
     - parameter productionLotId: (path) Id of the productionLot to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionLotFile(productionLotId productionLotId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addProductionLotFileWithRequestBuilder(productionLotId: productionLotId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a productionLot
     - POST /beta/productionLot/{productionLotId}/file/{fileName}
     - Adds a file to an existing productionLot.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionLotId: (path) Id of the productionLot to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addProductionLotFileWithRequestBuilder(productionLotId productionLotId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a productionLot by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter productionLotId: (path) Id of the productionLot to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionLotFileByURL(body body: RecordFile, productionLotId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addProductionLotFileByURLWithRequestBuilder(body: body, productionLotId: productionLotId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a productionLot by URL.
     - POST /beta/productionLot/{productionLotId}/file
     - Adds a file to an existing productionLot by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter productionLotId: (path) Id of the productionLot to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addProductionLotFileByURLWithRequestBuilder(body body: RecordFile, productionLotId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}/file"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a productionLot.
     
     - parameter productionLotId: (path) Id of the productionLot to add a tag to 
     - parameter productionLotTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductionLotTag(productionLotId productionLotId: Int32, productionLotTag: String, completion: ((error: ErrorType?) -> Void)) {
        addProductionLotTagWithRequestBuilder(productionLotId: productionLotId, productionLotTag: productionLotTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a productionLot.
     - PUT /beta/productionLot/{productionLotId}/tag/{productionLotTag}
     - Adds a tag to an existing productionLot.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionLotId: (path) Id of the productionLot to add a tag to 
     - parameter productionLotTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addProductionLotTagWithRequestBuilder(productionLotId productionLotId: Int32, productionLotTag: String) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}/tag/{productionLotTag}"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{productionLotTag}", withString: "\(productionLotTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a productionLot
     
     - parameter productionLotId: (path) Id of the productionLot to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteProductionLot(productionLotId productionLotId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteProductionLotWithRequestBuilder(productionLotId: productionLotId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a productionLot
     - DELETE /beta/productionLot/{productionLotId}
     - Deletes the productionLot identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionLotId: (path) Id of the productionLot to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteProductionLotWithRequestBuilder(productionLotId productionLotId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a productionLot.
     
     - parameter productionLotId: (path) Id of the productionLot to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteProductionLotFile(productionLotId productionLotId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteProductionLotFileWithRequestBuilder(productionLotId: productionLotId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a productionLot.
     - DELETE /beta/productionLot/{productionLotId}/file/{fileId}
     - Deletes an existing productionLot file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionLotId: (path) Id of the productionLot to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteProductionLotFileWithRequestBuilder(productionLotId productionLotId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a productionLot.
     
     - parameter productionLotId: (path) Id of the productionLot to remove tag from 
     - parameter productionLotTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteProductionLotTag(productionLotId productionLotId: Int32, productionLotTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteProductionLotTagWithRequestBuilder(productionLotId: productionLotId, productionLotTag: productionLotTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a productionLot.
     - DELETE /beta/productionLot/{productionLotId}/tag/{productionLotTag}
     - Deletes an existing productionLot tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionLotId: (path) Id of the productionLot to remove tag from 
     - parameter productionLotTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteProductionLotTagWithRequestBuilder(productionLotId productionLotId: Int32, productionLotTag: String) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}/tag/{productionLotTag}"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{productionLotTag}", withString: "\(productionLotTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a productionLot by id
     
     - parameter productionLotId: (path) Id of the productionLot to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateProductionLotById(productionLotId productionLotId: Int32, completion: ((data: ProductionLot?, error: ErrorType?) -> Void)) {
        getDuplicateProductionLotByIdWithRequestBuilder(productionLotId: productionLotId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a productionLot by id
     - GET /beta/productionLot/duplicate/{productionLotId}
     - Returns a duplicated productionLot identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "quantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "productionLot" : "productionLot",
  "id" : 0,
  "sku" : "sku",
  "lobId" : 6
}}]
     
     - parameter productionLotId: (path) Id of the productionLot to be duplicated. 

     - returns: RequestBuilder<ProductionLot> 
     */
    public class func getDuplicateProductionLotByIdWithRequestBuilder(productionLotId productionLotId: Int32) -> RequestBuilder<ProductionLot> {
        var path = "/beta/productionLot/duplicate/{productionLotId}"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ProductionLot>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search productionLots by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductionLotByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ProductionLot]?, error: ErrorType?) -> Void)) {
        getProductionLotByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search productionLots by filter
     - GET /beta/productionLot/search
     - Returns the list of productionLots that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "quantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "productionLot" : "productionLot",
  "id" : 0,
  "sku" : "sku",
  "lobId" : 6
}, {
  "quantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "productionLot" : "productionLot",
  "id" : 0,
  "sku" : "sku",
  "lobId" : 6
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ProductionLot]> 
     */
    public class func getProductionLotByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ProductionLot]> {
        let path = "/beta/productionLot/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ProductionLot]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a productionLot by id
     
     - parameter productionLotId: (path) Id of the productionLot to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductionLotById(productionLotId productionLotId: Int32, completion: ((data: ProductionLot?, error: ErrorType?) -> Void)) {
        getProductionLotByIdWithRequestBuilder(productionLotId: productionLotId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a productionLot by id
     - GET /beta/productionLot/{productionLotId}
     - Returns the productionLot identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "quantity" : 1,
  "customFields" : {
    "key" : "{}"
  },
  "productionLot" : "productionLot",
  "id" : 0,
  "sku" : "sku",
  "lobId" : 6
}}]
     
     - parameter productionLotId: (path) Id of the productionLot to be returned. 

     - returns: RequestBuilder<ProductionLot> 
     */
    public class func getProductionLotByIdWithRequestBuilder(productionLotId productionLotId: Int32) -> RequestBuilder<ProductionLot> {
        var path = "/beta/productionLot/{productionLotId}"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ProductionLot>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a productionLot.
     
     - parameter productionLotId: (path) Id of the productionLot to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductionLotFiles(productionLotId productionLotId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getProductionLotFilesWithRequestBuilder(productionLotId: productionLotId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a productionLot.
     - GET /beta/productionLot/{productionLotId}/file
     - Get all existing productionLot files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionLotId: (path) Id of the productionLot to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getProductionLotFilesWithRequestBuilder(productionLotId productionLotId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}/file"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a productionLot.
     
     - parameter productionLotId: (path) Id of the productionLot to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductionLotTags(productionLotId productionLotId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getProductionLotTagsWithRequestBuilder(productionLotId: productionLotId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a productionLot.
     - GET /beta/productionLot/{productionLotId}/tag
     - Get all existing productionLot tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter productionLotId: (path) Id of the productionLot to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getProductionLotTagsWithRequestBuilder(productionLotId productionLotId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/productionLot/{productionLotId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{productionLotId}", withString: "\(productionLotId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a productionLot
     
     - parameter body: (body) ProductionLot to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateProductionLot(body body: ProductionLot, completion: ((error: ErrorType?) -> Void)) {
        updateProductionLotWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a productionLot
     - PUT /beta/productionLot
     - Updates an existing productionLot using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ProductionLot to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateProductionLotWithRequestBuilder(body body: ProductionLot) -> RequestBuilder<Void> {
        let path = "/beta/productionLot"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a productionLot custom fields
     
     - parameter body: (body) ProductionLot to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateProductionLotCustomFields(body body: ProductionLot, completion: ((error: ErrorType?) -> Void)) {
        updateProductionLotCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a productionLot custom fields
     - PUT /beta/productionLot/customFields
     - Updates an existing productionLot custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ProductionLot to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateProductionLotCustomFieldsWithRequestBuilder(body body: ProductionLot) -> RequestBuilder<Void> {
        let path = "/beta/productionLot/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
