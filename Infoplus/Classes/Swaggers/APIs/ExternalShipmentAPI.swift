//
// ExternalShipmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ExternalShipmentAPI: APIBase {
    /**
     Create an externalShipment
     
     - parameter body: (body) ExternalShipment to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShipment(body body: ExternalShipment, completion: ((data: ExternalShipment?, error: ErrorType?) -> Void)) {
        addExternalShipmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an externalShipment
     - POST /beta/externalShipment
     - Inserts a new externalShipment using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "weightLbs" : 2.027123023002321833274663731572218239307403564453125,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "orderId" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 2.3021358869347654518833223846741020679473876953125,
  "parcelAccountId" : 5,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 3.61607674925191080461672754609026014804840087890625,
  "dim1In" : 7.061401241503109105224211816675961017608642578125,
  "dim2In" : 9.301444243932575517419536481611430644989013671875,
  "residential" : false,
  "dimWeight" : 4.1456080298839363962315474054776132106781005859375,
  "thirdPartyParcelAccountId" : 5,
  "trackingNo" : "trackingNo",
  "zone" : "zone",
  "id" : 0,
  "carrierId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 7,
  "status" : "status"
}}]
     
     - parameter body: (body) ExternalShipment to be inserted. 

     - returns: RequestBuilder<ExternalShipment> 
     */
    public class func addExternalShipmentWithRequestBuilder(body body: ExternalShipment) -> RequestBuilder<ExternalShipment> {
        let path = "/beta/externalShipment"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ExternalShipment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for an externalShipment
     
     - parameter externalShipmentId: (path) Id of the externalShipment to add an audit to 
     - parameter externalShipmentAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShipmentAudit(externalShipmentId externalShipmentId: Int32, externalShipmentAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addExternalShipmentAuditWithRequestBuilder(externalShipmentId: externalShipmentId, externalShipmentAudit: externalShipmentAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an externalShipment
     - PUT /beta/externalShipment/{externalShipmentId}/audit/{externalShipmentAudit}
     - Adds an audit to an existing externalShipment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to add an audit to 
     - parameter externalShipmentAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addExternalShipmentAuditWithRequestBuilder(externalShipmentId externalShipmentId: Int32, externalShipmentAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}/audit/{externalShipmentAudit}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentAudit}", withString: "\(externalShipmentAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an externalShipment
     
     - parameter externalShipmentId: (path) Id of the externalShipment to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShipmentFile(externalShipmentId externalShipmentId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addExternalShipmentFileWithRequestBuilder(externalShipmentId: externalShipmentId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an externalShipment
     - POST /beta/externalShipment/{externalShipmentId}/file/{fileName}
     - Adds a file to an existing externalShipment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addExternalShipmentFileWithRequestBuilder(externalShipmentId externalShipmentId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to an externalShipment by URL.
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter externalShipmentId: (path) Id of the externalShipment to add an file to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShipmentFileByURL(body body: RecordFile, externalShipmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        addExternalShipmentFileByURLWithRequestBuilder(body: body, externalShipmentId: externalShipmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to an externalShipment by URL.
     - POST /beta/externalShipment/{externalShipmentId}/file
     - Adds a file to an existing externalShipment by URL.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) The url and optionly fileName to be used. 
     - parameter externalShipmentId: (path) Id of the externalShipment to add an file to 

     - returns: RequestBuilder<Void> 
     */
    public class func addExternalShipmentFileByURLWithRequestBuilder(body body: RecordFile, externalShipmentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}/file"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an externalShipment.
     
     - parameter externalShipmentId: (path) Id of the externalShipment to add a tag to 
     - parameter externalShipmentTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addExternalShipmentTag(externalShipmentId externalShipmentId: Int32, externalShipmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        addExternalShipmentTagWithRequestBuilder(externalShipmentId: externalShipmentId, externalShipmentTag: externalShipmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an externalShipment.
     - PUT /beta/externalShipment/{externalShipmentId}/tag/{externalShipmentTag}
     - Adds a tag to an existing externalShipment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to add a tag to 
     - parameter externalShipmentTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addExternalShipmentTagWithRequestBuilder(externalShipmentId externalShipmentId: Int32, externalShipmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}/tag/{externalShipmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentTag}", withString: "\(externalShipmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an externalShipment
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteExternalShipment(externalShipmentId externalShipmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteExternalShipmentWithRequestBuilder(externalShipmentId: externalShipmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an externalShipment
     - DELETE /beta/externalShipment/{externalShipmentId}
     - Deletes the externalShipment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteExternalShipmentWithRequestBuilder(externalShipmentId externalShipmentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a file for an externalShipment.
     
     - parameter externalShipmentId: (path) Id of the externalShipment to remove file from 
     - parameter fileId: (path) Id of the file to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteExternalShipmentFile(externalShipmentId externalShipmentId: Int32, fileId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteExternalShipmentFileWithRequestBuilder(externalShipmentId: externalShipmentId, fileId: fileId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a file for an externalShipment.
     - DELETE /beta/externalShipment/{externalShipmentId}/file/{fileId}
     - Deletes an existing externalShipment file using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to remove file from 
     - parameter fileId: (path) Id of the file to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteExternalShipmentFileWithRequestBuilder(externalShipmentId externalShipmentId: Int32, fileId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}/file/{fileId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileId}", withString: "\(fileId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an externalShipment.
     
     - parameter externalShipmentId: (path) Id of the externalShipment to remove tag from 
     - parameter externalShipmentTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteExternalShipmentTag(externalShipmentId externalShipmentId: Int32, externalShipmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteExternalShipmentTagWithRequestBuilder(externalShipmentId: externalShipmentId, externalShipmentTag: externalShipmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an externalShipment.
     - DELETE /beta/externalShipment/{externalShipmentId}/tag/{externalShipmentTag}
     - Deletes an existing externalShipment tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to remove tag from 
     - parameter externalShipmentTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteExternalShipmentTagWithRequestBuilder(externalShipmentId externalShipmentId: Int32, externalShipmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}/tag/{externalShipmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentTag}", withString: "\(externalShipmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an externalShipment by id
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateExternalShipmentById(externalShipmentId externalShipmentId: Int32, completion: ((data: ExternalShipment?, error: ErrorType?) -> Void)) {
        getDuplicateExternalShipmentByIdWithRequestBuilder(externalShipmentId: externalShipmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an externalShipment by id
     - GET /beta/externalShipment/duplicate/{externalShipmentId}
     - Returns a duplicated externalShipment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "weightLbs" : 2.027123023002321833274663731572218239307403564453125,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "orderId" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 2.3021358869347654518833223846741020679473876953125,
  "parcelAccountId" : 5,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 3.61607674925191080461672754609026014804840087890625,
  "dim1In" : 7.061401241503109105224211816675961017608642578125,
  "dim2In" : 9.301444243932575517419536481611430644989013671875,
  "residential" : false,
  "dimWeight" : 4.1456080298839363962315474054776132106781005859375,
  "thirdPartyParcelAccountId" : 5,
  "trackingNo" : "trackingNo",
  "zone" : "zone",
  "id" : 0,
  "carrierId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 7,
  "status" : "status"
}}]
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be duplicated. 

     - returns: RequestBuilder<ExternalShipment> 
     */
    public class func getDuplicateExternalShipmentByIdWithRequestBuilder(externalShipmentId externalShipmentId: Int32) -> RequestBuilder<ExternalShipment> {
        var path = "/beta/externalShipment/duplicate/{externalShipmentId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ExternalShipment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search externalShipments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShipmentByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ExternalShipment]?, error: ErrorType?) -> Void)) {
        getExternalShipmentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search externalShipments by filter
     - GET /beta/externalShipment/search
     - Returns the list of externalShipments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "weightLbs" : 2.027123023002321833274663731572218239307403564453125,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "orderId" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 2.3021358869347654518833223846741020679473876953125,
  "parcelAccountId" : 5,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 3.61607674925191080461672754609026014804840087890625,
  "dim1In" : 7.061401241503109105224211816675961017608642578125,
  "dim2In" : 9.301444243932575517419536481611430644989013671875,
  "residential" : false,
  "dimWeight" : 4.1456080298839363962315474054776132106781005859375,
  "thirdPartyParcelAccountId" : 5,
  "trackingNo" : "trackingNo",
  "zone" : "zone",
  "id" : 0,
  "carrierId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 7,
  "status" : "status"
}, {
  "weightLbs" : 2.027123023002321833274663731572218239307403564453125,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "orderId" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 2.3021358869347654518833223846741020679473876953125,
  "parcelAccountId" : 5,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 3.61607674925191080461672754609026014804840087890625,
  "dim1In" : 7.061401241503109105224211816675961017608642578125,
  "dim2In" : 9.301444243932575517419536481611430644989013671875,
  "residential" : false,
  "dimWeight" : 4.1456080298839363962315474054776132106781005859375,
  "thirdPartyParcelAccountId" : 5,
  "trackingNo" : "trackingNo",
  "zone" : "zone",
  "id" : 0,
  "carrierId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 7,
  "status" : "status"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ExternalShipment]> 
     */
    public class func getExternalShipmentByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ExternalShipment]> {
        let path = "/beta/externalShipment/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ExternalShipment]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an externalShipment by id
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShipmentById(externalShipmentId externalShipmentId: Int32, completion: ((data: ExternalShipment?, error: ErrorType?) -> Void)) {
        getExternalShipmentByIdWithRequestBuilder(externalShipmentId: externalShipmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an externalShipment by id
     - GET /beta/externalShipment/{externalShipmentId}
     - Returns the externalShipment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "weightLbs" : 2.027123023002321833274663731572218239307403564453125,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "orderId" : 6.02745618307040320615897144307382404804229736328125,
  "customFields" : {
    "key" : "{}"
  },
  "freight" : 2.3021358869347654518833223846741020679473876953125,
  "parcelAccountId" : 5,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 3.61607674925191080461672754609026014804840087890625,
  "dim1In" : 7.061401241503109105224211816675961017608642578125,
  "dim2In" : 9.301444243932575517419536481611430644989013671875,
  "residential" : false,
  "dimWeight" : 4.1456080298839363962315474054776132106781005859375,
  "thirdPartyParcelAccountId" : 5,
  "trackingNo" : "trackingNo",
  "zone" : "zone",
  "id" : 0,
  "carrierId" : 1,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 7,
  "status" : "status"
}}]
     
     - parameter externalShipmentId: (path) Id of the externalShipment to be returned. 

     - returns: RequestBuilder<ExternalShipment> 
     */
    public class func getExternalShipmentByIdWithRequestBuilder(externalShipmentId externalShipmentId: Int32) -> RequestBuilder<ExternalShipment> {
        var path = "/beta/externalShipment/{externalShipmentId}"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ExternalShipment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the files for an externalShipment.
     
     - parameter externalShipmentId: (path) Id of the externalShipment to get files for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShipmentFiles(externalShipmentId externalShipmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getExternalShipmentFilesWithRequestBuilder(externalShipmentId: externalShipmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the files for an externalShipment.
     - GET /beta/externalShipment/{externalShipmentId}/file
     - Get all existing externalShipment files.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to get files for 

     - returns: RequestBuilder<Void> 
     */
    public class func getExternalShipmentFilesWithRequestBuilder(externalShipmentId externalShipmentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}/file"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an externalShipment.
     
     - parameter externalShipmentId: (path) Id of the externalShipment to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getExternalShipmentTags(externalShipmentId externalShipmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getExternalShipmentTagsWithRequestBuilder(externalShipmentId: externalShipmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an externalShipment.
     - GET /beta/externalShipment/{externalShipmentId}/tag
     - Get all existing externalShipment tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter externalShipmentId: (path) Id of the externalShipment to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getExternalShipmentTagsWithRequestBuilder(externalShipmentId externalShipmentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/externalShipment/{externalShipmentId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{externalShipmentId}", withString: "\(externalShipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an externalShipment
     
     - parameter body: (body) ExternalShipment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateExternalShipment(body body: ExternalShipment, completion: ((error: ErrorType?) -> Void)) {
        updateExternalShipmentWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an externalShipment
     - PUT /beta/externalShipment
     - Updates an existing externalShipment using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ExternalShipment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateExternalShipmentWithRequestBuilder(body body: ExternalShipment) -> RequestBuilder<Void> {
        let path = "/beta/externalShipment"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an externalShipment custom fields
     
     - parameter body: (body) ExternalShipment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateExternalShipmentCustomFields(body body: ExternalShipment, completion: ((error: ErrorType?) -> Void)) {
        updateExternalShipmentCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an externalShipment custom fields
     - PUT /beta/externalShipment/customFields
     - Updates an existing externalShipment custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ExternalShipment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateExternalShipmentCustomFieldsWithRequestBuilder(body body: ExternalShipment) -> RequestBuilder<Void> {
        let path = "/beta/externalShipment/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
