//
// CartonActivityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CartonActivityAPI: APIBase {
    /**
     
     Create a cartonActivity
     
     - parameter body: (body) CartonActivity to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonActivity(body body: CartonActivity, completion: ((data: CartonActivity?, error: ErrorType?) -> Void)) {
        addCartonActivityWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a cartonActivity
     
     - POST /beta/cartonActivity
     - Inserts a new cartonActivity using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "estimatedZone" : "aeiou",
  "priceLevel" : "aeiou",
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "shipToStreet" : "aeiou",
  "parcelAccountNo" : "aeiou",
  "division" : 123,
  "orderStatusName" : "aeiou",
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "id" : 123,
  "billToStreet" : "aeiou",
  "cartonModifyDate" : "2000-01-23T04:56:07.000+0000",
  "shipToState" : "aeiou",
  "branchId" : "aeiou",
  "giftMessage" : "aeiou",
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "reqTypeName" : "aeiou",
  "orderMessage" : "aeiou",
  "dim1In" : 1.3579000000000001069366817318950779736042022705078125,
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "shippingSystemName" : "aeiou",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "integrationPartnerName" : "aeiou",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "cartonCreateDate" : "2000-01-23T04:56:07.000+0000",
  "billToCompany" : "aeiou",
  "taxOnFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCompany" : "aeiou",
  "warehouseName" : "aeiou",
  "numberOfCartons" : 123,
  "cartonNo" : 123,
  "shipToZip" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "shipToPhone" : "aeiou",
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "orderWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipCode" : "aeiou",
  "chargedFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "residential" : true,
  "dimWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "orderModifyDate" : "2000-01-23T04:56:07.000+0000",
  "authorizedBy" : "aeiou",
  "trackingNo" : "aeiou",
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "totalDiscount" : 1.3579000000000001069366817318950779736042022705078125,
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "mediaCode" : "aeiou",
  "customerOrderNo" : "aeiou",
  "packingSlipTemplateId" : 123,
  "estimatedNumberOfPicks" : 123,
  "branchCustomerType" : "aeiou",
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "billToCity" : "aeiou",
  "deliveredDate" : "2000-01-23T04:56:07.000+0000",
  "shipToCity" : "aeiou",
  "orderReason" : 123,
  "thirdPartyParcelAccountNo" : "aeiou",
  "licensePlateNumber" : "aeiou",
  "carrierName" : "aeiou",
  "leadPackageId" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "manifestId" : 123,
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "lobId" : 123,
  "orderSourceId" : 123,
  "shipToStreet2" : "aeiou",
  "batchNo" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "billToEmail" : "aeiou",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "orderSourceName" : "aeiou",
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "dim3In" : 1.3579000000000001069366817318950779736042022705078125,
  "shipped" : true,
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "branchSector" : "aeiou",
  "publishedFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "billToPhone" : "aeiou",
  "serviceTypeName" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "retailFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "orderEstimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "orderLoadProgramName" : "aeiou",
  "stopBackOrders" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "orderStatus" : "aeiou",
  "parcelAccountId" : 123,
  "carrierServiceId" : 123,
  "enteredBy" : "aeiou",
  "orderShipDate" : "2000-01-23T04:56:07.000+0000",
  "branchArea" : "aeiou",
  "orderCreateDate" : "2000-01-23T04:56:07.000+0000",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "billingOption" : "aeiou",
  "dim2In" : 1.3579000000000001069366817318950779736042022705078125,
  "omsOrderNo" : 123,
  "distributionChannelName" : "aeiou",
  "orderCode" : "aeiou",
  "carrierId" : 123
}}]
     
     - parameter body: (body) CartonActivity to be inserted. 

     - returns: RequestBuilder<CartonActivity> 
     */
    public class func addCartonActivityWithRequestBuilder(body body: CartonActivity) -> RequestBuilder<CartonActivity> {
        let path = "/beta/cartonActivity"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<CartonActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new audit for a cartonActivity
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to add an audit to 
     - parameter cartonActivityAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonActivityAudit(cartonActivityId cartonActivityId: Int, cartonActivityAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addCartonActivityAuditWithRequestBuilder(cartonActivityId: cartonActivityId, cartonActivityAudit: cartonActivityAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for a cartonActivity
     
     - PUT /beta/cartonActivity/{cartonActivityId}/audit/{cartonActivityAudit}
     - Adds an audit to an existing cartonActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to add an audit to 
     - parameter cartonActivityAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartonActivityAuditWithRequestBuilder(cartonActivityId cartonActivityId: Int, cartonActivityAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/cartonActivity/{cartonActivityId}/audit/{cartonActivityAudit}"
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityId}", withString: "\(cartonActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityAudit}", withString: "\(cartonActivityAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for a cartonActivity.
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to add a tag to 
     - parameter cartonActivityTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCartonActivityTag(cartonActivityId cartonActivityId: Int, cartonActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        addCartonActivityTagWithRequestBuilder(cartonActivityId: cartonActivityId, cartonActivityTag: cartonActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for a cartonActivity.
     
     - PUT /beta/cartonActivity/{cartonActivityId}/tag/{cartonActivityTag}
     - Adds a tag to an existing cartonActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to add a tag to 
     - parameter cartonActivityTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addCartonActivityTagWithRequestBuilder(cartonActivityId cartonActivityId: Int, cartonActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/cartonActivity/{cartonActivityId}/tag/{cartonActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityId}", withString: "\(cartonActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityTag}", withString: "\(cartonActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a cartonActivity
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartonActivity(cartonActivityId cartonActivityId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteCartonActivityWithRequestBuilder(cartonActivityId: cartonActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a cartonActivity
     
     - DELETE /beta/cartonActivity/{cartonActivityId}
     - Deletes the cartonActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartonActivityWithRequestBuilder(cartonActivityId cartonActivityId: Int) -> RequestBuilder<Void> {
        var path = "/beta/cartonActivity/{cartonActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityId}", withString: "\(cartonActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for a cartonActivity.
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to remove tag from 
     - parameter cartonActivityTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCartonActivityTag(cartonActivityId cartonActivityId: Int, cartonActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteCartonActivityTagWithRequestBuilder(cartonActivityId: cartonActivityId, cartonActivityTag: cartonActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for a cartonActivity.
     
     - DELETE /beta/cartonActivity/{cartonActivityId}/tag/{cartonActivityTag}
     - Deletes an existing cartonActivity tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to remove tag from 
     - parameter cartonActivityTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCartonActivityTagWithRequestBuilder(cartonActivityId cartonActivityId: Int, cartonActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/cartonActivity/{cartonActivityId}/tag/{cartonActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityId}", withString: "\(cartonActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityTag}", withString: "\(cartonActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search cartonActivitys by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonActivityByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [CartonActivity]?, error: ErrorType?) -> Void)) {
        getCartonActivityByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search cartonActivitys by filter
     
     - GET /beta/cartonActivity/search
     - Returns the list of cartonActivitys that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "estimatedZone" : "aeiou",
  "priceLevel" : "aeiou",
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "shipToStreet" : "aeiou",
  "parcelAccountNo" : "aeiou",
  "division" : 123,
  "orderStatusName" : "aeiou",
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "id" : 123,
  "billToStreet" : "aeiou",
  "cartonModifyDate" : "2000-01-23T04:56:07.000+0000",
  "shipToState" : "aeiou",
  "branchId" : "aeiou",
  "giftMessage" : "aeiou",
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "reqTypeName" : "aeiou",
  "orderMessage" : "aeiou",
  "dim1In" : 1.3579000000000001069366817318950779736042022705078125,
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "shippingSystemName" : "aeiou",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "integrationPartnerName" : "aeiou",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "cartonCreateDate" : "2000-01-23T04:56:07.000+0000",
  "billToCompany" : "aeiou",
  "taxOnFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCompany" : "aeiou",
  "warehouseName" : "aeiou",
  "numberOfCartons" : 123,
  "cartonNo" : 123,
  "shipToZip" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "shipToPhone" : "aeiou",
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "orderWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipCode" : "aeiou",
  "chargedFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "residential" : true,
  "dimWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "orderModifyDate" : "2000-01-23T04:56:07.000+0000",
  "authorizedBy" : "aeiou",
  "trackingNo" : "aeiou",
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "totalDiscount" : 1.3579000000000001069366817318950779736042022705078125,
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "mediaCode" : "aeiou",
  "customerOrderNo" : "aeiou",
  "packingSlipTemplateId" : 123,
  "estimatedNumberOfPicks" : 123,
  "branchCustomerType" : "aeiou",
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "billToCity" : "aeiou",
  "deliveredDate" : "2000-01-23T04:56:07.000+0000",
  "shipToCity" : "aeiou",
  "orderReason" : 123,
  "thirdPartyParcelAccountNo" : "aeiou",
  "licensePlateNumber" : "aeiou",
  "carrierName" : "aeiou",
  "leadPackageId" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "manifestId" : 123,
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "lobId" : 123,
  "orderSourceId" : 123,
  "shipToStreet2" : "aeiou",
  "batchNo" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "billToEmail" : "aeiou",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "orderSourceName" : "aeiou",
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "dim3In" : 1.3579000000000001069366817318950779736042022705078125,
  "shipped" : true,
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "branchSector" : "aeiou",
  "publishedFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "billToPhone" : "aeiou",
  "serviceTypeName" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "retailFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "orderEstimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "orderLoadProgramName" : "aeiou",
  "stopBackOrders" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "orderStatus" : "aeiou",
  "parcelAccountId" : 123,
  "carrierServiceId" : 123,
  "enteredBy" : "aeiou",
  "orderShipDate" : "2000-01-23T04:56:07.000+0000",
  "branchArea" : "aeiou",
  "orderCreateDate" : "2000-01-23T04:56:07.000+0000",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "billingOption" : "aeiou",
  "dim2In" : 1.3579000000000001069366817318950779736042022705078125,
  "omsOrderNo" : 123,
  "distributionChannelName" : "aeiou",
  "orderCode" : "aeiou",
  "carrierId" : 123
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[CartonActivity]> 
     */
    public class func getCartonActivityByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[CartonActivity]> {
        let path = "/beta/cartonActivity/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[CartonActivity]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a cartonActivity by id
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonActivityById(cartonActivityId cartonActivityId: Int, completion: ((data: CartonActivity?, error: ErrorType?) -> Void)) {
        getCartonActivityByIdWithRequestBuilder(cartonActivityId: cartonActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a cartonActivity by id
     
     - GET /beta/cartonActivity/{cartonActivityId}
     - Returns the cartonActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "estimatedZone" : "aeiou",
  "priceLevel" : "aeiou",
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "shipToStreet" : "aeiou",
  "parcelAccountNo" : "aeiou",
  "division" : 123,
  "orderStatusName" : "aeiou",
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "id" : 123,
  "billToStreet" : "aeiou",
  "cartonModifyDate" : "2000-01-23T04:56:07.000+0000",
  "shipToState" : "aeiou",
  "branchId" : "aeiou",
  "giftMessage" : "aeiou",
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "reqTypeName" : "aeiou",
  "orderMessage" : "aeiou",
  "dim1In" : 1.3579000000000001069366817318950779736042022705078125,
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "shippingSystemName" : "aeiou",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "integrationPartnerName" : "aeiou",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "cartonCreateDate" : "2000-01-23T04:56:07.000+0000",
  "billToCompany" : "aeiou",
  "taxOnFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCompany" : "aeiou",
  "warehouseName" : "aeiou",
  "numberOfCartons" : 123,
  "cartonNo" : 123,
  "shipToZip" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "shipToPhone" : "aeiou",
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "orderWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipCode" : "aeiou",
  "chargedFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "residential" : true,
  "dimWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "orderModifyDate" : "2000-01-23T04:56:07.000+0000",
  "authorizedBy" : "aeiou",
  "trackingNo" : "aeiou",
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "totalDiscount" : 1.3579000000000001069366817318950779736042022705078125,
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "mediaCode" : "aeiou",
  "customerOrderNo" : "aeiou",
  "packingSlipTemplateId" : 123,
  "estimatedNumberOfPicks" : 123,
  "branchCustomerType" : "aeiou",
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "billToCity" : "aeiou",
  "deliveredDate" : "2000-01-23T04:56:07.000+0000",
  "shipToCity" : "aeiou",
  "orderReason" : 123,
  "thirdPartyParcelAccountNo" : "aeiou",
  "licensePlateNumber" : "aeiou",
  "carrierName" : "aeiou",
  "leadPackageId" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "manifestId" : 123,
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "lobId" : 123,
  "orderSourceId" : 123,
  "shipToStreet2" : "aeiou",
  "batchNo" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "billToEmail" : "aeiou",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "orderSourceName" : "aeiou",
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "dim3In" : 1.3579000000000001069366817318950779736042022705078125,
  "shipped" : true,
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "branchSector" : "aeiou",
  "publishedFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "billToPhone" : "aeiou",
  "serviceTypeName" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "retailFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "orderEstimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "orderLoadProgramName" : "aeiou",
  "stopBackOrders" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "orderStatus" : "aeiou",
  "parcelAccountId" : 123,
  "carrierServiceId" : 123,
  "enteredBy" : "aeiou",
  "orderShipDate" : "2000-01-23T04:56:07.000+0000",
  "branchArea" : "aeiou",
  "orderCreateDate" : "2000-01-23T04:56:07.000+0000",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "billingOption" : "aeiou",
  "dim2In" : 1.3579000000000001069366817318950779736042022705078125,
  "omsOrderNo" : 123,
  "distributionChannelName" : "aeiou",
  "orderCode" : "aeiou",
  "carrierId" : 123
}}]
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to be returned. 

     - returns: RequestBuilder<CartonActivity> 
     */
    public class func getCartonActivityByIdWithRequestBuilder(cartonActivityId cartonActivityId: Int) -> RequestBuilder<CartonActivity> {
        var path = "/beta/cartonActivity/{cartonActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityId}", withString: "\(cartonActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<CartonActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for a cartonActivity.
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCartonActivityTags(cartonActivityId cartonActivityId: Int, completion: ((error: ErrorType?) -> Void)) {
        getCartonActivityTagsWithRequestBuilder(cartonActivityId: cartonActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for a cartonActivity.
     
     - GET /beta/cartonActivity/{cartonActivityId}/tag
     - Get all existing cartonActivity tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getCartonActivityTagsWithRequestBuilder(cartonActivityId cartonActivityId: Int) -> RequestBuilder<Void> {
        var path = "/beta/cartonActivity/{cartonActivityId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityId}", withString: "\(cartonActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated a cartonActivity by id
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateCartonActivityById(cartonActivityId cartonActivityId: Int, completion: ((data: CartonActivity?, error: ErrorType?) -> Void)) {
        getDuplicateCartonActivityByIdWithRequestBuilder(cartonActivityId: cartonActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated a cartonActivity by id
     
     - GET /beta/cartonActivity/duplicate/{cartonActivityId}
     - Returns a duplicated cartonActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "estimatedZone" : "aeiou",
  "priceLevel" : "aeiou",
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "shipToStreet" : "aeiou",
  "parcelAccountNo" : "aeiou",
  "division" : 123,
  "orderStatusName" : "aeiou",
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "id" : 123,
  "billToStreet" : "aeiou",
  "cartonModifyDate" : "2000-01-23T04:56:07.000+0000",
  "shipToState" : "aeiou",
  "branchId" : "aeiou",
  "giftMessage" : "aeiou",
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "reqTypeName" : "aeiou",
  "orderMessage" : "aeiou",
  "dim1In" : 1.3579000000000001069366817318950779736042022705078125,
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "shippingSystemName" : "aeiou",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "integrationPartnerName" : "aeiou",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "cartonCreateDate" : "2000-01-23T04:56:07.000+0000",
  "billToCompany" : "aeiou",
  "taxOnFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCompany" : "aeiou",
  "warehouseName" : "aeiou",
  "numberOfCartons" : 123,
  "cartonNo" : 123,
  "shipToZip" : "aeiou",
  "customerPONo" : "aeiou",
  "lastShipDate" : "2000-01-23T04:56:07.000+0000",
  "shipToAttention" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "distributionCharges" : 1.3579000000000001069366817318950779736042022705078125,
  "numberOfPallets" : 123,
  "legacyRestrictionType" : "aeiou",
  "shipToPhone" : "aeiou",
  "needByDate" : "2000-01-23T04:56:07.000+0000",
  "orderWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipCode" : "aeiou",
  "chargedFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "residential" : true,
  "dimWeight" : 1.3579000000000001069366817318950779736042022705078125,
  "orderModifyDate" : "2000-01-23T04:56:07.000+0000",
  "authorizedBy" : "aeiou",
  "trackingNo" : "aeiou",
  "holdCode" : "aeiou",
  "deliverOnDate" : "2000-01-23T04:56:07.000+0000",
  "totalDiscount" : 1.3579000000000001069366817318950779736042022705078125,
  "priorityCode" : 123,
  "completionStatus" : "aeiou",
  "mediaCode" : "aeiou",
  "customerOrderNo" : "aeiou",
  "packingSlipTemplateId" : 123,
  "estimatedNumberOfPicks" : 123,
  "branchCustomerType" : "aeiou",
  "totalQty" : 123,
  "orderConfirmationEmailTemplateId" : 123,
  "billToState" : "aeiou",
  "fulfillmentProcessId" : 123,
  "billToCity" : "aeiou",
  "deliveredDate" : "2000-01-23T04:56:07.000+0000",
  "shipToCity" : "aeiou",
  "orderReason" : 123,
  "thirdPartyParcelAccountNo" : "aeiou",
  "licensePlateNumber" : "aeiou",
  "carrierName" : "aeiou",
  "leadPackageId" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
  "manifestId" : 123,
  "distributionChannel" : "aeiou",
  "externalShippingSystemId" : 123,
  "lobId" : 123,
  "orderSourceId" : 123,
  "shipToStreet2" : "aeiou",
  "batchNo" : "aeiou",
  "orderNo" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToStreet3" : "aeiou",
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "billToEmail" : "aeiou",
  "totalPaid" : 1.3579000000000001069366817318950779736042022705078125,
  "orderSourceName" : "aeiou",
  "tax" : 1.3579000000000001069366817318950779736042022705078125,
  "dim3In" : 1.3579000000000001069366817318950779736042022705078125,
  "shipped" : true,
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "branchSector" : "aeiou",
  "publishedFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "billToPhone" : "aeiou",
  "serviceTypeName" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "retailFreightAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "orderEstimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "orderLoadProgramName" : "aeiou",
  "stopBackOrders" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "orderStatus" : "aeiou",
  "parcelAccountId" : 123,
  "carrierServiceId" : 123,
  "enteredBy" : "aeiou",
  "orderShipDate" : "2000-01-23T04:56:07.000+0000",
  "branchArea" : "aeiou",
  "orderCreateDate" : "2000-01-23T04:56:07.000+0000",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "billingOption" : "aeiou",
  "dim2In" : 1.3579000000000001069366817318950779736042022705078125,
  "omsOrderNo" : 123,
  "distributionChannelName" : "aeiou",
  "orderCode" : "aeiou",
  "carrierId" : 123
}}]
     
     - parameter cartonActivityId: (path) Id of the cartonActivity to be duplicated. 

     - returns: RequestBuilder<CartonActivity> 
     */
    public class func getDuplicateCartonActivityByIdWithRequestBuilder(cartonActivityId cartonActivityId: Int) -> RequestBuilder<CartonActivity> {
        var path = "/beta/cartonActivity/duplicate/{cartonActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{cartonActivityId}", withString: "\(cartonActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<CartonActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a cartonActivity
     
     - parameter body: (body) CartonActivity to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCartonActivity(body body: CartonActivity, completion: ((error: ErrorType?) -> Void)) {
        updateCartonActivityWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a cartonActivity
     
     - PUT /beta/cartonActivity
     - Updates an existing cartonActivity using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) CartonActivity to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateCartonActivityWithRequestBuilder(body body: CartonActivity) -> RequestBuilder<Void> {
        let path = "/beta/cartonActivity"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
