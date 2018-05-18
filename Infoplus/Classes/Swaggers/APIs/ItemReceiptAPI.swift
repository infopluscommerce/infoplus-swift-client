//
// ItemReceiptAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ItemReceiptAPI: APIBase {
    /**
     Add new audit for an itemReceipt
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to add an audit to 
     - parameter itemReceiptAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemReceiptAudit(itemReceiptId itemReceiptId: Int32, itemReceiptAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addItemReceiptAuditWithRequestBuilder(itemReceiptId: itemReceiptId, itemReceiptAudit: itemReceiptAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for an itemReceipt
     - PUT /beta/itemReceipt/{itemReceiptId}/audit/{itemReceiptAudit}
     - Adds an audit to an existing itemReceipt.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to add an audit to 
     - parameter itemReceiptAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemReceiptAuditWithRequestBuilder(itemReceiptId itemReceiptId: Int32, itemReceiptAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/itemReceipt/{itemReceiptId}/audit/{itemReceiptAudit}"
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptId}", withString: "\(itemReceiptId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptAudit}", withString: "\(itemReceiptAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for an itemReceipt.
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to add a tag to 
     - parameter itemReceiptTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addItemReceiptTag(itemReceiptId itemReceiptId: Int32, itemReceiptTag: String, completion: ((error: ErrorType?) -> Void)) {
        addItemReceiptTagWithRequestBuilder(itemReceiptId: itemReceiptId, itemReceiptTag: itemReceiptTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for an itemReceipt.
     - PUT /beta/itemReceipt/{itemReceiptId}/tag/{itemReceiptTag}
     - Adds a tag to an existing itemReceipt.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to add a tag to 
     - parameter itemReceiptTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addItemReceiptTagWithRequestBuilder(itemReceiptId itemReceiptId: Int32, itemReceiptTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemReceipt/{itemReceiptId}/tag/{itemReceiptTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptId}", withString: "\(itemReceiptId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptTag}", withString: "\(itemReceiptTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for an itemReceipt.
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to remove tag from 
     - parameter itemReceiptTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteItemReceiptTag(itemReceiptId itemReceiptId: Int32, itemReceiptTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteItemReceiptTagWithRequestBuilder(itemReceiptId: itemReceiptId, itemReceiptTag: itemReceiptTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for an itemReceipt.
     - DELETE /beta/itemReceipt/{itemReceiptId}/tag/{itemReceiptTag}
     - Deletes an existing itemReceipt tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to remove tag from 
     - parameter itemReceiptTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteItemReceiptTagWithRequestBuilder(itemReceiptId itemReceiptId: Int32, itemReceiptTag: String) -> RequestBuilder<Void> {
        var path = "/beta/itemReceipt/{itemReceiptId}/tag/{itemReceiptTag}"
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptId}", withString: "\(itemReceiptId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptTag}", withString: "\(itemReceiptTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated an itemReceipt by id
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateItemReceiptById(itemReceiptId itemReceiptId: Int32, completion: ((data: ItemReceipt?, error: ErrorType?) -> Void)) {
        getDuplicateItemReceiptByIdWithRequestBuilder(itemReceiptId: itemReceiptId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated an itemReceipt by id
     - GET /beta/itemReceipt/duplicate/{itemReceiptId}
     - Returns a duplicated itemReceipt identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "sampleTo" : "sampleTo",
  "budgetCode" : "budgetCode",
  "interimFact" : 5.94489560761401580890606055618263781070709228515625,
  "legacyPoNo" : "legacyPoNo",
  "weightPerWrap" : 6.70401929795003592715829654480330646038055419921875,
  "vendorId" : 3,
  "sellPrice" : 7.4577447736837658709418974467553198337554931640625,
  "oddQuantity" : 8,
  "orderQuantity" : 1,
  "voidDate" : "2000-01-23T04:56:07.000+00:00",
  "revDate" : "revDate",
  "unitsPerCase" : 0,
  "lineNo" : 7,
  "unitsPerInnerPack" : 6,
  "unitCode" : "unitCode",
  "id" : 9,
  "sku" : "sku",
  "unitsPerPallet" : 4,
  "pricingPer" : "pricingPer",
  "receivedDate" : "2000-01-23T04:56:07.000+00:00",
  "mlCost" : 1.231513536777255612975068288506008684635162353515625,
  "lobId" : 2,
  "height" : 7.7403518187411730622216055053286254405975341796875,
  "chargeFreight" : "chargeFreight",
  "accountingCode" : "accountingCode",
  "taxExempt" : "taxExempt",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "upc" : "upc",
  "artBack" : "artBack",
  "lastAct" : "2000-01-23T04:56:07.000+00:00",
  "capitalize" : "capitalize",
  "warehouseId" : 4,
  "maxUnders" : 9,
  "interimQuantity" : 6,
  "receivedQuantity" : 6,
  "receiptNo" : 0,
  "requestedDeliveryDate" : "2000-01-23T04:56:07.000+00:00",
  "poNoId" : 3,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "asnLine" : 5,
  "orderDate" : "2000-01-23T04:56:07.000+00:00",
  "factCost" : 7.3862819483858839220147274318151175975799560546875,
  "endQuantity" : 6,
  "maxFreight" : 1.173074250955943309548956676735542714595794677734375,
  "norcs" : "norcs",
  "mlVendor" : 7,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : "origin",
  "endFact" : 2.884162126668780246063761296682059764862060546875,
  "fullDescription" : "fullDescription",
  "enteredBy" : "enteredBy",
  "caseWeight" : 8.9695787981969115065794539987109601497650146484375,
  "distDate" : "2000-01-23T04:56:07.000+00:00",
  "endVal" : 1.2846590061165319429647979632136411964893341064453125,
  "wrapCode" : "wrapCode",
  "sfpComplete" : "sfpComplete",
  "bsVendor" : 3,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00",
  "receivedBy" : "receivedBy",
  "unitsPerWrap" : 1,
  "cost" : 6.8468526983526398765889098285697400569915771484375,
  "interimVal" : 6.87805222012787620400331434211693704128265380859375,
  "length" : 3.05761002410493443193217899533919990062713623046875,
  "maxOvers" : 9,
  "productIdTag" : "productIdTag",
  "impressions" : 7,
  "sample" : 5,
  "fromProd" : 3,
  "vendorSKU" : "vendorSKU",
  "paidFull" : "paidFull",
  "prodLot" : "prodLot",
  "width" : 3.02057969929162428712743349024094641208648681640625,
  "receivedSfp" : 6,
  "accrual" : "accrual",
  "freightCost" : 9.0183481860707832566959041287191212177276611328125,
  "maxOther" : 4.9652184929849543237878606305457651615142822265625,
  "freezeAction" : "freezeAction"
}}]
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to be duplicated. 

     - returns: RequestBuilder<ItemReceipt> 
     */
    public class func getDuplicateItemReceiptByIdWithRequestBuilder(itemReceiptId itemReceiptId: Int32) -> RequestBuilder<ItemReceipt> {
        var path = "/beta/itemReceipt/duplicate/{itemReceiptId}"
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptId}", withString: "\(itemReceiptId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemReceipt>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search itemReceipts by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemReceiptByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ItemReceipt]?, error: ErrorType?) -> Void)) {
        getItemReceiptByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search itemReceipts by filter
     - GET /beta/itemReceipt/search
     - Returns the list of itemReceipts that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "sampleTo" : "sampleTo",
  "budgetCode" : "budgetCode",
  "interimFact" : 5.94489560761401580890606055618263781070709228515625,
  "legacyPoNo" : "legacyPoNo",
  "weightPerWrap" : 6.70401929795003592715829654480330646038055419921875,
  "vendorId" : 3,
  "sellPrice" : 7.4577447736837658709418974467553198337554931640625,
  "oddQuantity" : 8,
  "orderQuantity" : 1,
  "voidDate" : "2000-01-23T04:56:07.000+00:00",
  "revDate" : "revDate",
  "unitsPerCase" : 0,
  "lineNo" : 7,
  "unitsPerInnerPack" : 6,
  "unitCode" : "unitCode",
  "id" : 9,
  "sku" : "sku",
  "unitsPerPallet" : 4,
  "pricingPer" : "pricingPer",
  "receivedDate" : "2000-01-23T04:56:07.000+00:00",
  "mlCost" : 1.231513536777255612975068288506008684635162353515625,
  "lobId" : 2,
  "height" : 7.7403518187411730622216055053286254405975341796875,
  "chargeFreight" : "chargeFreight",
  "accountingCode" : "accountingCode",
  "taxExempt" : "taxExempt",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "upc" : "upc",
  "artBack" : "artBack",
  "lastAct" : "2000-01-23T04:56:07.000+00:00",
  "capitalize" : "capitalize",
  "warehouseId" : 4,
  "maxUnders" : 9,
  "interimQuantity" : 6,
  "receivedQuantity" : 6,
  "receiptNo" : 0,
  "requestedDeliveryDate" : "2000-01-23T04:56:07.000+00:00",
  "poNoId" : 3,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "asnLine" : 5,
  "orderDate" : "2000-01-23T04:56:07.000+00:00",
  "factCost" : 7.3862819483858839220147274318151175975799560546875,
  "endQuantity" : 6,
  "maxFreight" : 1.173074250955943309548956676735542714595794677734375,
  "norcs" : "norcs",
  "mlVendor" : 7,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : "origin",
  "endFact" : 2.884162126668780246063761296682059764862060546875,
  "fullDescription" : "fullDescription",
  "enteredBy" : "enteredBy",
  "caseWeight" : 8.9695787981969115065794539987109601497650146484375,
  "distDate" : "2000-01-23T04:56:07.000+00:00",
  "endVal" : 1.2846590061165319429647979632136411964893341064453125,
  "wrapCode" : "wrapCode",
  "sfpComplete" : "sfpComplete",
  "bsVendor" : 3,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00",
  "receivedBy" : "receivedBy",
  "unitsPerWrap" : 1,
  "cost" : 6.8468526983526398765889098285697400569915771484375,
  "interimVal" : 6.87805222012787620400331434211693704128265380859375,
  "length" : 3.05761002410493443193217899533919990062713623046875,
  "maxOvers" : 9,
  "productIdTag" : "productIdTag",
  "impressions" : 7,
  "sample" : 5,
  "fromProd" : 3,
  "vendorSKU" : "vendorSKU",
  "paidFull" : "paidFull",
  "prodLot" : "prodLot",
  "width" : 3.02057969929162428712743349024094641208648681640625,
  "receivedSfp" : 6,
  "accrual" : "accrual",
  "freightCost" : 9.0183481860707832566959041287191212177276611328125,
  "maxOther" : 4.9652184929849543237878606305457651615142822265625,
  "freezeAction" : "freezeAction"
}, {
  "sampleTo" : "sampleTo",
  "budgetCode" : "budgetCode",
  "interimFact" : 5.94489560761401580890606055618263781070709228515625,
  "legacyPoNo" : "legacyPoNo",
  "weightPerWrap" : 6.70401929795003592715829654480330646038055419921875,
  "vendorId" : 3,
  "sellPrice" : 7.4577447736837658709418974467553198337554931640625,
  "oddQuantity" : 8,
  "orderQuantity" : 1,
  "voidDate" : "2000-01-23T04:56:07.000+00:00",
  "revDate" : "revDate",
  "unitsPerCase" : 0,
  "lineNo" : 7,
  "unitsPerInnerPack" : 6,
  "unitCode" : "unitCode",
  "id" : 9,
  "sku" : "sku",
  "unitsPerPallet" : 4,
  "pricingPer" : "pricingPer",
  "receivedDate" : "2000-01-23T04:56:07.000+00:00",
  "mlCost" : 1.231513536777255612975068288506008684635162353515625,
  "lobId" : 2,
  "height" : 7.7403518187411730622216055053286254405975341796875,
  "chargeFreight" : "chargeFreight",
  "accountingCode" : "accountingCode",
  "taxExempt" : "taxExempt",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "upc" : "upc",
  "artBack" : "artBack",
  "lastAct" : "2000-01-23T04:56:07.000+00:00",
  "capitalize" : "capitalize",
  "warehouseId" : 4,
  "maxUnders" : 9,
  "interimQuantity" : 6,
  "receivedQuantity" : 6,
  "receiptNo" : 0,
  "requestedDeliveryDate" : "2000-01-23T04:56:07.000+00:00",
  "poNoId" : 3,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "asnLine" : 5,
  "orderDate" : "2000-01-23T04:56:07.000+00:00",
  "factCost" : 7.3862819483858839220147274318151175975799560546875,
  "endQuantity" : 6,
  "maxFreight" : 1.173074250955943309548956676735542714595794677734375,
  "norcs" : "norcs",
  "mlVendor" : 7,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : "origin",
  "endFact" : 2.884162126668780246063761296682059764862060546875,
  "fullDescription" : "fullDescription",
  "enteredBy" : "enteredBy",
  "caseWeight" : 8.9695787981969115065794539987109601497650146484375,
  "distDate" : "2000-01-23T04:56:07.000+00:00",
  "endVal" : 1.2846590061165319429647979632136411964893341064453125,
  "wrapCode" : "wrapCode",
  "sfpComplete" : "sfpComplete",
  "bsVendor" : 3,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00",
  "receivedBy" : "receivedBy",
  "unitsPerWrap" : 1,
  "cost" : 6.8468526983526398765889098285697400569915771484375,
  "interimVal" : 6.87805222012787620400331434211693704128265380859375,
  "length" : 3.05761002410493443193217899533919990062713623046875,
  "maxOvers" : 9,
  "productIdTag" : "productIdTag",
  "impressions" : 7,
  "sample" : 5,
  "fromProd" : 3,
  "vendorSKU" : "vendorSKU",
  "paidFull" : "paidFull",
  "prodLot" : "prodLot",
  "width" : 3.02057969929162428712743349024094641208648681640625,
  "receivedSfp" : 6,
  "accrual" : "accrual",
  "freightCost" : 9.0183481860707832566959041287191212177276611328125,
  "maxOther" : 4.9652184929849543237878606305457651615142822265625,
  "freezeAction" : "freezeAction"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ItemReceipt]> 
     */
    public class func getItemReceiptByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ItemReceipt]> {
        let path = "/beta/itemReceipt/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ItemReceipt]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an itemReceipt by id
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemReceiptById(itemReceiptId itemReceiptId: Int32, completion: ((data: ItemReceipt?, error: ErrorType?) -> Void)) {
        getItemReceiptByIdWithRequestBuilder(itemReceiptId: itemReceiptId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get an itemReceipt by id
     - GET /beta/itemReceipt/{itemReceiptId}
     - Returns the itemReceipt identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "sampleTo" : "sampleTo",
  "budgetCode" : "budgetCode",
  "interimFact" : 5.94489560761401580890606055618263781070709228515625,
  "legacyPoNo" : "legacyPoNo",
  "weightPerWrap" : 6.70401929795003592715829654480330646038055419921875,
  "vendorId" : 3,
  "sellPrice" : 7.4577447736837658709418974467553198337554931640625,
  "oddQuantity" : 8,
  "orderQuantity" : 1,
  "voidDate" : "2000-01-23T04:56:07.000+00:00",
  "revDate" : "revDate",
  "unitsPerCase" : 0,
  "lineNo" : 7,
  "unitsPerInnerPack" : 6,
  "unitCode" : "unitCode",
  "id" : 9,
  "sku" : "sku",
  "unitsPerPallet" : 4,
  "pricingPer" : "pricingPer",
  "receivedDate" : "2000-01-23T04:56:07.000+00:00",
  "mlCost" : 1.231513536777255612975068288506008684635162353515625,
  "lobId" : 2,
  "height" : 7.7403518187411730622216055053286254405975341796875,
  "chargeFreight" : "chargeFreight",
  "accountingCode" : "accountingCode",
  "taxExempt" : "taxExempt",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "upc" : "upc",
  "artBack" : "artBack",
  "lastAct" : "2000-01-23T04:56:07.000+00:00",
  "capitalize" : "capitalize",
  "warehouseId" : 4,
  "maxUnders" : 9,
  "interimQuantity" : 6,
  "receivedQuantity" : 6,
  "receiptNo" : 0,
  "requestedDeliveryDate" : "2000-01-23T04:56:07.000+00:00",
  "poNoId" : 3,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "asnLine" : 5,
  "orderDate" : "2000-01-23T04:56:07.000+00:00",
  "factCost" : 7.3862819483858839220147274318151175975799560546875,
  "endQuantity" : 6,
  "maxFreight" : 1.173074250955943309548956676735542714595794677734375,
  "norcs" : "norcs",
  "mlVendor" : 7,
  "customFields" : {
    "key" : "{}"
  },
  "origin" : "origin",
  "endFact" : 2.884162126668780246063761296682059764862060546875,
  "fullDescription" : "fullDescription",
  "enteredBy" : "enteredBy",
  "caseWeight" : 8.9695787981969115065794539987109601497650146484375,
  "distDate" : "2000-01-23T04:56:07.000+00:00",
  "endVal" : 1.2846590061165319429647979632136411964893341064453125,
  "wrapCode" : "wrapCode",
  "sfpComplete" : "sfpComplete",
  "bsVendor" : 3,
  "expirationDate" : "2000-01-23T04:56:07.000+00:00",
  "receivedBy" : "receivedBy",
  "unitsPerWrap" : 1,
  "cost" : 6.8468526983526398765889098285697400569915771484375,
  "interimVal" : 6.87805222012787620400331434211693704128265380859375,
  "length" : 3.05761002410493443193217899533919990062713623046875,
  "maxOvers" : 9,
  "productIdTag" : "productIdTag",
  "impressions" : 7,
  "sample" : 5,
  "fromProd" : 3,
  "vendorSKU" : "vendorSKU",
  "paidFull" : "paidFull",
  "prodLot" : "prodLot",
  "width" : 3.02057969929162428712743349024094641208648681640625,
  "receivedSfp" : 6,
  "accrual" : "accrual",
  "freightCost" : 9.0183481860707832566959041287191212177276611328125,
  "maxOther" : 4.9652184929849543237878606305457651615142822265625,
  "freezeAction" : "freezeAction"
}}]
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to be returned. 

     - returns: RequestBuilder<ItemReceipt> 
     */
    public class func getItemReceiptByIdWithRequestBuilder(itemReceiptId itemReceiptId: Int32) -> RequestBuilder<ItemReceipt> {
        var path = "/beta/itemReceipt/{itemReceiptId}"
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptId}", withString: "\(itemReceiptId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemReceipt>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for an itemReceipt.
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getItemReceiptTags(itemReceiptId itemReceiptId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getItemReceiptTagsWithRequestBuilder(itemReceiptId: itemReceiptId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for an itemReceipt.
     - GET /beta/itemReceipt/{itemReceiptId}/tag
     - Get all existing itemReceipt tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter itemReceiptId: (path) Id of the itemReceipt to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getItemReceiptTagsWithRequestBuilder(itemReceiptId itemReceiptId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/itemReceipt/{itemReceiptId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{itemReceiptId}", withString: "\(itemReceiptId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an itemReceipt
     
     - parameter body: (body) ItemReceipt to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateItemReceipt(body body: ItemReceipt, completion: ((error: ErrorType?) -> Void)) {
        updateItemReceiptWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an itemReceipt
     - PUT /beta/itemReceipt
     - Updates an existing itemReceipt using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ItemReceipt to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateItemReceiptWithRequestBuilder(body body: ItemReceipt) -> RequestBuilder<Void> {
        let path = "/beta/itemReceipt"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an itemReceipt custom fields
     
     - parameter body: (body) ItemReceipt to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateItemReceiptCustomFields(body body: ItemReceipt, completion: ((error: ErrorType?) -> Void)) {
        updateItemReceiptCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an itemReceipt custom fields
     - PUT /beta/itemReceipt/customFields
     - Updates an existing itemReceipt custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ItemReceipt to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateItemReceiptCustomFieldsWithRequestBuilder(body body: ItemReceipt) -> RequestBuilder<Void> {
        let path = "/beta/itemReceipt/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
