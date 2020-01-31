//
// CustomerInvoiceTemplateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CustomerInvoiceTemplateAPI: APIBase {
    /**
     Create a customerInvoiceTemplate
     
     - parameter body: (body) CustomerInvoiceTemplate to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomerInvoiceTemplate(body body: CustomerInvoiceTemplate, completion: ((data: CustomerInvoiceTemplate?, error: ErrorType?) -> Void)) {
        addCustomerInvoiceTemplateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a customerInvoiceTemplate
     - POST /beta/customerInvoiceTemplate
     - Inserts a new customerInvoiceTemplate using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6,
  "remitToStreet" : "remitToStreet",
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "billingPeriod" : "billingPeriod",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone"
}}]
     
     - parameter body: (body) CustomerInvoiceTemplate to be inserted. 

     - returns: RequestBuilder<CustomerInvoiceTemplate> 
     */
    public class func addCustomerInvoiceTemplateWithRequestBuilder(body body: CustomerInvoiceTemplate) -> RequestBuilder<CustomerInvoiceTemplate> {
        let path = "/beta/customerInvoiceTemplate"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CustomerInvoiceTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a customerInvoiceTemplate
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to add an audit to 
     - parameter customerInvoiceTemplateAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomerInvoiceTemplateAudit(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, customerInvoiceTemplateAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addCustomerInvoiceTemplateAuditWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId, customerInvoiceTemplateAudit: customerInvoiceTemplateAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a customerInvoiceTemplate
     - PUT /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/audit/{customerInvoiceTemplateAudit}
     - Adds an audit to an existing customerInvoiceTemplate.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to add an audit to 
     - parameter customerInvoiceTemplateAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCustomerInvoiceTemplateAuditWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, customerInvoiceTemplateAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/audit/{customerInvoiceTemplateAudit}"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateAudit}", withString: "\(customerInvoiceTemplateAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a customerInvoiceTemplate
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomerInvoiceTemplateFile(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addCustomerInvoiceTemplateFileWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a customerInvoiceTemplate
     - POST /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/file/{fileName}
     - Adds a file to an existing customerInvoiceTemplate.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addCustomerInvoiceTemplateFileWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a customerInvoiceTemplate by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomerInvoiceTemplateFileByURL(body body: RecordFile, customerInvoiceTemplateId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addCustomerInvoiceTemplateFileByURLWithRequestBuilder(body: body, customerInvoiceTemplateId: customerInvoiceTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a customerInvoiceTemplate by URL.
     - POST /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/file
     - Adds a file to an existing customerInvoiceTemplate by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addCustomerInvoiceTemplateFileByURLWithRequestBuilder(body body: RecordFile, customerInvoiceTemplateId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/file"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a customerInvoiceTemplate.
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to add a tag to 
     - parameter customerInvoiceTemplateTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomerInvoiceTemplateTag(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, customerInvoiceTemplateTag: String, completion: ((error: ErrorType?) -> Void)) {
        addCustomerInvoiceTemplateTagWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId, customerInvoiceTemplateTag: customerInvoiceTemplateTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a customerInvoiceTemplate.
     - PUT /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/tag/{customerInvoiceTemplateTag}
     - Adds a tag to an existing customerInvoiceTemplate.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to add a tag to 
     - parameter customerInvoiceTemplateTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCustomerInvoiceTemplateTagWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, customerInvoiceTemplateTag: String) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/tag/{customerInvoiceTemplateTag}"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateTag}", withString: "\(customerInvoiceTemplateTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a customerInvoiceTemplate
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCustomerInvoiceTemplate(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteCustomerInvoiceTemplateWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a customerInvoiceTemplate
     - DELETE /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}
     - Deletes the customerInvoiceTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCustomerInvoiceTemplateWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a customerInvoiceTemplate.
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCustomerInvoiceTemplateFile(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteCustomerInvoiceTemplateFileWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a customerInvoiceTemplate.
     - DELETE /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/file/{fileId}
     - Deletes an existing customerInvoiceTemplate file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCustomerInvoiceTemplateFileWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a customerInvoiceTemplate.
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to remove tag from 
     - parameter customerInvoiceTemplateTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCustomerInvoiceTemplateTag(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, customerInvoiceTemplateTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteCustomerInvoiceTemplateTagWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId, customerInvoiceTemplateTag: customerInvoiceTemplateTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a customerInvoiceTemplate.
     - DELETE /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/tag/{customerInvoiceTemplateTag}
     - Deletes an existing customerInvoiceTemplate tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to remove tag from 
     - parameter customerInvoiceTemplateTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCustomerInvoiceTemplateTagWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, customerInvoiceTemplateTag: String) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/tag/{customerInvoiceTemplateTag}"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateTag}", withString: "\(customerInvoiceTemplateTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search customerInvoiceTemplates by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCustomerInvoiceTemplateByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [CustomerInvoiceTemplate]?, error: ErrorType?) -> Void)) {
        getCustomerInvoiceTemplateByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search customerInvoiceTemplates by filter
     - GET /beta/customerInvoiceTemplate/search
     - Returns the list of customerInvoiceTemplates that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6,
  "remitToStreet" : "remitToStreet",
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "billingPeriod" : "billingPeriod",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone"
}, {
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6,
  "remitToStreet" : "remitToStreet",
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "billingPeriod" : "billingPeriod",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[CustomerInvoiceTemplate]> 
     */
    public class func getCustomerInvoiceTemplateByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[CustomerInvoiceTemplate]> {
        let path = "/beta/customerInvoiceTemplate/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CustomerInvoiceTemplate]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a customerInvoiceTemplate by id
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCustomerInvoiceTemplateById(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, completion: ((data: CustomerInvoiceTemplate?, error: ErrorType?) -> Void)) {
        getCustomerInvoiceTemplateByIdWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a customerInvoiceTemplate by id
     - GET /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}
     - Returns the customerInvoiceTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6,
  "remitToStreet" : "remitToStreet",
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "billingPeriod" : "billingPeriod",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone"
}}]
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to be returned. 

     - returns: RequestBuilder<CustomerInvoiceTemplate> 
     */
    public class func getCustomerInvoiceTemplateByIdWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32) -> RequestBuilder<CustomerInvoiceTemplate> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CustomerInvoiceTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a customerInvoiceTemplate.
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCustomerInvoiceTemplateFiles(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCustomerInvoiceTemplateFilesWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a customerInvoiceTemplate.
     - GET /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/file
     - Get all existing customerInvoiceTemplate files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCustomerInvoiceTemplateFilesWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/file"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a customerInvoiceTemplate.
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCustomerInvoiceTemplateTags(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getCustomerInvoiceTemplateTagsWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a customerInvoiceTemplate.
     - GET /beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/tag
     - Get all existing customerInvoiceTemplate tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCustomerInvoiceTemplateTagsWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/customerInvoiceTemplate/{customerInvoiceTemplateId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a customerInvoiceTemplate by id
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateCustomerInvoiceTemplateById(customerInvoiceTemplateId customerInvoiceTemplateId: Int32, completion: ((data: CustomerInvoiceTemplate?, error: ErrorType?) -> Void)) {
        getDuplicateCustomerInvoiceTemplateByIdWithRequestBuilder(customerInvoiceTemplateId: customerInvoiceTemplateId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a customerInvoiceTemplate by id
     - GET /beta/customerInvoiceTemplate/duplicate/{customerInvoiceTemplateId}
     - Returns a duplicated customerInvoiceTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "remitToStreet3" : "remitToStreet3",
  "remitToCountry" : "remitToCountry",
  "notes" : "notes",
  "customFields" : {
    "key" : "{}"
  },
  "billToCompany" : "billToCompany",
  "description" : "description",
  "billToState" : "billToState",
  "billToCity" : "billToCity",
  "billToZip" : "billToZip",
  "poNo" : "poNo",
  "terms" : "terms",
  "remitToCompany" : "remitToCompany",
  "id" : 0,
  "billToStreet" : "billToStreet",
  "remitToCity" : "remitToCity",
  "remitToStreet2" : "remitToStreet2",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 6,
  "remitToStreet" : "remitToStreet",
  "remitToState" : "remitToState",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "billToEmail" : "billToEmail",
  "billingPeriod" : "billingPeriod",
  "costCenter" : "costCenter",
  "remitToZip" : "remitToZip",
  "remitToPhone" : "remitToPhone",
  "billToStreet2" : "billToStreet2",
  "billToStreet3" : "billToStreet3",
  "remitToAttention" : "remitToAttention",
  "remitToEmail" : "remitToEmail",
  "specialInstructions" : "specialInstructions",
  "billToAttention" : "billToAttention",
  "billToCountry" : "billToCountry",
  "name" : "name",
  "billToPhone" : "billToPhone"
}}]
     
     - parameter customerInvoiceTemplateId: (path) Id of the customerInvoiceTemplate to be duplicated. 

     - returns: RequestBuilder<CustomerInvoiceTemplate> 
     */
    public class func getDuplicateCustomerInvoiceTemplateByIdWithRequestBuilder(customerInvoiceTemplateId customerInvoiceTemplateId: Int32) -> RequestBuilder<CustomerInvoiceTemplate> {
        var path = "/beta/customerInvoiceTemplate/duplicate/{customerInvoiceTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{customerInvoiceTemplateId}", withString: "\(customerInvoiceTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CustomerInvoiceTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a customerInvoiceTemplate
     
     - parameter body: (body) CustomerInvoiceTemplate to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCustomerInvoiceTemplate(body body: CustomerInvoiceTemplate, completion: ((error: ErrorType?) -> Void)) {
        updateCustomerInvoiceTemplateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a customerInvoiceTemplate
     - PUT /beta/customerInvoiceTemplate
     - Updates an existing customerInvoiceTemplate using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) CustomerInvoiceTemplate to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateCustomerInvoiceTemplateWithRequestBuilder(body body: CustomerInvoiceTemplate) -> RequestBuilder<Void> {
        let path = "/beta/customerInvoiceTemplate"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
