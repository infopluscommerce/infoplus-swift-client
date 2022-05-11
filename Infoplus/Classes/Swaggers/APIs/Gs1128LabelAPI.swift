//
// Gs1128LabelAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Gs1128LabelAPI: APIBase {
    /**
     Add new audit for a gs1128Label
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to add an audit to 
     - parameter gs1128LabelAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addGs1128LabelAudit(gs1128LabelId gs1128LabelId: Int32, gs1128LabelAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addGs1128LabelAuditWithRequestBuilder(gs1128LabelId: gs1128LabelId, gs1128LabelAudit: gs1128LabelAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a gs1128Label
     - PUT /v3.0/gs1128Label/{gs1128LabelId}/audit/{gs1128LabelAudit}
     - Adds an audit to an existing gs1128Label.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to add an audit to 
     - parameter gs1128LabelAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addGs1128LabelAuditWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32, gs1128LabelAudit: String) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}/audit/{gs1128LabelAudit}"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelAudit}", withString: "\(gs1128LabelAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a gs1128Label
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addGs1128LabelFile(gs1128LabelId gs1128LabelId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addGs1128LabelFileWithRequestBuilder(gs1128LabelId: gs1128LabelId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a gs1128Label
     - POST /v3.0/gs1128Label/{gs1128LabelId}/file/{fileName}
     - Adds a file to an existing gs1128Label.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addGs1128LabelFileWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a gs1128Label by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter gs1128LabelId: (path) Id of the gs1128Label to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addGs1128LabelFileByURL(body body: RecordFile, gs1128LabelId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addGs1128LabelFileByURLWithRequestBuilder(body: body, gs1128LabelId: gs1128LabelId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a gs1128Label by URL.
     - POST /v3.0/gs1128Label/{gs1128LabelId}/file
     - Adds a file to an existing gs1128Label by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter gs1128LabelId: (path) Id of the gs1128Label to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addGs1128LabelFileByURLWithRequestBuilder(body body: RecordFile, gs1128LabelId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}/file"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a gs1128Label.
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to add a tag to 
     - parameter gs1128LabelTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addGs1128LabelTag(gs1128LabelId gs1128LabelId: Int32, gs1128LabelTag: String, completion: ((error: ErrorType?) -> Void)) {
        addGs1128LabelTagWithRequestBuilder(gs1128LabelId: gs1128LabelId, gs1128LabelTag: gs1128LabelTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a gs1128Label.
     - PUT /v3.0/gs1128Label/{gs1128LabelId}/tag/{gs1128LabelTag}
     - Adds a tag to an existing gs1128Label.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to add a tag to 
     - parameter gs1128LabelTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addGs1128LabelTagWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32, gs1128LabelTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}/tag/{gs1128LabelTag}"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelTag}", withString: "\(gs1128LabelTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a gs1128Label
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteGs1128Label(gs1128LabelId gs1128LabelId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteGs1128LabelWithRequestBuilder(gs1128LabelId: gs1128LabelId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a gs1128Label
     - DELETE /v3.0/gs1128Label/{gs1128LabelId}
     - Deletes the gs1128Label identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteGs1128LabelWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a gs1128Label.
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteGs1128LabelFile(gs1128LabelId gs1128LabelId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteGs1128LabelFileWithRequestBuilder(gs1128LabelId: gs1128LabelId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a gs1128Label.
     - DELETE /v3.0/gs1128Label/{gs1128LabelId}/file/{fileId}
     - Deletes an existing gs1128Label file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteGs1128LabelFileWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a gs1128Label.
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to remove tag from 
     - parameter gs1128LabelTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteGs1128LabelTag(gs1128LabelId gs1128LabelId: Int32, gs1128LabelTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteGs1128LabelTagWithRequestBuilder(gs1128LabelId: gs1128LabelId, gs1128LabelTag: gs1128LabelTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a gs1128Label.
     - DELETE /v3.0/gs1128Label/{gs1128LabelId}/tag/{gs1128LabelTag}
     - Deletes an existing gs1128Label tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to remove tag from 
     - parameter gs1128LabelTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteGs1128LabelTagWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32, gs1128LabelTag: String) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}/tag/{gs1128LabelTag}"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelTag}", withString: "\(gs1128LabelTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a gs1128Label by id
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateGs1128LabelById(gs1128LabelId gs1128LabelId: Int32, completion: ((data: GS1128Label?, error: ErrorType?) -> Void)) {
        getDuplicateGs1128LabelByIdWithRequestBuilder(gs1128LabelId: gs1128LabelId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a gs1128Label by id
     - GET /v3.0/gs1128Label/duplicate/{gs1128LabelId}
     - Returns a duplicated gs1128Label identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "customFields" : {
    "key" : "{}"
  },
  "gs1128TemplateId" : 6,
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to be duplicated. 

     - returns: RequestBuilder<GS1128Label> 
     */
    public class func getDuplicateGs1128LabelByIdWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32) -> RequestBuilder<GS1128Label> {
        var path = "/v3.0/gs1128Label/duplicate/{gs1128LabelId}"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<GS1128Label>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search gs1128Labels by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getGs1128LabelByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [GS1128Label]?, error: ErrorType?) -> Void)) {
        getGs1128LabelByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search gs1128Labels by filter
     - GET /v3.0/gs1128Label/search
     - Returns the list of gs1128Labels that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "customFields" : {
    "key" : "{}"
  },
  "gs1128TemplateId" : 6,
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "customFields" : {
    "key" : "{}"
  },
  "gs1128TemplateId" : 6,
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[GS1128Label]> 
     */
    public class func getGs1128LabelByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[GS1128Label]> {
        let path = "/v3.0/gs1128Label/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[GS1128Label]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a gs1128Label by id
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getGs1128LabelById(gs1128LabelId gs1128LabelId: Int32, completion: ((data: GS1128Label?, error: ErrorType?) -> Void)) {
        getGs1128LabelByIdWithRequestBuilder(gs1128LabelId: gs1128LabelId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a gs1128Label by id
     - GET /v3.0/gs1128Label/{gs1128LabelId}
     - Returns the gs1128Label identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "customFields" : {
    "key" : "{}"
  },
  "gs1128TemplateId" : 6,
  "id" : 0,
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to be returned. 

     - returns: RequestBuilder<GS1128Label> 
     */
    public class func getGs1128LabelByIdWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32) -> RequestBuilder<GS1128Label> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<GS1128Label>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a gs1128Label.
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getGs1128LabelFiles(gs1128LabelId gs1128LabelId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getGs1128LabelFilesWithRequestBuilder(gs1128LabelId: gs1128LabelId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a gs1128Label.
     - GET /v3.0/gs1128Label/{gs1128LabelId}/file
     - Get all existing gs1128Label files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getGs1128LabelFilesWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}/file"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a gs1128Label.
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getGs1128LabelTags(gs1128LabelId gs1128LabelId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getGs1128LabelTagsWithRequestBuilder(gs1128LabelId: gs1128LabelId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a gs1128Label.
     - GET /v3.0/gs1128Label/{gs1128LabelId}/tag
     - Get all existing gs1128Label tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter gs1128LabelId: (path) Id of the gs1128Label to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getGs1128LabelTagsWithRequestBuilder(gs1128LabelId gs1128LabelId: Int32) -> RequestBuilder<Void> {
        var path = "/v3.0/gs1128Label/{gs1128LabelId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{gs1128LabelId}", withString: "\(gs1128LabelId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a gs1128Label custom fields
     
     - parameter body: (body) Gs1128Label to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateGs1128LabelCustomFields(body body: GS1128Label, completion: ((error: ErrorType?) -> Void)) {
        updateGs1128LabelCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a gs1128Label custom fields
     - PUT /v3.0/gs1128Label/customFields
     - Updates an existing gs1128Label custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Gs1128Label to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateGs1128LabelCustomFieldsWithRequestBuilder(body body: GS1128Label) -> RequestBuilder<Void> {
        let path = "/v3.0/gs1128Label/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
