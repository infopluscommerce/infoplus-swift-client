//
// JobTypeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class JobTypeAPI: APIBase {
    /**
     
     Create a jobType
     
     - parameter body: (body) JobType to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addJobType(body body: JobType, completion: ((data: JobType?, error: ErrorType?) -> Void)) {
        addJobTypeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a jobType
     
     - POST /v1.0/jobType
     - Inserts a new jobType using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "description" : "aeiou",
  "jobCode" : "aeiou",
  "id" : 123,
  "isActive" : true,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) JobType to be inserted. 

     - returns: RequestBuilder<JobType> 
     */
    public class func addJobTypeWithRequestBuilder(body body: JobType) -> RequestBuilder<JobType> {
        let path = "/v1.0/jobType"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<JobType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a jobType
     
     - parameter jobTypeId: (path) Id of the jobType to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteJobType(jobTypeId jobTypeId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteJobTypeWithRequestBuilder(jobTypeId: jobTypeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a jobType
     
     - DELETE /v1.0/jobType/{jobTypeId}
     - Deletes the jobType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter jobTypeId: (path) Id of the jobType to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteJobTypeWithRequestBuilder(jobTypeId jobTypeId: Int) -> RequestBuilder<Void> {
        var path = "/v1.0/jobType/{jobTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTypeId}", withString: "\(jobTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search jobTypes by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTypeByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [JobType]?, error: ErrorType?) -> Void)) {
        getJobTypeByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search jobTypes by filter
     
     - GET /v1.0/jobType/search
     - Returns the list of jobTypes that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "clientId" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "description" : "aeiou",
  "jobCode" : "aeiou",
  "id" : 123,
  "isActive" : true,
  "createDate" : "2000-01-23T04:56:07.000+0000"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[JobType]> 
     */
    public class func getJobTypeByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[JobType]> {
        let path = "/v1.0/jobType/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[JobType]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a jobType by id
     
     - parameter jobTypeId: (path) Id of the jobType to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJobTypeById(jobTypeId jobTypeId: Int, completion: ((data: JobType?, error: ErrorType?) -> Void)) {
        getJobTypeByIdWithRequestBuilder(jobTypeId: jobTypeId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a jobType by id
     
     - GET /v1.0/jobType/{jobTypeId}
     - Returns the jobType identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "clientId" : 123,
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "name" : "aeiou",
  "description" : "aeiou",
  "jobCode" : "aeiou",
  "id" : 123,
  "isActive" : true,
  "createDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter jobTypeId: (path) Id of the jobType to be returned. 

     - returns: RequestBuilder<JobType> 
     */
    public class func getJobTypeByIdWithRequestBuilder(jobTypeId jobTypeId: Int) -> RequestBuilder<JobType> {
        var path = "/v1.0/jobType/{jobTypeId}"
        path = path.stringByReplacingOccurrencesOfString("{jobTypeId}", withString: "\(jobTypeId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<JobType>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a jobType
     
     - parameter body: (body) JobType to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateJobType(body body: JobType, completion: ((error: ErrorType?) -> Void)) {
        updateJobTypeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a jobType
     
     - PUT /v1.0/jobType
     - Updates an existing jobType using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) JobType to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateJobTypeWithRequestBuilder(body body: JobType) -> RequestBuilder<Void> {
        let path = "/v1.0/jobType"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
