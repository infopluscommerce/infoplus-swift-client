//
// OrderActivityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderActivityAPI: APIBase {
    /**
     
     Create an orderActivity
     
     - parameter body: (body) OrderActivity to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderActivity(body body: OrderActivity, completion: ((data: OrderActivity?, error: ErrorType?) -> Void)) {
        addOrderActivityWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create an orderActivity
     
     - POST /beta/orderActivity
     - Inserts a new orderActivity using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "priceLevel" : "aeiou",
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "shipToStreet" : "aeiou",
  "division" : 123,
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "billToStreet" : "aeiou",
  "shipToState" : "aeiou",
  "branchId" : "aeiou",
  "reqStatusName" : "aeiou",
  "giftMessage" : "aeiou",
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "reqTypeName" : "aeiou",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "entryTime" : "2000-01-23T04:56:07.000+0000",
  "shippingSystemName" : "aeiou",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "integrationPartnerName" : "aeiou",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "taxOnFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
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
  "shipCode" : "aeiou",
  "authorizedBy" : "aeiou",
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
  "carrierName" : "aeiou",
  "leadPackageId" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
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
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "branchSector" : "aeiou",
  "billToPhone" : "aeiou",
  "serviceTypeName" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "orderLoadProgramName" : "aeiou",
  "stopBackOrders" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "parcelAccountId" : 123,
  "enteredBy" : "aeiou",
  "branchArea" : "aeiou",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "omsOrderNo" : 123,
  "distributionChannelName" : "aeiou",
  "orderCode" : "aeiou",
  "carrierId" : 123
}}]
     
     - parameter body: (body) OrderActivity to be inserted. 

     - returns: RequestBuilder<OrderActivity> 
     */
    public class func addOrderActivityWithRequestBuilder(body body: OrderActivity) -> RequestBuilder<OrderActivity> {
        let path = "/beta/orderActivity"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<OrderActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new audit for an orderActivity
     
     - parameter orderActivityId: (path) Id of the orderActivity to add an audit to 
     - parameter orderActivityAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderActivityAudit(orderActivityId orderActivityId: Double, orderActivityAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderActivityAuditWithRequestBuilder(orderActivityId: orderActivityId, orderActivityAudit: orderActivityAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new audit for an orderActivity
     
     - PUT /beta/orderActivity/{orderActivityId}/audit/{orderActivityAudit}
     - Adds an audit to an existing orderActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderActivityId: (path) Id of the orderActivity to add an audit to 
     - parameter orderActivityAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderActivityAuditWithRequestBuilder(orderActivityId orderActivityId: Double, orderActivityAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/orderActivity/{orderActivityId}/audit/{orderActivityAudit}"
        path = path.stringByReplacingOccurrencesOfString("{orderActivityId}", withString: "\(orderActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderActivityAudit}", withString: "\(orderActivityAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Add new tags for an orderActivity.
     
     - parameter orderActivityId: (path) Id of the orderActivity to add a tag to 
     - parameter orderActivityTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addOrderActivityTag(orderActivityId orderActivityId: Double, orderActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        addOrderActivityTagWithRequestBuilder(orderActivityId: orderActivityId, orderActivityTag: orderActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Add new tags for an orderActivity.
     
     - PUT /beta/orderActivity/{orderActivityId}/tag/{orderActivityTag}
     - Adds a tag to an existing orderActivity.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderActivityId: (path) Id of the orderActivity to add a tag to 
     - parameter orderActivityTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addOrderActivityTagWithRequestBuilder(orderActivityId orderActivityId: Double, orderActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderActivity/{orderActivityId}/tag/{orderActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderActivityId}", withString: "\(orderActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderActivityTag}", withString: "\(orderActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete an orderActivity
     
     - parameter orderActivityId: (path) Id of the orderActivity to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderActivity(orderActivityId orderActivityId: Double, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderActivityWithRequestBuilder(orderActivityId: orderActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete an orderActivity
     
     - DELETE /beta/orderActivity/{orderActivityId}
     - Deletes the orderActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderActivityId: (path) Id of the orderActivity to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderActivityWithRequestBuilder(orderActivityId orderActivityId: Double) -> RequestBuilder<Void> {
        var path = "/beta/orderActivity/{orderActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{orderActivityId}", withString: "\(orderActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a tag for an orderActivity.
     
     - parameter orderActivityId: (path) Id of the orderActivity to remove tag from 
     - parameter orderActivityTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrderActivityTag(orderActivityId orderActivityId: Double, orderActivityTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderActivityTagWithRequestBuilder(orderActivityId: orderActivityId, orderActivityTag: orderActivityTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a tag for an orderActivity.
     
     - DELETE /beta/orderActivity/{orderActivityId}/tag/{orderActivityTag}
     - Deletes an existing orderActivity tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderActivityId: (path) Id of the orderActivity to remove tag from 
     - parameter orderActivityTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderActivityTagWithRequestBuilder(orderActivityId orderActivityId: Double, orderActivityTag: String) -> RequestBuilder<Void> {
        var path = "/beta/orderActivity/{orderActivityId}/tag/{orderActivityTag}"
        path = path.stringByReplacingOccurrencesOfString("{orderActivityId}", withString: "\(orderActivityId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{orderActivityTag}", withString: "\(orderActivityTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get a duplicated an orderActivity by id
     
     - parameter orderActivityId: (path) Id of the orderActivity to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateOrderActivityById(orderActivityId orderActivityId: Double, completion: ((data: OrderActivity?, error: ErrorType?) -> Void)) {
        getDuplicateOrderActivityByIdWithRequestBuilder(orderActivityId: orderActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a duplicated an orderActivity by id
     
     - GET /beta/orderActivity/duplicate/{orderActivityId}
     - Returns a duplicated orderActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "priceLevel" : "aeiou",
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "shipToStreet" : "aeiou",
  "division" : 123,
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "billToStreet" : "aeiou",
  "shipToState" : "aeiou",
  "branchId" : "aeiou",
  "reqStatusName" : "aeiou",
  "giftMessage" : "aeiou",
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "reqTypeName" : "aeiou",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "entryTime" : "2000-01-23T04:56:07.000+0000",
  "shippingSystemName" : "aeiou",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "integrationPartnerName" : "aeiou",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "taxOnFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
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
  "shipCode" : "aeiou",
  "authorizedBy" : "aeiou",
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
  "carrierName" : "aeiou",
  "leadPackageId" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
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
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "branchSector" : "aeiou",
  "billToPhone" : "aeiou",
  "serviceTypeName" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "orderLoadProgramName" : "aeiou",
  "stopBackOrders" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "parcelAccountId" : 123,
  "enteredBy" : "aeiou",
  "branchArea" : "aeiou",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "omsOrderNo" : 123,
  "distributionChannelName" : "aeiou",
  "orderCode" : "aeiou",
  "carrierId" : 123
}}]
     
     - parameter orderActivityId: (path) Id of the orderActivity to be duplicated. 

     - returns: RequestBuilder<OrderActivity> 
     */
    public class func getDuplicateOrderActivityByIdWithRequestBuilder(orderActivityId orderActivityId: Double) -> RequestBuilder<OrderActivity> {
        var path = "/beta/orderActivity/duplicate/{orderActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{orderActivityId}", withString: "\(orderActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<OrderActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search orderActivitys by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderActivityByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [OrderActivity]?, error: ErrorType?) -> Void)) {
        getOrderActivityByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search orderActivitys by filter
     
     - GET /beta/orderActivity/search
     - Returns the list of orderActivitys that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "priceLevel" : "aeiou",
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "shipToStreet" : "aeiou",
  "division" : 123,
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "billToStreet" : "aeiou",
  "shipToState" : "aeiou",
  "branchId" : "aeiou",
  "reqStatusName" : "aeiou",
  "giftMessage" : "aeiou",
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "reqTypeName" : "aeiou",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "entryTime" : "2000-01-23T04:56:07.000+0000",
  "shippingSystemName" : "aeiou",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "integrationPartnerName" : "aeiou",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "taxOnFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
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
  "shipCode" : "aeiou",
  "authorizedBy" : "aeiou",
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
  "carrierName" : "aeiou",
  "leadPackageId" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
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
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "branchSector" : "aeiou",
  "billToPhone" : "aeiou",
  "serviceTypeName" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "orderLoadProgramName" : "aeiou",
  "stopBackOrders" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "parcelAccountId" : 123,
  "enteredBy" : "aeiou",
  "branchArea" : "aeiou",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "omsOrderNo" : 123,
  "distributionChannelName" : "aeiou",
  "orderCode" : "aeiou",
  "carrierId" : 123
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[OrderActivity]> 
     */
    public class func getOrderActivityByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[OrderActivity]> {
        let path = "/beta/orderActivity/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[OrderActivity]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get an orderActivity by id
     
     - parameter orderActivityId: (path) Id of the orderActivity to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderActivityById(orderActivityId orderActivityId: Double, completion: ((data: OrderActivity?, error: ErrorType?) -> Void)) {
        getOrderActivityByIdWithRequestBuilder(orderActivityId: orderActivityId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an orderActivity by id
     
     - GET /beta/orderActivity/{orderActivityId}
     - Returns the orderActivity identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "priceLevel" : "aeiou",
  "integrationPartnerId" : 123,
  "omsCustomerId" : 123,
  "shipToStreet" : "aeiou",
  "division" : 123,
  "billToZip" : "aeiou",
  "shipToEmail" : "aeiou",
  "billToStreet" : "aeiou",
  "shipToState" : "aeiou",
  "branchId" : "aeiou",
  "reqStatusName" : "aeiou",
  "giftMessage" : "aeiou",
  "costCenter" : "aeiou",
  "shipDate" : "2000-01-23T04:56:07.000+0000",
  "reqTypeName" : "aeiou",
  "orderMessage" : "aeiou",
  "firstShipDate" : "2000-01-23T04:56:07.000+0000",
  "entryTime" : "2000-01-23T04:56:07.000+0000",
  "shippingSystemName" : "aeiou",
  "warehouseId" : 123,
  "billToAttention" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "integrationPartnerName" : "aeiou",
  "status" : "aeiou",
  "alternateUsage" : "aeiou",
  "authorizationAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "freight" : 1.3579000000000001069366817318950779736042022705078125,
  "billToCompany" : "aeiou",
  "taxOnFreight" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCompany" : "aeiou",
  "numberOfCartons" : 123,
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
  "shipCode" : "aeiou",
  "authorizedBy" : "aeiou",
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
  "carrierName" : "aeiou",
  "leadPackageId" : "aeiou",
  "shipBy" : "2000-01-23T04:56:07.000+0000",
  "shippingCharge" : 1.3579000000000001069366817318950779736042022705078125,
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
  "groupOrderId" : 1.3579000000000001069366817318950779736042022705078125,
  "orderInvoiceTemplateId" : 123,
  "billToCountry" : "aeiou",
  "branchSector" : "aeiou",
  "billToPhone" : "aeiou",
  "serviceTypeName" : "aeiou",
  "orderDate" : "2000-01-23T04:56:07.000+0000",
  "numberOfLineItems" : 123,
  "priceMode" : "aeiou",
  "customFields" : {
    "key" : "{}"
  },
  "orderLoadProgramName" : "aeiou",
  "stopBackOrders" : "aeiou",
  "shipmentConfirmationEmailTemplateId" : 123,
  "parcelAccountId" : 123,
  "enteredBy" : "aeiou",
  "branchArea" : "aeiou",
  "shipVia" : "aeiou",
  "total" : 1.3579000000000001069366817318950779736042022705078125,
  "serviceTypeId" : "aeiou",
  "weightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "estimatedWeightLbs" : 1.3579000000000001069366817318950779736042022705078125,
  "shipToCountry" : "aeiou",
  "balanceDue" : 1.3579000000000001069366817318950779736042022705078125,
  "orderLoadProgramId" : 123,
  "alcoholOrderType" : "aeiou",
  "billToStreet2" : "aeiou",
  "billToStreet3" : "aeiou",
  "omsOrderNo" : 123,
  "distributionChannelName" : "aeiou",
  "orderCode" : "aeiou",
  "carrierId" : 123
}}]
     
     - parameter orderActivityId: (path) Id of the orderActivity to be returned. 

     - returns: RequestBuilder<OrderActivity> 
     */
    public class func getOrderActivityByIdWithRequestBuilder(orderActivityId orderActivityId: Double) -> RequestBuilder<OrderActivity> {
        var path = "/beta/orderActivity/{orderActivityId}"
        path = path.stringByReplacingOccurrencesOfString("{orderActivityId}", withString: "\(orderActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<OrderActivity>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Get the tags for an orderActivity.
     
     - parameter orderActivityId: (path) Id of the orderActivity to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderActivityTags(orderActivityId orderActivityId: Double, completion: ((error: ErrorType?) -> Void)) {
        getOrderActivityTagsWithRequestBuilder(orderActivityId: orderActivityId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Get the tags for an orderActivity.
     
     - GET /beta/orderActivity/{orderActivityId}/tag
     - Get all existing orderActivity tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter orderActivityId: (path) Id of the orderActivity to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getOrderActivityTagsWithRequestBuilder(orderActivityId orderActivityId: Double) -> RequestBuilder<Void> {
        var path = "/beta/orderActivity/{orderActivityId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{orderActivityId}", withString: "\(orderActivityId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update an orderActivity
     
     - parameter body: (body) OrderActivity to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateOrderActivity(body body: OrderActivity, completion: ((error: ErrorType?) -> Void)) {
        updateOrderActivityWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update an orderActivity
     
     - PUT /beta/orderActivity
     - Updates an existing orderActivity using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) OrderActivity to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateOrderActivityWithRequestBuilder(body body: OrderActivity) -> RequestBuilder<Void> {
        let path = "/beta/orderActivity"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
