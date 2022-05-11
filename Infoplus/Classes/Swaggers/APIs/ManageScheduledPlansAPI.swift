//
// ManageScheduledPlansAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ManageScheduledPlansAPI: APIBase {
    /**
     Create a manageScheduledPlans
     
     - parameter body: (body) ManageScheduledPlans to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addManageScheduledPlans(body body: ManageScheduledPlans, completion: ((data: ManageScheduledPlans?, error: ErrorType?) -> Void)) {
        addManageScheduledPlansWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a manageScheduledPlans
     - POST /v3.0/manageScheduledPlans
     - Inserts a new manageScheduledPlans using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "scheduledplantypeid" : 6,
  "deleted" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "description" : "description",
  "active" : false,
  "planid" : 1,
  "id" : 0,
  "user" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) ManageScheduledPlans to be inserted. 

     - returns: RequestBuilder<ManageScheduledPlans> 
     */
    public class func addManageScheduledPlansWithRequestBuilder(body body: ManageScheduledPlans) -> RequestBuilder<ManageScheduledPlans> {
        let path = "/v3.0/manageScheduledPlans"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ManageScheduledPlans>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a manageScheduledPlans
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to add an audit to 
     - parameter manageScheduledPlansAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addManageScheduledPlansAudit(manageScheduledPlansId manageScheduledPlansId: Int32, manageScheduledPlansAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addManageScheduledPlansAuditWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId, manageScheduledPlansAudit: manageScheduledPlansAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a manageScheduledPlans
     - PUT /v3.0/manageScheduledPlans/{manageScheduledPlansId}/audit/{manageScheduledPlansAudit}
     - Adds an audit to an existing manageScheduledPlans.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to add an audit to 
     - parameter manageScheduledPlansAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addManageScheduledPlansAuditWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32, manageScheduledPlansAudit: String) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}/audit/{manageScheduledPlansAudit}"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansAudit}", withString: "\(manageScheduledPlansAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a manageScheduledPlans
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addManageScheduledPlansFile(manageScheduledPlansId manageScheduledPlansId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addManageScheduledPlansFileWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a manageScheduledPlans
     - POST /v3.0/manageScheduledPlans/{manageScheduledPlansId}/file/{fileName}
     - Adds a file to an existing manageScheduledPlans.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addManageScheduledPlansFileWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a manageScheduledPlans by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addManageScheduledPlansFileByURL(body body: RecordFile, manageScheduledPlansId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addManageScheduledPlansFileByURLWithRequestBuilder(body: body, manageScheduledPlansId: manageScheduledPlansId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a manageScheduledPlans by URL.
     - POST /v3.0/manageScheduledPlans/{manageScheduledPlansId}/file
     - Adds a file to an existing manageScheduledPlans by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addManageScheduledPlansFileByURLWithRequestBuilder(body body: RecordFile, manageScheduledPlansId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}/file"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a manageScheduledPlans.
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to add a tag to 
     - parameter manageScheduledPlansTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addManageScheduledPlansTag(manageScheduledPlansId manageScheduledPlansId: Int32, manageScheduledPlansTag: String, completion: ((error: ErrorType?) -> Void)) {
        addManageScheduledPlansTagWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId, manageScheduledPlansTag: manageScheduledPlansTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a manageScheduledPlans.
     - PUT /v3.0/manageScheduledPlans/{manageScheduledPlansId}/tag/{manageScheduledPlansTag}
     - Adds a tag to an existing manageScheduledPlans.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to add a tag to 
     - parameter manageScheduledPlansTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addManageScheduledPlansTagWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32, manageScheduledPlansTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}/tag/{manageScheduledPlansTag}"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansTag}", withString: "\(manageScheduledPlansTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a manageScheduledPlans
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteManageScheduledPlans(manageScheduledPlansId manageScheduledPlansId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteManageScheduledPlansWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a manageScheduledPlans
     - DELETE /v3.0/manageScheduledPlans/{manageScheduledPlansId}
     - Deletes the manageScheduledPlans identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteManageScheduledPlansWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a manageScheduledPlans.
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteManageScheduledPlansFile(manageScheduledPlansId manageScheduledPlansId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteManageScheduledPlansFileWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a manageScheduledPlans.
     - DELETE /v3.0/manageScheduledPlans/{manageScheduledPlansId}/file/{fileId}
     - Deletes an existing manageScheduledPlans file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteManageScheduledPlansFileWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a manageScheduledPlans.
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to remove tag from 
     - parameter manageScheduledPlansTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteManageScheduledPlansTag(manageScheduledPlansId manageScheduledPlansId: Int32, manageScheduledPlansTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteManageScheduledPlansTagWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId, manageScheduledPlansTag: manageScheduledPlansTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a manageScheduledPlans.
     - DELETE /v3.0/manageScheduledPlans/{manageScheduledPlansId}/tag/{manageScheduledPlansTag}
     - Deletes an existing manageScheduledPlans tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to remove tag from 
     - parameter manageScheduledPlansTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteManageScheduledPlansTagWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32, manageScheduledPlansTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}/tag/{manageScheduledPlansTag}"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansTag}", withString: "\(manageScheduledPlansTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a manageScheduledPlans by id
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateManageScheduledPlansById(manageScheduledPlansId manageScheduledPlansId: Int32, completion: ((data: ManageScheduledPlans?, error: ErrorType?) -> Void)) {
        getDuplicateManageScheduledPlansByIdWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a manageScheduledPlans by id
     - GET /v3.0/manageScheduledPlans/duplicate/{manageScheduledPlansId}
     - Returns a duplicated manageScheduledPlans identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "scheduledplantypeid" : 6,
  "deleted" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "description" : "description",
  "active" : false,
  "planid" : 1,
  "id" : 0,
  "user" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to be duplicated. 

     - returns: RequestBuilder<ManageScheduledPlans> 
     */
    public class func getDuplicateManageScheduledPlansByIdWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32) -> RequestBuilder<ManageScheduledPlans> {
        var path = "/v3.0/manageScheduledPlans/duplicate/{manageScheduledPlansId}"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ManageScheduledPlans>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search manageScheduledPlanses by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getManageScheduledPlansByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ManageScheduledPlans]?, error: ErrorType?) -> Void)) {
        getManageScheduledPlansByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search manageScheduledPlanses by filter
     - GET /v3.0/manageScheduledPlans/search
     - Returns the list of manageScheduledPlanses that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "scheduledplantypeid" : 6,
  "deleted" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "description" : "description",
  "active" : false,
  "planid" : 1,
  "id" : 0,
  "user" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "scheduledplantypeid" : 6,
  "deleted" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "description" : "description",
  "active" : false,
  "planid" : 1,
  "id" : 0,
  "user" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ManageScheduledPlans]> 
     */
    public class func getManageScheduledPlansByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ManageScheduledPlans]> {
        let path = "/v3.0/manageScheduledPlans/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ManageScheduledPlans]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a manageScheduledPlans by id
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getManageScheduledPlansById(manageScheduledPlansId manageScheduledPlansId: Int32, completion: ((data: ManageScheduledPlans?, error: ErrorType?) -> Void)) {
        getManageScheduledPlansByIdWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a manageScheduledPlans by id
     - GET /v3.0/manageScheduledPlans/{manageScheduledPlansId}
     - Returns the manageScheduledPlans identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "scheduledplantypeid" : 6,
  "deleted" : false,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "warehouseId" : 5,
  "customFields" : {
    "key" : "{}"
  },
  "description" : "description",
  "active" : false,
  "planid" : 1,
  "id" : 0,
  "user" : 5,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to be returned. 

     - returns: RequestBuilder<ManageScheduledPlans> 
     */
    public class func getManageScheduledPlansByIdWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32) -> RequestBuilder<ManageScheduledPlans> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ManageScheduledPlans>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a manageScheduledPlans.
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getManageScheduledPlansFiles(manageScheduledPlansId manageScheduledPlansId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getManageScheduledPlansFilesWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a manageScheduledPlans.
     - GET /v3.0/manageScheduledPlans/{manageScheduledPlansId}/file
     - Get all existing manageScheduledPlans files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getManageScheduledPlansFilesWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}/file"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a manageScheduledPlans.
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getManageScheduledPlansTags(manageScheduledPlansId manageScheduledPlansId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getManageScheduledPlansTagsWithRequestBuilder(manageScheduledPlansId: manageScheduledPlansId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a manageScheduledPlans.
     - GET /v3.0/manageScheduledPlans/{manageScheduledPlansId}/tag
     - Get all existing manageScheduledPlans tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter manageScheduledPlansId: (path) Id of the manageScheduledPlans to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getManageScheduledPlansTagsWithRequestBuilder(manageScheduledPlansId manageScheduledPlansId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/manageScheduledPlans/{manageScheduledPlansId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{manageScheduledPlansId}", withString: "\(manageScheduledPlansId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a manageScheduledPlans
     
     - parameter body: (body) ManageScheduledPlans to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateManageScheduledPlans(body body: ManageScheduledPlans, completion: ((error: ErrorType?) -> Void)) {
        updateManageScheduledPlansWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a manageScheduledPlans
     - PUT /v3.0/manageScheduledPlans
     - Updates an existing manageScheduledPlans using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ManageScheduledPlans to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateManageScheduledPlansWithRequestBuilder(body body: ManageScheduledPlans) -> RequestBuilder<Void> {
        let path = "/v3.0/manageScheduledPlans"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
