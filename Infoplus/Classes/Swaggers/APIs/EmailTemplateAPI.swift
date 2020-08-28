//
// EmailTemplateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class EmailTemplateAPI: APIBase {
    /**
     Create an emailTemplate
     
     - parameter body: (body) EmailTemplate to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addEmailTemplate(body body: EmailTemplate, completion: ((data: EmailTemplate?, error: ErrorType?) -> Void)) {
        addEmailTemplateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an emailTemplate
     - POST /beta/emailTemplate
     - Inserts a new emailTemplate using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "subject" : "subject",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "sendToBillTo" : false,
  "bccAddress" : "bccAddress",
  "toAddress" : "toAddress",
  "ccAddress" : "ccAddress",
  "sendToShipTo" : false,
  "emailTemplateType" : "emailTemplateType",
  "scriptId" : 1,
  "apiVersion" : "apiVersion",
  "toName" : "toName",
  "name" : "name",
  "fromName" : "fromName",
  "fromAddress" : "fromAddress",
  "id" : 0,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) EmailTemplate to be inserted. 

     - returns: RequestBuilder<EmailTemplate> 
     */
    public class func addEmailTemplateWithRequestBuilder(body body: EmailTemplate) -> RequestBuilder<EmailTemplate> {
        let path = "/beta/emailTemplate"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<EmailTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an emailTemplate
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to add an audit to 
     - parameter emailTemplateAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addEmailTemplateAudit(emailTemplateId emailTemplateId: Int32, emailTemplateAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addEmailTemplateAuditWithRequestBuilder(emailTemplateId: emailTemplateId, emailTemplateAudit: emailTemplateAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an emailTemplate
     - PUT /beta/emailTemplate/{emailTemplateId}/audit/{emailTemplateAudit}
     - Adds an audit to an existing emailTemplate.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to add an audit to 
     - parameter emailTemplateAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addEmailTemplateAuditWithRequestBuilder(emailTemplateId emailTemplateId: Int32, emailTemplateAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}/audit/{emailTemplateAudit}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateAudit}", withString: "\(emailTemplateAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an emailTemplate
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addEmailTemplateFile(emailTemplateId emailTemplateId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addEmailTemplateFileWithRequestBuilder(emailTemplateId: emailTemplateId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an emailTemplate
     - POST /beta/emailTemplate/{emailTemplateId}/file/{fileName}
     - Adds a file to an existing emailTemplate.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addEmailTemplateFileWithRequestBuilder(emailTemplateId emailTemplateId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an emailTemplate by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter emailTemplateId: (path) Id of the emailTemplate to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addEmailTemplateFileByURL(body body: RecordFile, emailTemplateId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addEmailTemplateFileByURLWithRequestBuilder(body: body, emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an emailTemplate by URL.
     - POST /beta/emailTemplate/{emailTemplateId}/file
     - Adds a file to an existing emailTemplate by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter emailTemplateId: (path) Id of the emailTemplate to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addEmailTemplateFileByURLWithRequestBuilder(body body: RecordFile, emailTemplateId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}/file"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an emailTemplate.
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to add a tag to 
     - parameter emailTemplateTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addEmailTemplateTag(emailTemplateId emailTemplateId: Int32, emailTemplateTag: String, completion: ((error: ErrorType?) -> Void)) {
        addEmailTemplateTagWithRequestBuilder(emailTemplateId: emailTemplateId, emailTemplateTag: emailTemplateTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an emailTemplate.
     - PUT /beta/emailTemplate/{emailTemplateId}/tag/{emailTemplateTag}
     - Adds a tag to an existing emailTemplate.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to add a tag to 
     - parameter emailTemplateTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addEmailTemplateTagWithRequestBuilder(emailTemplateId emailTemplateId: Int32, emailTemplateTag: String) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}/tag/{emailTemplateTag}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateTag}", withString: "\(emailTemplateTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an emailTemplate
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteEmailTemplate(emailTemplateId emailTemplateId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteEmailTemplateWithRequestBuilder(emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an emailTemplate
     - DELETE /beta/emailTemplate/{emailTemplateId}
     - Deletes the emailTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteEmailTemplateWithRequestBuilder(emailTemplateId emailTemplateId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for an emailTemplate.
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteEmailTemplateFile(emailTemplateId emailTemplateId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteEmailTemplateFileWithRequestBuilder(emailTemplateId: emailTemplateId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for an emailTemplate.
     - DELETE /beta/emailTemplate/{emailTemplateId}/file/{fileId}
     - Deletes an existing emailTemplate file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteEmailTemplateFileWithRequestBuilder(emailTemplateId emailTemplateId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an emailTemplate.
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to remove tag from 
     - parameter emailTemplateTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteEmailTemplateTag(emailTemplateId emailTemplateId: Int32, emailTemplateTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteEmailTemplateTagWithRequestBuilder(emailTemplateId: emailTemplateId, emailTemplateTag: emailTemplateTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an emailTemplate.
     - DELETE /beta/emailTemplate/{emailTemplateId}/tag/{emailTemplateTag}
     - Deletes an existing emailTemplate tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to remove tag from 
     - parameter emailTemplateTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteEmailTemplateTagWithRequestBuilder(emailTemplateId emailTemplateId: Int32, emailTemplateTag: String) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}/tag/{emailTemplateTag}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateTag}", withString: "\(emailTemplateTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an emailTemplate by id
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateEmailTemplateById(emailTemplateId emailTemplateId: Int32, completion: ((data: EmailTemplate?, error: ErrorType?) -> Void)) {
        getDuplicateEmailTemplateByIdWithRequestBuilder(emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an emailTemplate by id
     - GET /beta/emailTemplate/duplicate/{emailTemplateId}
     - Returns a duplicated emailTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "subject" : "subject",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "sendToBillTo" : false,
  "bccAddress" : "bccAddress",
  "toAddress" : "toAddress",
  "ccAddress" : "ccAddress",
  "sendToShipTo" : false,
  "emailTemplateType" : "emailTemplateType",
  "scriptId" : 1,
  "apiVersion" : "apiVersion",
  "toName" : "toName",
  "name" : "name",
  "fromName" : "fromName",
  "fromAddress" : "fromAddress",
  "id" : 0,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be duplicated. 

     - returns: RequestBuilder<EmailTemplate> 
     */
    public class func getDuplicateEmailTemplateByIdWithRequestBuilder(emailTemplateId emailTemplateId: Int32) -> RequestBuilder<EmailTemplate> {
        var path = "/beta/emailTemplate/duplicate/{emailTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<EmailTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search emailTemplates by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getEmailTemplateByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [EmailTemplate]?, error: ErrorType?) -> Void)) {
        getEmailTemplateByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search emailTemplates by filter
     - GET /beta/emailTemplate/search
     - Returns the list of emailTemplates that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "subject" : "subject",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "sendToBillTo" : false,
  "bccAddress" : "bccAddress",
  "toAddress" : "toAddress",
  "ccAddress" : "ccAddress",
  "sendToShipTo" : false,
  "emailTemplateType" : "emailTemplateType",
  "scriptId" : 1,
  "apiVersion" : "apiVersion",
  "toName" : "toName",
  "name" : "name",
  "fromName" : "fromName",
  "fromAddress" : "fromAddress",
  "id" : 0,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "subject" : "subject",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "sendToBillTo" : false,
  "bccAddress" : "bccAddress",
  "toAddress" : "toAddress",
  "ccAddress" : "ccAddress",
  "sendToShipTo" : false,
  "emailTemplateType" : "emailTemplateType",
  "scriptId" : 1,
  "apiVersion" : "apiVersion",
  "toName" : "toName",
  "name" : "name",
  "fromName" : "fromName",
  "fromAddress" : "fromAddress",
  "id" : 0,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[EmailTemplate]> 
     */
    public class func getEmailTemplateByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[EmailTemplate]> {
        let path = "/beta/emailTemplate/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[EmailTemplate]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an emailTemplate by id
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getEmailTemplateById(emailTemplateId emailTemplateId: Int32, completion: ((data: EmailTemplate?, error: ErrorType?) -> Void)) {
        getEmailTemplateByIdWithRequestBuilder(emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an emailTemplate by id
     - GET /beta/emailTemplate/{emailTemplateId}
     - Returns the emailTemplate identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "subject" : "subject",
  "recordType" : "recordType",
  "customFields" : {
    "key" : "{}"
  },
  "sendToBillTo" : false,
  "bccAddress" : "bccAddress",
  "toAddress" : "toAddress",
  "ccAddress" : "ccAddress",
  "sendToShipTo" : false,
  "emailTemplateType" : "emailTemplateType",
  "scriptId" : 1,
  "apiVersion" : "apiVersion",
  "toName" : "toName",
  "name" : "name",
  "fromName" : "fromName",
  "fromAddress" : "fromAddress",
  "id" : 0,
  "lobId" : 6,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to be returned. 

     - returns: RequestBuilder<EmailTemplate> 
     */
    public class func getEmailTemplateByIdWithRequestBuilder(emailTemplateId emailTemplateId: Int32) -> RequestBuilder<EmailTemplate> {
        var path = "/beta/emailTemplate/{emailTemplateId}"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<EmailTemplate>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for an emailTemplate.
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getEmailTemplateFiles(emailTemplateId emailTemplateId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getEmailTemplateFilesWithRequestBuilder(emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for an emailTemplate.
     - GET /beta/emailTemplate/{emailTemplateId}/file
     - Get all existing emailTemplate files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getEmailTemplateFilesWithRequestBuilder(emailTemplateId emailTemplateId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}/file"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an emailTemplate.
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getEmailTemplateTags(emailTemplateId emailTemplateId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getEmailTemplateTagsWithRequestBuilder(emailTemplateId: emailTemplateId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an emailTemplate.
     - GET /beta/emailTemplate/{emailTemplateId}/tag
     - Get all existing emailTemplate tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter emailTemplateId: (path) Id of the emailTemplate to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getEmailTemplateTagsWithRequestBuilder(emailTemplateId emailTemplateId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/emailTemplate/{emailTemplateId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{emailTemplateId}", withString: "\(emailTemplateId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an emailTemplate
     
     - parameter body: (body) EmailTemplate to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateEmailTemplate(body body: EmailTemplate, completion: ((error: ErrorType?) -> Void)) {
        updateEmailTemplateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an emailTemplate
     - PUT /beta/emailTemplate
     - Updates an existing emailTemplate using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) EmailTemplate to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateEmailTemplateWithRequestBuilder(body body: EmailTemplate) -> RequestBuilder<Void> {
        let path = "/beta/emailTemplate"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an emailTemplate custom fields
     
     - parameter body: (body) EmailTemplate to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateEmailTemplateCustomFields(body body: EmailTemplate, completion: ((error: ErrorType?) -> Void)) {
        updateEmailTemplateCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an emailTemplate custom fields
     - PUT /beta/emailTemplate/customFields
     - Updates an existing emailTemplate custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) EmailTemplate to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateEmailTemplateCustomFieldsWithRequestBuilder(body body: EmailTemplate) -> RequestBuilder<Void> {
        let path = "/beta/emailTemplate/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
