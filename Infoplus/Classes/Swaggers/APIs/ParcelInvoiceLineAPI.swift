//
// ParcelInvoiceLineAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ParcelInvoiceLineAPI: APIBase {
    /**
     
     Add new audit for a parcelInvoiceLine
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to add an audit to 
     - parameter parcelInvoiceLineAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addParcelInvoiceLineAudit(parcelInvoiceLineId parcelInvoiceLineId: Int, parcelInvoiceLineAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addParcelInvoiceLineAuditWithRequestBuilder(parcelInvoiceLineId: parcelInvoiceLineId, parcelInvoiceLineAudit: parcelInvoiceLineAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a parcelInvoiceLine
     
     - PUT /beta/parcelInvoiceLine/{parcelInvoiceLineId}/audit/{parcelInvoiceLineAudit}
     - Adds an audit to an existing parcelInvoiceLine.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to add an audit to 
     - parameter parcelInvoiceLineAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addParcelInvoiceLineAuditWithRequestBuilder(parcelInvoiceLineId parcelInvoiceLineId: Int, parcelInvoiceLineAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoiceLine/{parcelInvoiceLineId}/audit/{parcelInvoiceLineAudit}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineId}", withString: "\(parcelInvoiceLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineAudit}", withString: "\(parcelInvoiceLineAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a parcelInvoiceLine.
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to add a tag to 
     - parameter parcelInvoiceLineTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addParcelInvoiceLineTag(parcelInvoiceLineId parcelInvoiceLineId: Int, parcelInvoiceLineTag: String, completion: ((error: ErrorType?) -> Void)) {
        addParcelInvoiceLineTagWithRequestBuilder(parcelInvoiceLineId: parcelInvoiceLineId, parcelInvoiceLineTag: parcelInvoiceLineTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a parcelInvoiceLine.
     
     - PUT /beta/parcelInvoiceLine/{parcelInvoiceLineId}/tag/{parcelInvoiceLineTag}
     - Adds a tag to an existing parcelInvoiceLine.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to add a tag to 
     - parameter parcelInvoiceLineTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addParcelInvoiceLineTagWithRequestBuilder(parcelInvoiceLineId parcelInvoiceLineId: Int, parcelInvoiceLineTag: String) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoiceLine/{parcelInvoiceLineId}/tag/{parcelInvoiceLineTag}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineId}", withString: "\(parcelInvoiceLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineTag}", withString: "\(parcelInvoiceLineTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a parcelInvoiceLine.
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to remove tag from 
     - parameter parcelInvoiceLineTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteParcelInvoiceLineTag(parcelInvoiceLineId parcelInvoiceLineId: Int, parcelInvoiceLineTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteParcelInvoiceLineTagWithRequestBuilder(parcelInvoiceLineId: parcelInvoiceLineId, parcelInvoiceLineTag: parcelInvoiceLineTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a parcelInvoiceLine.
     
     - DELETE /beta/parcelInvoiceLine/{parcelInvoiceLineId}/tag/{parcelInvoiceLineTag}
     - Deletes an existing parcelInvoiceLine tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to remove tag from 
     - parameter parcelInvoiceLineTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteParcelInvoiceLineTagWithRequestBuilder(parcelInvoiceLineId parcelInvoiceLineId: Int, parcelInvoiceLineTag: String) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoiceLine/{parcelInvoiceLineId}/tag/{parcelInvoiceLineTag}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineId}", withString: "\(parcelInvoiceLineId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineTag}", withString: "\(parcelInvoiceLineTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a parcelInvoiceLine by id
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateParcelInvoiceLineById(parcelInvoiceLineId parcelInvoiceLineId: Int, completion: ((data: ParcelInvoiceLine?, error: ErrorType?) -> Void)) {
        getDuplicateParcelInvoiceLineByIdWithRequestBuilder(parcelInvoiceLineId: parcelInvoiceLineId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a parcelInvoiceLine by id
     
     - GET /beta/parcelInvoiceLine/duplicate/{parcelInvoiceLineId}
     - Returns a duplicated parcelInvoiceLine identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "baseFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge18Name" : "aeiou",
  "orderId" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge15Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToCompany" : "aeiou",
  "actualWeightUnit" : "aeiou",
  "extraCharge4Name" : "aeiou",
  "originalShipToState" : "aeiou",
  "grossCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToStreet2" : "aeiou",
  "extraCharge9Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "invoiceNoId" : 123,
  "customerReference" : "aeiou",
  "id" : 123,
  "thirdPartyCountry" : "aeiou",
  "shipToState" : "aeiou",
  "extraCharge16Name" : "aeiou",
  "extraCharge2Name" : "aeiou",
  "extraCharge22Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "extraCharge6Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToStreet1" : "aeiou",
  "extraCharge10Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge3Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge25Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "deliveryAreaChargeExtended" : 1.3579000000000001069366817318950779736042022705078125,
  "netCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge23Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge13Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyStreet1" : "aeiou",
  "soldToState" : "aeiou",
  "shipToCompany" : "aeiou",
  "actualWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToCity" : "aeiou",
  "shipToZip" : "aeiou",
  "soldToCountry" : "aeiou",
  "extraCharge4Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge17Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyStreet2" : "aeiou",
  "billedWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge22Name" : "aeiou",
  "extraCharge13Name" : "aeiou",
  "shipFromCompany" : "aeiou",
  "shipFromStreet2" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "shipFromStreet1" : "aeiou",
  "extraCharge24Name" : "aeiou",
  "thirdPartyState" : "aeiou",
  "extraCharge7Name" : "aeiou",
  "thirdPartyZip" : "aeiou",
  "extraCharge12Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "originalShipToZip" : "aeiou",
  "originalShipToCountry" : "aeiou",
  "adultSignatureCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "trackingNo" : "aeiou",
  "extraCharge18Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToName" : "aeiou",
  "extraCharge11Name" : "aeiou",
  "shipmentReference" : "aeiou",
  "extraCharge5Name" : "aeiou",
  "dim3" : 1.3579000000000001069366817318950779736042022705078125,
  "dim2" : 1.3579000000000001069366817318950779736042022705078125,
  "dim1" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge5Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipFromCountry" : "aeiou",
  "extraCharge2Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge21Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCity" : "aeiou",
  "residentialCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge11Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge17Name" : "aeiou",
  "zone" : "aeiou",
  "extraCharge3Name" : "aeiou",
  "extraCharge14Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge24Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "lobId" : 123,
  "shipToStreet2" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "shipFromState" : "aeiou",
  "extraCharge19Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "enteredWeightUnit" : "aeiou",
  "soldToName" : "aeiou",
  "billedWeightUnit" : "aeiou",
  "shipToStreet1" : "aeiou",
  "deliveryAreaCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge16Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge20Name" : "aeiou",
  "extraCharge9Name" : "aeiou",
  "fuelCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge15Name" : "aeiou",
  "extraCharge1Name" : "aeiou",
  "reference7" : "aeiou",
  "reference3" : "aeiou",
  "originalShipToCompany" : "aeiou",
  "addressCorrectionCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "reference4" : "aeiou",
  "originalShipToCity" : "aeiou",
  "reference5" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "reference6" : "aeiou",
  "extraCharge7Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipFromZip" : "aeiou",
  "extraCharge21Name" : "aeiou",
  "extraCharge14Name" : "aeiou",
  "soldToZip" : "aeiou",
  "extraCharge8Name" : "aeiou",
  "originalShipToStreet1" : "aeiou",
  "enteredWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "originalShipToStreet2" : "aeiou",
  "shipFromName" : "aeiou",
  "thirdPartyCity" : "aeiou",
  "extraCharge1Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "thirdPartyCompany" : "aeiou",
  "originalShipToName" : "aeiou",
  "extraCharge25Name" : "aeiou",
  "extraCharge10Name" : "aeiou",
  "extraCharge12Name" : "aeiou",
  "extraCharge20Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge6Name" : "aeiou",
  "freightServiceType" : "aeiou",
  "extraCharge23Name" : "aeiou",
  "thirdPartyName" : "aeiou",
  "extraCharge19Name" : "aeiou",
  "shipmentId" : 123,
  "shipFromCity" : "aeiou",
  "extraCharge8Amount" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to be duplicated. 

     - returns: RequestBuilder<ParcelInvoiceLine> 
     */
    public class func getDuplicateParcelInvoiceLineByIdWithRequestBuilder(parcelInvoiceLineId parcelInvoiceLineId: Int) -> RequestBuilder<ParcelInvoiceLine> {
        var path = "/beta/parcelInvoiceLine/duplicate/{parcelInvoiceLineId}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineId}", withString: "\(parcelInvoiceLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ParcelInvoiceLine>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search parcelInvoiceLines by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getParcelInvoiceLineByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [ParcelInvoiceLine]?, error: ErrorType?) -> Void)) {
        getParcelInvoiceLineByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search parcelInvoiceLines by filter
     
     - GET /beta/parcelInvoiceLine/search
     - Returns the list of parcelInvoiceLines that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "baseFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge18Name" : "aeiou",
  "orderId" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge15Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToCompany" : "aeiou",
  "actualWeightUnit" : "aeiou",
  "extraCharge4Name" : "aeiou",
  "originalShipToState" : "aeiou",
  "grossCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToStreet2" : "aeiou",
  "extraCharge9Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "invoiceNoId" : 123,
  "customerReference" : "aeiou",
  "id" : 123,
  "thirdPartyCountry" : "aeiou",
  "shipToState" : "aeiou",
  "extraCharge16Name" : "aeiou",
  "extraCharge2Name" : "aeiou",
  "extraCharge22Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "extraCharge6Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToStreet1" : "aeiou",
  "extraCharge10Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge3Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge25Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "deliveryAreaChargeExtended" : 1.3579000000000001069366817318950779736042022705078125,
  "netCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge23Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge13Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyStreet1" : "aeiou",
  "soldToState" : "aeiou",
  "shipToCompany" : "aeiou",
  "actualWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToCity" : "aeiou",
  "shipToZip" : "aeiou",
  "soldToCountry" : "aeiou",
  "extraCharge4Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge17Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyStreet2" : "aeiou",
  "billedWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge22Name" : "aeiou",
  "extraCharge13Name" : "aeiou",
  "shipFromCompany" : "aeiou",
  "shipFromStreet2" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "shipFromStreet1" : "aeiou",
  "extraCharge24Name" : "aeiou",
  "thirdPartyState" : "aeiou",
  "extraCharge7Name" : "aeiou",
  "thirdPartyZip" : "aeiou",
  "extraCharge12Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "originalShipToZip" : "aeiou",
  "originalShipToCountry" : "aeiou",
  "adultSignatureCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "trackingNo" : "aeiou",
  "extraCharge18Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToName" : "aeiou",
  "extraCharge11Name" : "aeiou",
  "shipmentReference" : "aeiou",
  "extraCharge5Name" : "aeiou",
  "dim3" : 1.3579000000000001069366817318950779736042022705078125,
  "dim2" : 1.3579000000000001069366817318950779736042022705078125,
  "dim1" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge5Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipFromCountry" : "aeiou",
  "extraCharge2Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge21Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCity" : "aeiou",
  "residentialCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge11Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge17Name" : "aeiou",
  "zone" : "aeiou",
  "extraCharge3Name" : "aeiou",
  "extraCharge14Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge24Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "lobId" : 123,
  "shipToStreet2" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "shipFromState" : "aeiou",
  "extraCharge19Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "enteredWeightUnit" : "aeiou",
  "soldToName" : "aeiou",
  "billedWeightUnit" : "aeiou",
  "shipToStreet1" : "aeiou",
  "deliveryAreaCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge16Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge20Name" : "aeiou",
  "extraCharge9Name" : "aeiou",
  "fuelCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge15Name" : "aeiou",
  "extraCharge1Name" : "aeiou",
  "reference7" : "aeiou",
  "reference3" : "aeiou",
  "originalShipToCompany" : "aeiou",
  "addressCorrectionCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "reference4" : "aeiou",
  "originalShipToCity" : "aeiou",
  "reference5" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "reference6" : "aeiou",
  "extraCharge7Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipFromZip" : "aeiou",
  "extraCharge21Name" : "aeiou",
  "extraCharge14Name" : "aeiou",
  "soldToZip" : "aeiou",
  "extraCharge8Name" : "aeiou",
  "originalShipToStreet1" : "aeiou",
  "enteredWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "originalShipToStreet2" : "aeiou",
  "shipFromName" : "aeiou",
  "thirdPartyCity" : "aeiou",
  "extraCharge1Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "thirdPartyCompany" : "aeiou",
  "originalShipToName" : "aeiou",
  "extraCharge25Name" : "aeiou",
  "extraCharge10Name" : "aeiou",
  "extraCharge12Name" : "aeiou",
  "extraCharge20Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge6Name" : "aeiou",
  "freightServiceType" : "aeiou",
  "extraCharge23Name" : "aeiou",
  "thirdPartyName" : "aeiou",
  "extraCharge19Name" : "aeiou",
  "shipmentId" : 123,
  "shipFromCity" : "aeiou",
  "extraCharge8Amount" : 1.3579000000000001069366817318950779736042022705078125
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ParcelInvoiceLine]> 
     */
    public class func getParcelInvoiceLineByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[ParcelInvoiceLine]> {
        let path = "/beta/parcelInvoiceLine/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ParcelInvoiceLine]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a parcelInvoiceLine by id
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getParcelInvoiceLineById(parcelInvoiceLineId parcelInvoiceLineId: Int, completion: ((data: ParcelInvoiceLine?, error: ErrorType?) -> Void)) {
        getParcelInvoiceLineByIdWithRequestBuilder(parcelInvoiceLineId: parcelInvoiceLineId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a parcelInvoiceLine by id
     
     - GET /beta/parcelInvoiceLine/{parcelInvoiceLineId}
     - Returns the parcelInvoiceLine identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "baseFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge18Name" : "aeiou",
  "orderId" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge15Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToCompany" : "aeiou",
  "actualWeightUnit" : "aeiou",
  "extraCharge4Name" : "aeiou",
  "originalShipToState" : "aeiou",
  "grossCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToStreet2" : "aeiou",
  "extraCharge9Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "invoiceNoId" : 123,
  "customerReference" : "aeiou",
  "id" : 123,
  "thirdPartyCountry" : "aeiou",
  "shipToState" : "aeiou",
  "extraCharge16Name" : "aeiou",
  "extraCharge2Name" : "aeiou",
  "extraCharge22Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "extraCharge6Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToStreet1" : "aeiou",
  "extraCharge10Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge3Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge25Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "deliveryAreaChargeExtended" : 1.3579000000000001069366817318950779736042022705078125,
  "netCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge23Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge13Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyStreet1" : "aeiou",
  "soldToState" : "aeiou",
  "shipToCompany" : "aeiou",
  "actualWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "soldToCity" : "aeiou",
  "shipToZip" : "aeiou",
  "soldToCountry" : "aeiou",
  "extraCharge4Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge17Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "thirdPartyStreet2" : "aeiou",
  "billedWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge22Name" : "aeiou",
  "extraCharge13Name" : "aeiou",
  "shipFromCompany" : "aeiou",
  "shipFromStreet2" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "shipFromStreet1" : "aeiou",
  "extraCharge24Name" : "aeiou",
  "thirdPartyState" : "aeiou",
  "extraCharge7Name" : "aeiou",
  "thirdPartyZip" : "aeiou",
  "extraCharge12Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "originalShipToZip" : "aeiou",
  "originalShipToCountry" : "aeiou",
  "adultSignatureCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "trackingNo" : "aeiou",
  "extraCharge18Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToName" : "aeiou",
  "extraCharge11Name" : "aeiou",
  "shipmentReference" : "aeiou",
  "extraCharge5Name" : "aeiou",
  "dim3" : 1.3579000000000001069366817318950779736042022705078125,
  "dim2" : 1.3579000000000001069366817318950779736042022705078125,
  "dim1" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge5Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipFromCountry" : "aeiou",
  "extraCharge2Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge21Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCity" : "aeiou",
  "residentialCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge11Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge17Name" : "aeiou",
  "zone" : "aeiou",
  "extraCharge3Name" : "aeiou",
  "extraCharge14Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge24Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "lobId" : 123,
  "shipToStreet2" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "shipFromState" : "aeiou",
  "extraCharge19Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "enteredWeightUnit" : "aeiou",
  "soldToName" : "aeiou",
  "billedWeightUnit" : "aeiou",
  "shipToStreet1" : "aeiou",
  "deliveryAreaCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge16Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge20Name" : "aeiou",
  "extraCharge9Name" : "aeiou",
  "fuelCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge15Name" : "aeiou",
  "extraCharge1Name" : "aeiou",
  "reference7" : "aeiou",
  "reference3" : "aeiou",
  "originalShipToCompany" : "aeiou",
  "addressCorrectionCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "reference4" : "aeiou",
  "originalShipToCity" : "aeiou",
  "reference5" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "reference6" : "aeiou",
  "extraCharge7Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipFromZip" : "aeiou",
  "extraCharge21Name" : "aeiou",
  "extraCharge14Name" : "aeiou",
  "soldToZip" : "aeiou",
  "extraCharge8Name" : "aeiou",
  "originalShipToStreet1" : "aeiou",
  "enteredWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "originalShipToStreet2" : "aeiou",
  "shipFromName" : "aeiou",
  "thirdPartyCity" : "aeiou",
  "extraCharge1Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "thirdPartyCompany" : "aeiou",
  "originalShipToName" : "aeiou",
  "extraCharge25Name" : "aeiou",
  "extraCharge10Name" : "aeiou",
  "extraCharge12Name" : "aeiou",
  "extraCharge20Amount" : 1.3579000000000001069366817318950779736042022705078125,
  "extraCharge6Name" : "aeiou",
  "freightServiceType" : "aeiou",
  "extraCharge23Name" : "aeiou",
  "thirdPartyName" : "aeiou",
  "extraCharge19Name" : "aeiou",
  "shipmentId" : 123,
  "shipFromCity" : "aeiou",
  "extraCharge8Amount" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to be returned. 

     - returns: RequestBuilder<ParcelInvoiceLine> 
     */
    public class func getParcelInvoiceLineByIdWithRequestBuilder(parcelInvoiceLineId parcelInvoiceLineId: Int) -> RequestBuilder<ParcelInvoiceLine> {
        var path = "/beta/parcelInvoiceLine/{parcelInvoiceLineId}"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineId}", withString: "\(parcelInvoiceLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ParcelInvoiceLine>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a parcelInvoiceLine.
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getParcelInvoiceLineTags(parcelInvoiceLineId parcelInvoiceLineId: Int, completion: ((error: ErrorType?) -> Void)) {
        getParcelInvoiceLineTagsWithRequestBuilder(parcelInvoiceLineId: parcelInvoiceLineId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a parcelInvoiceLine.
     
     - GET /beta/parcelInvoiceLine/{parcelInvoiceLineId}/tag
     - Get all existing parcelInvoiceLine tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter parcelInvoiceLineId: (path) Id of the parcelInvoiceLine to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getParcelInvoiceLineTagsWithRequestBuilder(parcelInvoiceLineId parcelInvoiceLineId: Int) -> RequestBuilder<Void> {
        var path = "/beta/parcelInvoiceLine/{parcelInvoiceLineId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{parcelInvoiceLineId}", withString: "\(parcelInvoiceLineId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a parcelInvoiceLine
     
     - parameter body: (body) ParcelInvoiceLine to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateParcelInvoiceLine(body body: ParcelInvoiceLine, completion: ((error: ErrorType?) -> Void)) {
        updateParcelInvoiceLineWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a parcelInvoiceLine
     
     - PUT /beta/parcelInvoiceLine
     - Updates an existing parcelInvoiceLine using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ParcelInvoiceLine to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateParcelInvoiceLineWithRequestBuilder(body body: ParcelInvoiceLine) -> RequestBuilder<Void> {
        let path = "/beta/parcelInvoiceLine"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}