//
// VendorAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class VendorAPI: APIBase {
    /**
     
     Create a vendor
     
     - parameter body: (body) Vendor to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addVendor(body body: Vendor, completion: ((data: Vendor?, error: ErrorType?) -> Void)) {
        addVendorWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a vendor
     
     - POST /beta/vendor
     - Inserts a new vendor using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "country" : "aeiou",
  "zipCode" : "aeiou",
  "product9" : 123,
  "product8" : 123,
  "requestDays" : 123,
  "product7" : 123,
  "city" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "product2" : 123,
  "product1" : 123,
  "orderAttach" : "aeiou",
  "orderEmail" : "aeiou",
  "product6" : 123,
  "minority" : "aeiou",
  "product5" : 123,
  "product4" : 123,
  "sendQuantityType" : "aeiou",
  "product3" : 123,
  "shipVia" : 123,
  "inactive" : "aeiou",
  "terms" : "aeiou",
  "street" : "aeiou",
  "contact" : "aeiou",
  "id" : 123,
  "street2" : "aeiou",
  "state" : "aeiou",
  "fax" : "aeiou",
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "actualDays" : 123,
  "vendorNo" : 123,
  "sendOutside" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "podOrderSuffix" : 123,
  "salesTaxCode" : "aeiou",
  "externalId" : "aeiou",
  "chargeOut" : "aeiou",
  "podEmail" : "aeiou",
  "arEmail" : "aeiou",
  "phone" : "aeiou",
  "name" : "aeiou",
  "fob" : "aeiou",
  "podDays" : 123
}}]
     
     - parameter body: (body) Vendor to be inserted. 

     - returns: RequestBuilder<Vendor> 
     */
    public class func addVendorWithRequestBuilder(body body: Vendor) -> RequestBuilder<Vendor> {
        let path = "/beta/vendor"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Vendor>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new audit for a vendor
     
     - parameter vendorId: (path) Id of the vendor to add an audit to 
     - parameter vendorAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addVendorAudit(vendorId vendorId: Int, vendorAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addVendorAuditWithRequestBuilder(vendorId: vendorId, vendorAudit: vendorAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a vendor
     
     - PUT /beta/vendor/{vendorId}/audit/{vendorAudit}
     - Adds an audit to an existing vendor.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter vendorId: (path) Id of the vendor to add an audit to 
     - parameter vendorAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addVendorAuditWithRequestBuilder(vendorId vendorId: Int, vendorAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/vendor/{vendorId}/audit/{vendorAudit}"
        path = path.stringByReplacingOccurrencesOfString("{vendorId}", withString: "\(vendorId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{vendorAudit}", withString: "\(vendorAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a vendor.
     
     - parameter vendorId: (path) Id of the vendor to add a tag to 
     - parameter vendorTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addVendorTag(vendorId vendorId: Int, vendorTag: String, completion: ((error: ErrorType?) -> Void)) {
        addVendorTagWithRequestBuilder(vendorId: vendorId, vendorTag: vendorTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a vendor.
     
     - PUT /beta/vendor/{vendorId}/tag/{vendorTag}
     - Adds a tag to an existing vendor.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter vendorId: (path) Id of the vendor to add a tag to 
     - parameter vendorTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addVendorTagWithRequestBuilder(vendorId vendorId: Int, vendorTag: String) -> RequestBuilder<Void> {
        var path = "/beta/vendor/{vendorId}/tag/{vendorTag}"
        path = path.stringByReplacingOccurrencesOfString("{vendorId}", withString: "\(vendorId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{vendorTag}", withString: "\(vendorTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a vendor
     
     - parameter vendorId: (path) Id of the vendor to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteVendor(vendorId vendorId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteVendorWithRequestBuilder(vendorId: vendorId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a vendor
     
     - DELETE /beta/vendor/{vendorId}
     - Deletes the vendor identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter vendorId: (path) Id of the vendor to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteVendorWithRequestBuilder(vendorId vendorId: Int) -> RequestBuilder<Void> {
        var path = "/beta/vendor/{vendorId}"
        path = path.stringByReplacingOccurrencesOfString("{vendorId}", withString: "\(vendorId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a vendor.
     
     - parameter vendorId: (path) Id of the vendor to remove tag from 
     - parameter vendorTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteVendorTag(vendorId vendorId: Int, vendorTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteVendorTagWithRequestBuilder(vendorId: vendorId, vendorTag: vendorTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a vendor.
     
     - DELETE /beta/vendor/{vendorId}/tag/{vendorTag}
     - Deletes an existing vendor tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter vendorId: (path) Id of the vendor to remove tag from 
     - parameter vendorTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteVendorTagWithRequestBuilder(vendorId vendorId: Int, vendorTag: String) -> RequestBuilder<Void> {
        var path = "/beta/vendor/{vendorId}/tag/{vendorTag}"
        path = path.stringByReplacingOccurrencesOfString("{vendorId}", withString: "\(vendorId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{vendorTag}", withString: "\(vendorTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a vendor by id
     
     - parameter vendorId: (path) Id of the vendor to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateVendorById(vendorId vendorId: Int, completion: ((data: Vendor?, error: ErrorType?) -> Void)) {
        getDuplicateVendorByIdWithRequestBuilder(vendorId: vendorId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a vendor by id
     
     - GET /beta/vendor/duplicate/{vendorId}
     - Returns a duplicated vendor identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "country" : "aeiou",
  "zipCode" : "aeiou",
  "product9" : 123,
  "product8" : 123,
  "requestDays" : 123,
  "product7" : 123,
  "city" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "product2" : 123,
  "product1" : 123,
  "orderAttach" : "aeiou",
  "orderEmail" : "aeiou",
  "product6" : 123,
  "minority" : "aeiou",
  "product5" : 123,
  "product4" : 123,
  "sendQuantityType" : "aeiou",
  "product3" : 123,
  "shipVia" : 123,
  "inactive" : "aeiou",
  "terms" : "aeiou",
  "street" : "aeiou",
  "contact" : "aeiou",
  "id" : 123,
  "street2" : "aeiou",
  "state" : "aeiou",
  "fax" : "aeiou",
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "actualDays" : 123,
  "vendorNo" : 123,
  "sendOutside" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "podOrderSuffix" : 123,
  "salesTaxCode" : "aeiou",
  "externalId" : "aeiou",
  "chargeOut" : "aeiou",
  "podEmail" : "aeiou",
  "arEmail" : "aeiou",
  "phone" : "aeiou",
  "name" : "aeiou",
  "fob" : "aeiou",
  "podDays" : 123
}}]
     
     - parameter vendorId: (path) Id of the vendor to be duplicated. 

     - returns: RequestBuilder<Vendor> 
     */
    public class func getDuplicateVendorByIdWithRequestBuilder(vendorId vendorId: Int) -> RequestBuilder<Vendor> {
        var path = "/beta/vendor/duplicate/{vendorId}"
        path = path.stringByReplacingOccurrencesOfString("{vendorId}", withString: "\(vendorId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Vendor>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search vendors by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVendorByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [Vendor]?, error: ErrorType?) -> Void)) {
        getVendorByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search vendors by filter
     
     - GET /beta/vendor/search
     - Returns the list of vendors that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "country" : "aeiou",
  "zipCode" : "aeiou",
  "product9" : 123,
  "product8" : 123,
  "requestDays" : 123,
  "product7" : 123,
  "city" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "product2" : 123,
  "product1" : 123,
  "orderAttach" : "aeiou",
  "orderEmail" : "aeiou",
  "product6" : 123,
  "minority" : "aeiou",
  "product5" : 123,
  "product4" : 123,
  "sendQuantityType" : "aeiou",
  "product3" : 123,
  "shipVia" : 123,
  "inactive" : "aeiou",
  "terms" : "aeiou",
  "street" : "aeiou",
  "contact" : "aeiou",
  "id" : 123,
  "street2" : "aeiou",
  "state" : "aeiou",
  "fax" : "aeiou",
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "actualDays" : 123,
  "vendorNo" : 123,
  "sendOutside" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "podOrderSuffix" : 123,
  "salesTaxCode" : "aeiou",
  "externalId" : "aeiou",
  "chargeOut" : "aeiou",
  "podEmail" : "aeiou",
  "arEmail" : "aeiou",
  "phone" : "aeiou",
  "name" : "aeiou",
  "fob" : "aeiou",
  "podDays" : 123
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Vendor]> 
     */
    public class func getVendorByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[Vendor]> {
        let path = "/beta/vendor/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[Vendor]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a vendor by id
     
     - parameter vendorId: (path) Id of the vendor to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVendorById(vendorId vendorId: Int, completion: ((data: Vendor?, error: ErrorType?) -> Void)) {
        getVendorByIdWithRequestBuilder(vendorId: vendorId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a vendor by id
     
     - GET /beta/vendor/{vendorId}
     - Returns the vendor identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "country" : "aeiou",
  "zipCode" : "aeiou",
  "product9" : 123,
  "product8" : 123,
  "requestDays" : 123,
  "product7" : 123,
  "city" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "product2" : 123,
  "product1" : 123,
  "orderAttach" : "aeiou",
  "orderEmail" : "aeiou",
  "product6" : 123,
  "minority" : "aeiou",
  "product5" : 123,
  "product4" : 123,
  "sendQuantityType" : "aeiou",
  "product3" : 123,
  "shipVia" : 123,
  "inactive" : "aeiou",
  "terms" : "aeiou",
  "street" : "aeiou",
  "contact" : "aeiou",
  "id" : 123,
  "street2" : "aeiou",
  "state" : "aeiou",
  "fax" : "aeiou",
  "lobId" : 123,
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "actualDays" : 123,
  "vendorNo" : 123,
  "sendOutside" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "podOrderSuffix" : 123,
  "salesTaxCode" : "aeiou",
  "externalId" : "aeiou",
  "chargeOut" : "aeiou",
  "podEmail" : "aeiou",
  "arEmail" : "aeiou",
  "phone" : "aeiou",
  "name" : "aeiou",
  "fob" : "aeiou",
  "podDays" : 123
}}]
     
     - parameter vendorId: (path) Id of the vendor to be returned. 

     - returns: RequestBuilder<Vendor> 
     */
    public class func getVendorByIdWithRequestBuilder(vendorId vendorId: Int) -> RequestBuilder<Vendor> {
        var path = "/beta/vendor/{vendorId}"
        path = path.stringByReplacingOccurrencesOfString("{vendorId}", withString: "\(vendorId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Vendor>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a vendor.
     
     - parameter vendorId: (path) Id of the vendor to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVendorTags(vendorId vendorId: Int, completion: ((error: ErrorType?) -> Void)) {
        getVendorTagsWithRequestBuilder(vendorId: vendorId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a vendor.
     
     - GET /beta/vendor/{vendorId}/tag
     - Get all existing vendor tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter vendorId: (path) Id of the vendor to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getVendorTagsWithRequestBuilder(vendorId vendorId: Int) -> RequestBuilder<Void> {
        var path = "/beta/vendor/{vendorId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{vendorId}", withString: "\(vendorId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a vendor
     
     - parameter body: (body) Vendor to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateVendor(body body: Vendor, completion: ((error: ErrorType?) -> Void)) {
        updateVendorWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a vendor
     
     - PUT /beta/vendor
     - Updates an existing vendor using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Vendor to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateVendorWithRequestBuilder(body body: Vendor) -> RequestBuilder<Void> {
        let path = "/beta/vendor"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a vendor custom fields
     
     - parameter body: (body) Vendor to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateVendorCustomFields(body body: Vendor, completion: ((error: ErrorType?) -> Void)) {
        updateVendorCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a vendor custom fields
     
     - PUT /beta/vendor/customFields
     - Updates an existing vendor custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Vendor to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateVendorCustomFieldsWithRequestBuilder(body body: Vendor) -> RequestBuilder<Void> {
        let path = "/beta/vendor/customFields"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
