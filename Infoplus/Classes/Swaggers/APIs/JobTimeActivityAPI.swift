//
// JobTimeActivityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class JobTimeActivityAPI: APIBase {
    /**
     Create a jobTimeActivity
     
     - parameter body: (body) JobTimeActivity to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTimeActivity(body body: JobTimeActivity, completion: ((data: JobTimeActivity?, error: ErrorType?) -> Void)) {
        addJobTimeActivityWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a jobTimeActivity
     - POST /beta/jobTimeActivity
     - Inserts a new jobTimeActivity using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "jobTypeName" : "jobTypeName",
  "customFields" : {
    "key" : "{}"
  },
  "importedId" : 6,
  "userId" : 5,
  "secondDuration" : 1,
  "billingQuantity" : 7.061401241503109105224211816675961017608642578125,
  "chargeRate" : 9.301444243932575517419536481611430644989013671875,
  "id" : 0,
  "jobTypeId" : 2,
  "extendedCharge" : 3.61607674925191080461672754609026014804840087890625,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
}}]
     
     - parameter body: (body) JobTimeActivity to be inserted. 

     - returns: RequestBuilder<JobTimeActivity> 
     */
    public class func addJobTimeActivityWithRequestBuilder(body body: JobTimeActivity) -> RequestBuilder<JobTimeActivity> {
        let path = "/beta/jobTimeActivity"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<JobTimeActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a jobTimeActivity
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to add an audit to 
     - parameter jobTimeActivityAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTimeActivityAudit(jobTimeActivityId jobTimeActivityId: Int32, jobTimeActivityAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addJobTimeActivityAuditWithRequestBuilder(jobTimeActivityId: jobTimeActivityId, jobTimeActivityAudit: jobTimeActivityAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a jobTimeActivity
     - PUT /beta/jobTimeActivity/{jobTimeActivityId}/audit/{jobTimeActivityAudit}
     - Adds an audit to an existing jobTimeActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to add an audit to 
     - parameter jobTimeActivityAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobTimeActivityAuditWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32, jobTimeActivityAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}/audit/{jobTimeActivityAudit}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityAudit}", withString: "\(jobTimeActivityAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a jobTimeActivity
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTimeActivityFile(jobTimeActivityId jobTimeActivityId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addJobTimeActivityFileWithRequestBuilder(jobTimeActivityId: jobTimeActivityId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a jobTimeActivity
     - POST /beta/jobTimeActivity/{jobTimeActivityId}/file/{fileName}
     - Adds a file to an existing jobTimeActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobTimeActivityFileWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a jobTimeActivity by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTimeActivityFileByURL(body body: RecordFile, jobTimeActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addJobTimeActivityFileByURLWithRequestBuilder(body: body, jobTimeActivityId: jobTimeActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a jobTimeActivity by URL.
     - POST /beta/jobTimeActivity/{jobTimeActivityId}/file
     - Adds a file to an existing jobTimeActivity by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobTimeActivityFileByURLWithRequestBuilder(body body: RecordFile, jobTimeActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}/file"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a jobTimeActivity.
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to add a tag to 
     - parameter jobTimeActivityTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobTimeActivityTag(jobTimeActivityId jobTimeActivityId: Int32, jobTimeActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        addJobTimeActivityTagWithRequestBuilder(jobTimeActivityId: jobTimeActivityId, jobTimeActivityTag: jobTimeActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a jobTimeActivity.
     - PUT /beta/jobTimeActivity/{jobTimeActivityId}/tag/{jobTimeActivityTag}
     - Adds a tag to an existing jobTimeActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to add a tag to 
     - parameter jobTimeActivityTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addJobTimeActivityTagWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32, jobTimeActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}/tag/{jobTimeActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityTag}", withString: "\(jobTimeActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a jobTimeActivity
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteJobTimeActivity(jobTimeActivityId jobTimeActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteJobTimeActivityWithRequestBuilder(jobTimeActivityId: jobTimeActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a jobTimeActivity
     - DELETE /beta/jobTimeActivity/{jobTimeActivityId}
     - Deletes the jobTimeActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteJobTimeActivityWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for a jobTimeActivity.
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteJobTimeActivityFile(jobTimeActivityId jobTimeActivityId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteJobTimeActivityFileWithRequestBuilder(jobTimeActivityId: jobTimeActivityId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for a jobTimeActivity.
     - DELETE /beta/jobTimeActivity/{jobTimeActivityId}/file/{fileId}
     - Deletes an existing jobTimeActivity file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteJobTimeActivityFileWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a jobTimeActivity.
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to remove tag from 
     - parameter jobTimeActivityTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteJobTimeActivityTag(jobTimeActivityId jobTimeActivityId: Int32, jobTimeActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteJobTimeActivityTagWithRequestBuilder(jobTimeActivityId: jobTimeActivityId, jobTimeActivityTag: jobTimeActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a jobTimeActivity.
     - DELETE /beta/jobTimeActivity/{jobTimeActivityId}/tag/{jobTimeActivityTag}
     - Deletes an existing jobTimeActivity tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to remove tag from 
     - parameter jobTimeActivityTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteJobTimeActivityTagWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32, jobTimeActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}/tag/{jobTimeActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityTag}", withString: "\(jobTimeActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a jobTimeActivity by id
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateJobTimeActivityById(jobTimeActivityId jobTimeActivityId: Int32, completion: ((data: JobTimeActivity?, error: ErrorType?) -> Void)) {
        getDuplicateJobTimeActivityByIdWithRequestBuilder(jobTimeActivityId: jobTimeActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a jobTimeActivity by id
     - GET /beta/jobTimeActivity/duplicate/{jobTimeActivityId}
     - Returns a duplicated jobTimeActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "jobTypeName" : "jobTypeName",
  "customFields" : {
    "key" : "{}"
  },
  "importedId" : 6,
  "userId" : 5,
  "secondDuration" : 1,
  "billingQuantity" : 7.061401241503109105224211816675961017608642578125,
  "chargeRate" : 9.301444243932575517419536481611430644989013671875,
  "id" : 0,
  "jobTypeId" : 2,
  "extendedCharge" : 3.61607674925191080461672754609026014804840087890625,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
}}]
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to be duplicated. 

     - returns: RequestBuilder<JobTimeActivity> 
     */
    public class func getDuplicateJobTimeActivityByIdWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32) -> RequestBuilder<JobTimeActivity> {
        var path = "/beta/jobTimeActivity/duplicate/{jobTimeActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<JobTimeActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search jobTimeActivitys by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTimeActivityByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [JobTimeActivity]?, error: ErrorType?) -> Void)) {
        getJobTimeActivityByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search jobTimeActivitys by filter
     - GET /beta/jobTimeActivity/search
     - Returns the list of jobTimeActivitys that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "jobTypeName" : "jobTypeName",
  "customFields" : {
    "key" : "{}"
  },
  "importedId" : 6,
  "userId" : 5,
  "secondDuration" : 1,
  "billingQuantity" : 7.061401241503109105224211816675961017608642578125,
  "chargeRate" : 9.301444243932575517419536481611430644989013671875,
  "id" : 0,
  "jobTypeId" : 2,
  "extendedCharge" : 3.61607674925191080461672754609026014804840087890625,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
}, {
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "jobTypeName" : "jobTypeName",
  "customFields" : {
    "key" : "{}"
  },
  "importedId" : 6,
  "userId" : 5,
  "secondDuration" : 1,
  "billingQuantity" : 7.061401241503109105224211816675961017608642578125,
  "chargeRate" : 9.301444243932575517419536481611430644989013671875,
  "id" : 0,
  "jobTypeId" : 2,
  "extendedCharge" : 3.61607674925191080461672754609026014804840087890625,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[JobTimeActivity]> 
     */
    public class func getJobTimeActivityByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[JobTimeActivity]> {
        let path = "/beta/jobTimeActivity/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[JobTimeActivity]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a jobTimeActivity by id
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTimeActivityById(jobTimeActivityId jobTimeActivityId: Int32, completion: ((data: JobTimeActivity?, error: ErrorType?) -> Void)) {
        getJobTimeActivityByIdWithRequestBuilder(jobTimeActivityId: jobTimeActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a jobTimeActivity by id
     - GET /beta/jobTimeActivity/{jobTimeActivityId}
     - Returns the jobTimeActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "date" : "2000-01-23T04:56:07.000+00:00",
  "note" : "note",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "jobTypeName" : "jobTypeName",
  "customFields" : {
    "key" : "{}"
  },
  "importedId" : 6,
  "userId" : 5,
  "secondDuration" : 1,
  "billingQuantity" : 7.061401241503109105224211816675961017608642578125,
  "chargeRate" : 9.301444243932575517419536481611430644989013671875,
  "id" : 0,
  "jobTypeId" : 2,
  "extendedCharge" : 3.61607674925191080461672754609026014804840087890625,
  "email" : "email",
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 5
}}]
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to be returned. 

     - returns: RequestBuilder<JobTimeActivity> 
     */
    public class func getJobTimeActivityByIdWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32) -> RequestBuilder<JobTimeActivity> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<JobTimeActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for a jobTimeActivity.
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTimeActivityFiles(jobTimeActivityId jobTimeActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getJobTimeActivityFilesWithRequestBuilder(jobTimeActivityId: jobTimeActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for a jobTimeActivity.
     - GET /beta/jobTimeActivity/{jobTimeActivityId}/file
     - Get all existing jobTimeActivity files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getJobTimeActivityFilesWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}/file"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a jobTimeActivity.
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTimeActivityTags(jobTimeActivityId jobTimeActivityId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getJobTimeActivityTagsWithRequestBuilder(jobTimeActivityId: jobTimeActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a jobTimeActivity.
     - GET /beta/jobTimeActivity/{jobTimeActivityId}/tag
     - Get all existing jobTimeActivity tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTimeActivityId: (path) Id of the jobTimeActivity to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getJobTimeActivityTagsWithRequestBuilder(jobTimeActivityId jobTimeActivityId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/jobTimeActivity/{jobTimeActivityId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{jobTimeActivityId}", withString: "\(jobTimeActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a jobTimeActivity
     
     - parameter body: (body) JobTimeActivity to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateJobTimeActivity(body body: JobTimeActivity, completion: ((error: ErrorType?) -> Void)) {
        updateJobTimeActivityWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a jobTimeActivity
     - PUT /beta/jobTimeActivity
     - Updates an existing jobTimeActivity using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) JobTimeActivity to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateJobTimeActivityWithRequestBuilder(body body: JobTimeActivity) -> RequestBuilder<Void> {
        let path = "/beta/jobTimeActivity"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
