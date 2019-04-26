//
// ShipmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ShipmentAPI: APIBase {
    /**
     Add new audit for a shipment
     
     - parameter shipmentId: (path) Id of the shipment to add an audit to 
     - parameter shipmentAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addShipmentAudit(shipmentId shipmentId: Int32, shipmentAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addShipmentAuditWithRequestBuilder(shipmentId: shipmentId, shipmentAudit: shipmentAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a shipment
     - PUT /beta/shipment/{shipmentId}/audit/{shipmentAudit}
     - Adds an audit to an existing shipment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shipmentId: (path) Id of the shipment to add an audit to 
     - parameter shipmentAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addShipmentAuditWithRequestBuilder(shipmentId shipmentId: Int32, shipmentAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/shipment/{shipmentId}/audit/{shipmentAudit}"
        path = path.stringByReplacingOccurrencesOfString("{shipmentId}", withString: "\(shipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{shipmentAudit}", withString: "\(shipmentAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Attach a file to a shipment
     
     - parameter shipmentId: (path) Id of the shipment to add a file to 
     - parameter fileName: (path) Name of file 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addShipmentFile(shipmentId shipmentId: Int32, fileName: String, completion: ((error: ErrorType?) -> Void)) {
        addShipmentFileWithRequestBuilder(shipmentId: shipmentId, fileName: fileName).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Attach a file to a shipment
     - POST /beta/shipment/{shipmentId}/file/{fileName}
     - Adds a file to an existing shipment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shipmentId: (path) Id of the shipment to add a file to 
     - parameter fileName: (path) Name of file 

     - returns: RequestBuilder<Void> 
     */
    public class func addShipmentFileWithRequestBuilder(shipmentId shipmentId: Int32, fileName: String) -> RequestBuilder<Void> {
        var path = "/beta/shipment/{shipmentId}/file/{fileName}"
        path = path.stringByReplacingOccurrencesOfString("{shipmentId}", withString: "\(shipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{fileName}", withString: "\(fileName)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a shipment.
     
     - parameter shipmentId: (path) Id of the shipment to add a tag to 
     - parameter shipmentTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addShipmentTag(shipmentId shipmentId: Int32, shipmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        addShipmentTagWithRequestBuilder(shipmentId: shipmentId, shipmentTag: shipmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a shipment.
     - PUT /beta/shipment/{shipmentId}/tag/{shipmentTag}
     - Adds a tag to an existing shipment.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shipmentId: (path) Id of the shipment to add a tag to 
     - parameter shipmentTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addShipmentTagWithRequestBuilder(shipmentId shipmentId: Int32, shipmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/shipment/{shipmentId}/tag/{shipmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{shipmentId}", withString: "\(shipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{shipmentTag}", withString: "\(shipmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a shipment.
     
     - parameter shipmentId: (path) Id of the shipment to remove tag from 
     - parameter shipmentTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteShipmentTag(shipmentId shipmentId: Int32, shipmentTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteShipmentTagWithRequestBuilder(shipmentId: shipmentId, shipmentTag: shipmentTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a shipment.
     - DELETE /beta/shipment/{shipmentId}/tag/{shipmentTag}
     - Deletes an existing shipment tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shipmentId: (path) Id of the shipment to remove tag from 
     - parameter shipmentTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteShipmentTagWithRequestBuilder(shipmentId shipmentId: Int32, shipmentTag: String) -> RequestBuilder<Void> {
        var path = "/beta/shipment/{shipmentId}/tag/{shipmentTag}"
        path = path.stringByReplacingOccurrencesOfString("{shipmentId}", withString: "\(shipmentId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{shipmentTag}", withString: "\(shipmentTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a shipment by id
     
     - parameter shipmentId: (path) Id of the shipment to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateShipmentById(shipmentId shipmentId: Int32, completion: ((data: Shipment?, error: ErrorType?) -> Void)) {
        getDuplicateShipmentByIdWithRequestBuilder(shipmentId: shipmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a shipment by id
     - GET /beta/shipment/duplicate/{shipmentId}
     - Returns a duplicated shipment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "retailFreightAmount" : 6.8468526983526398765889098285697400569915771484375,
  "estimatedZone" : "estimatedZone",
  "customFields" : {
    "key" : "{}"
  },
  "carrierCompany" : "carrierCompany",
  "carrierServiceId" : 7,
  "numberOfCartons" : 2,
  "shipmentType" : "shipmentType",
  "deliveredDate" : "2000-01-23T04:56:07.000+00:00",
  "cartonNo" : 5,
  "parcelAccountNo" : "parcelAccountNo",
  "thirdPartyParcelAccountNo" : "thirdPartyParcelAccountNo",
  "licensePlateNumber" : "licensePlateNumber",
  "shipmentID" : "shipmentID",
  "id" : 0,
  "manifestId" : 4,
  "externalShippingSystemId" : 7,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "weightLbs" : 7.3862819483858839220147274318151175975799560546875,
  "orderNo" : 5.962133916683182377482808078639209270477294921875,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "casebreak" : false,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 2.027123023002321833274663731572218239307403564453125,
  "dim1In" : 9.301444243932575517419536481611430644989013671875,
  "billingOption" : "billingOption",
  "chargedFreightAmount" : 1.024645700144157789424070870154537260532379150390625,
  "dim2In" : 3.61607674925191080461672754609026014804840087890625,
  "shipped" : false,
  "residential" : false,
  "dimWeight" : 1.231513536777255612975068288506008684635162353515625,
  "trackingNo" : "trackingNo",
  "warehouseId" : 6,
  "publishedFreightAmount" : 1.489415909854170383397331534069962799549102783203125,
  "status" : "status"
}}]
     
     - parameter shipmentId: (path) Id of the shipment to be duplicated. 

     - returns: RequestBuilder<Shipment> 
     */
    public class func getDuplicateShipmentByIdWithRequestBuilder(shipmentId shipmentId: Int32) -> RequestBuilder<Shipment> {
        var path = "/beta/shipment/duplicate/{shipmentId}"
        path = path.stringByReplacingOccurrencesOfString("{shipmentId}", withString: "\(shipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Shipment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search shipments by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getShipmentByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [Shipment]?, error: ErrorType?) -> Void)) {
        getShipmentByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search shipments by filter
     - GET /beta/shipment/search
     - Returns the list of shipments that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "retailFreightAmount" : 6.8468526983526398765889098285697400569915771484375,
  "estimatedZone" : "estimatedZone",
  "customFields" : {
    "key" : "{}"
  },
  "carrierCompany" : "carrierCompany",
  "carrierServiceId" : 7,
  "numberOfCartons" : 2,
  "shipmentType" : "shipmentType",
  "deliveredDate" : "2000-01-23T04:56:07.000+00:00",
  "cartonNo" : 5,
  "parcelAccountNo" : "parcelAccountNo",
  "thirdPartyParcelAccountNo" : "thirdPartyParcelAccountNo",
  "licensePlateNumber" : "licensePlateNumber",
  "shipmentID" : "shipmentID",
  "id" : 0,
  "manifestId" : 4,
  "externalShippingSystemId" : 7,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "weightLbs" : 7.3862819483858839220147274318151175975799560546875,
  "orderNo" : 5.962133916683182377482808078639209270477294921875,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "casebreak" : false,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 2.027123023002321833274663731572218239307403564453125,
  "dim1In" : 9.301444243932575517419536481611430644989013671875,
  "billingOption" : "billingOption",
  "chargedFreightAmount" : 1.024645700144157789424070870154537260532379150390625,
  "dim2In" : 3.61607674925191080461672754609026014804840087890625,
  "shipped" : false,
  "residential" : false,
  "dimWeight" : 1.231513536777255612975068288506008684635162353515625,
  "trackingNo" : "trackingNo",
  "warehouseId" : 6,
  "publishedFreightAmount" : 1.489415909854170383397331534069962799549102783203125,
  "status" : "status"
}, {
  "retailFreightAmount" : 6.8468526983526398765889098285697400569915771484375,
  "estimatedZone" : "estimatedZone",
  "customFields" : {
    "key" : "{}"
  },
  "carrierCompany" : "carrierCompany",
  "carrierServiceId" : 7,
  "numberOfCartons" : 2,
  "shipmentType" : "shipmentType",
  "deliveredDate" : "2000-01-23T04:56:07.000+00:00",
  "cartonNo" : 5,
  "parcelAccountNo" : "parcelAccountNo",
  "thirdPartyParcelAccountNo" : "thirdPartyParcelAccountNo",
  "licensePlateNumber" : "licensePlateNumber",
  "shipmentID" : "shipmentID",
  "id" : 0,
  "manifestId" : 4,
  "externalShippingSystemId" : 7,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "weightLbs" : 7.3862819483858839220147274318151175975799560546875,
  "orderNo" : 5.962133916683182377482808078639209270477294921875,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "casebreak" : false,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 2.027123023002321833274663731572218239307403564453125,
  "dim1In" : 9.301444243932575517419536481611430644989013671875,
  "billingOption" : "billingOption",
  "chargedFreightAmount" : 1.024645700144157789424070870154537260532379150390625,
  "dim2In" : 3.61607674925191080461672754609026014804840087890625,
  "shipped" : false,
  "residential" : false,
  "dimWeight" : 1.231513536777255612975068288506008684635162353515625,
  "trackingNo" : "trackingNo",
  "warehouseId" : 6,
  "publishedFreightAmount" : 1.489415909854170383397331534069962799549102783203125,
  "status" : "status"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[Shipment]> 
     */
    public class func getShipmentByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[Shipment]> {
        let path = "/beta/shipment/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Shipment]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a shipment by id
     
     - parameter shipmentId: (path) Id of the shipment to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getShipmentById(shipmentId shipmentId: Int32, completion: ((data: Shipment?, error: ErrorType?) -> Void)) {
        getShipmentByIdWithRequestBuilder(shipmentId: shipmentId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a shipment by id
     - GET /beta/shipment/{shipmentId}
     - Returns the shipment identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "retailFreightAmount" : 6.8468526983526398765889098285697400569915771484375,
  "estimatedZone" : "estimatedZone",
  "customFields" : {
    "key" : "{}"
  },
  "carrierCompany" : "carrierCompany",
  "carrierServiceId" : 7,
  "numberOfCartons" : 2,
  "shipmentType" : "shipmentType",
  "deliveredDate" : "2000-01-23T04:56:07.000+00:00",
  "cartonNo" : 5,
  "parcelAccountNo" : "parcelAccountNo",
  "thirdPartyParcelAccountNo" : "thirdPartyParcelAccountNo",
  "licensePlateNumber" : "licensePlateNumber",
  "shipmentID" : "shipmentID",
  "id" : 0,
  "manifestId" : 4,
  "externalShippingSystemId" : 7,
  "createDate" : "2000-01-23T04:56:07.000+00:00",
  "lobId" : 1,
  "weightLbs" : 7.3862819483858839220147274318151175975799560546875,
  "orderNo" : 5.962133916683182377482808078639209270477294921875,
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "casebreak" : false,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "dim3In" : 2.027123023002321833274663731572218239307403564453125,
  "dim1In" : 9.301444243932575517419536481611430644989013671875,
  "billingOption" : "billingOption",
  "chargedFreightAmount" : 1.024645700144157789424070870154537260532379150390625,
  "dim2In" : 3.61607674925191080461672754609026014804840087890625,
  "shipped" : false,
  "residential" : false,
  "dimWeight" : 1.231513536777255612975068288506008684635162353515625,
  "trackingNo" : "trackingNo",
  "warehouseId" : 6,
  "publishedFreightAmount" : 1.489415909854170383397331534069962799549102783203125,
  "status" : "status"
}}]
     
     - parameter shipmentId: (path) Id of the shipment to be returned. 

     - returns: RequestBuilder<Shipment> 
     */
    public class func getShipmentByIdWithRequestBuilder(shipmentId shipmentId: Int32) -> RequestBuilder<Shipment> {
        var path = "/beta/shipment/{shipmentId}"
        path = path.stringByReplacingOccurrencesOfString("{shipmentId}", withString: "\(shipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Shipment>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a shipment.
     
     - parameter shipmentId: (path) Id of the shipment to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getShipmentTags(shipmentId shipmentId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getShipmentTagsWithRequestBuilder(shipmentId: shipmentId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a shipment.
     - GET /beta/shipment/{shipmentId}/tag
     - Get all existing shipment tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter shipmentId: (path) Id of the shipment to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getShipmentTagsWithRequestBuilder(shipmentId shipmentId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/shipment/{shipmentId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{shipmentId}", withString: "\(shipmentId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a shipment custom fields
     
     - parameter body: (body) Shipment to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateShipmentCustomFields(body body: Shipment, completion: ((error: ErrorType?) -> Void)) {
        updateShipmentCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a shipment custom fields
     - PUT /beta/shipment/customFields
     - Updates an existing shipment custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) Shipment to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateShipmentCustomFieldsWithRequestBuilder(body body: Shipment) -> RequestBuilder<Void> {
        let path = "/beta/shipment/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
