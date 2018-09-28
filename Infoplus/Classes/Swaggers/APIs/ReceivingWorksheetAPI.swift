//
// ReceivingWorksheetAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ReceivingWorksheetAPI: APIBase {
    /**
     Create a receivingWorksheet
     
     - parameter body: (body) ReceivingWorksheet to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReceivingWorksheet(body body: ReceivingWorksheet, completion: ((data: ReceivingWorksheet?, error: ErrorType?) -> Void)) {
        addReceivingWorksheetWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a receivingWorksheet
     - POST /beta/receivingWorksheet
     - Inserts a new receivingWorksheet using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "notes" : "notes",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "onTheDock" : false,
  "customFields" : {
    "key" : "{}"
  },
  "vendorId" : 5,
  "serviceLevel" : "serviceLevel",
  "lineItems" : [ {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  }, {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  } ],
  "carrier" : "carrier",
  "workBatchId" : 6,
  "warehouseId" : 6,
  "createdBy" : 7,
  "id" : 0,
  "poNoId" : 1,
  "receivingProcessId" : 2,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "autoCommit" : false,
  "worksheetName" : "worksheetName",
  "lobId" : 5,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter body: (body) ReceivingWorksheet to be inserted. 

     - returns: RequestBuilder<ReceivingWorksheet> 
     */
    public class func addReceivingWorksheetWithRequestBuilder(body body: ReceivingWorksheet) -> RequestBuilder<ReceivingWorksheet> {
        let path = "/beta/receivingWorksheet"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReceivingWorksheet>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new audit for a receivingWorksheet
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to add an audit to 
     - parameter receivingWorksheetAudit: (path) The audit to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReceivingWorksheetAudit(receivingWorksheetId receivingWorksheetId: Int32, receivingWorksheetAudit: String, completion: ((error: ErrorType?) -> Void)) {
        addReceivingWorksheetAuditWithRequestBuilder(receivingWorksheetId: receivingWorksheetId, receivingWorksheetAudit: receivingWorksheetAudit).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new audit for a receivingWorksheet
     - PUT /beta/receivingWorksheet/{receivingWorksheetId}/audit/{receivingWorksheetAudit}
     - Adds an audit to an existing receivingWorksheet.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to add an audit to 
     - parameter receivingWorksheetAudit: (path) The audit to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReceivingWorksheetAuditWithRequestBuilder(receivingWorksheetId receivingWorksheetId: Int32, receivingWorksheetAudit: String) -> RequestBuilder<Void> {
        var path = "/beta/receivingWorksheet/{receivingWorksheetId}/audit/{receivingWorksheetAudit}"
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetId}", withString: "\(receivingWorksheetId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetAudit}", withString: "\(receivingWorksheetAudit)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add new tags for a receivingWorksheet.
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to add a tag to 
     - parameter receivingWorksheetTag: (path) The tag to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addReceivingWorksheetTag(receivingWorksheetId receivingWorksheetId: Int32, receivingWorksheetTag: String, completion: ((error: ErrorType?) -> Void)) {
        addReceivingWorksheetTagWithRequestBuilder(receivingWorksheetId: receivingWorksheetId, receivingWorksheetTag: receivingWorksheetTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add new tags for a receivingWorksheet.
     - PUT /beta/receivingWorksheet/{receivingWorksheetId}/tag/{receivingWorksheetTag}
     - Adds a tag to an existing receivingWorksheet.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to add a tag to 
     - parameter receivingWorksheetTag: (path) The tag to add 

     - returns: RequestBuilder<Void> 
     */
    public class func addReceivingWorksheetTagWithRequestBuilder(receivingWorksheetId receivingWorksheetId: Int32, receivingWorksheetTag: String) -> RequestBuilder<Void> {
        var path = "/beta/receivingWorksheet/{receivingWorksheetId}/tag/{receivingWorksheetTag}"
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetId}", withString: "\(receivingWorksheetId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetTag}", withString: "\(receivingWorksheetTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a receivingWorksheet
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReceivingWorksheet(receivingWorksheetId receivingWorksheetId: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteReceivingWorksheetWithRequestBuilder(receivingWorksheetId: receivingWorksheetId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a receivingWorksheet
     - DELETE /beta/receivingWorksheet/{receivingWorksheetId}
     - Deletes the receivingWorksheet identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReceivingWorksheetWithRequestBuilder(receivingWorksheetId receivingWorksheetId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/receivingWorksheet/{receivingWorksheetId}"
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetId}", withString: "\(receivingWorksheetId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a tag for a receivingWorksheet.
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to remove tag from 
     - parameter receivingWorksheetTag: (path) The tag to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteReceivingWorksheetTag(receivingWorksheetId receivingWorksheetId: Int32, receivingWorksheetTag: String, completion: ((error: ErrorType?) -> Void)) {
        deleteReceivingWorksheetTagWithRequestBuilder(receivingWorksheetId: receivingWorksheetId, receivingWorksheetTag: receivingWorksheetTag).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a tag for a receivingWorksheet.
     - DELETE /beta/receivingWorksheet/{receivingWorksheetId}/tag/{receivingWorksheetTag}
     - Deletes an existing receivingWorksheet tag using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to remove tag from 
     - parameter receivingWorksheetTag: (path) The tag to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteReceivingWorksheetTagWithRequestBuilder(receivingWorksheetId receivingWorksheetId: Int32, receivingWorksheetTag: String) -> RequestBuilder<Void> {
        var path = "/beta/receivingWorksheet/{receivingWorksheetId}/tag/{receivingWorksheetTag}"
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetId}", withString: "\(receivingWorksheetId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetTag}", withString: "\(receivingWorksheetTag)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a duplicated a receivingWorksheet by id
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to be duplicated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDuplicateReceivingWorksheetById(receivingWorksheetId receivingWorksheetId: Int32, completion: ((data: ReceivingWorksheet?, error: ErrorType?) -> Void)) {
        getDuplicateReceivingWorksheetByIdWithRequestBuilder(receivingWorksheetId: receivingWorksheetId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a duplicated a receivingWorksheet by id
     - GET /beta/receivingWorksheet/duplicate/{receivingWorksheetId}
     - Returns a duplicated receivingWorksheet identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "notes" : "notes",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "onTheDock" : false,
  "customFields" : {
    "key" : "{}"
  },
  "vendorId" : 5,
  "serviceLevel" : "serviceLevel",
  "lineItems" : [ {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  }, {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  } ],
  "carrier" : "carrier",
  "workBatchId" : 6,
  "warehouseId" : 6,
  "createdBy" : 7,
  "id" : 0,
  "poNoId" : 1,
  "receivingProcessId" : 2,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "autoCommit" : false,
  "worksheetName" : "worksheetName",
  "lobId" : 5,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to be duplicated. 

     - returns: RequestBuilder<ReceivingWorksheet> 
     */
    public class func getDuplicateReceivingWorksheetByIdWithRequestBuilder(receivingWorksheetId receivingWorksheetId: Int32) -> RequestBuilder<ReceivingWorksheet> {
        var path = "/beta/receivingWorksheet/duplicate/{receivingWorksheetId}"
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetId}", withString: "\(receivingWorksheetId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReceivingWorksheet>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Search receivingWorksheets by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReceivingWorksheetByFilter(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil, completion: ((data: [ReceivingWorksheet]?, error: ErrorType?) -> Void)) {
        getReceivingWorksheetByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search receivingWorksheets by filter
     - GET /beta/receivingWorksheet/search
     - Returns the list of receivingWorksheets that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "notes" : "notes",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "onTheDock" : false,
  "customFields" : {
    "key" : "{}"
  },
  "vendorId" : 5,
  "serviceLevel" : "serviceLevel",
  "lineItems" : [ {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  }, {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  } ],
  "carrier" : "carrier",
  "workBatchId" : 6,
  "warehouseId" : 6,
  "createdBy" : 7,
  "id" : 0,
  "poNoId" : 1,
  "receivingProcessId" : 2,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "autoCommit" : false,
  "worksheetName" : "worksheetName",
  "lobId" : 5,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}, {
  "notes" : "notes",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "onTheDock" : false,
  "customFields" : {
    "key" : "{}"
  },
  "vendorId" : 5,
  "serviceLevel" : "serviceLevel",
  "lineItems" : [ {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  }, {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  } ],
  "carrier" : "carrier",
  "workBatchId" : 6,
  "warehouseId" : 6,
  "createdBy" : 7,
  "id" : 0,
  "poNoId" : 1,
  "receivingProcessId" : 2,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "autoCommit" : false,
  "worksheetName" : "worksheetName",
  "lobId" : 5,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[ReceivingWorksheet]> 
     */
    public class func getReceivingWorksheetByFilterWithRequestBuilder(filter filter: String? = nil, page: Int32? = nil, limit: Int32? = nil, sort: String? = nil) -> RequestBuilder<[ReceivingWorksheet]> {
        let path = "/beta/receivingWorksheet/search"
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sort": sort
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ReceivingWorksheet]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a receivingWorksheet by id
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReceivingWorksheetById(receivingWorksheetId receivingWorksheetId: Int32, completion: ((data: ReceivingWorksheet?, error: ErrorType?) -> Void)) {
        getReceivingWorksheetByIdWithRequestBuilder(receivingWorksheetId: receivingWorksheetId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a receivingWorksheet by id
     - GET /beta/receivingWorksheet/{receivingWorksheetId}
     - Returns the receivingWorksheet identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "notes" : "notes",
  "modifyDate" : "2000-01-23T04:56:07.000+00:00",
  "onTheDock" : false,
  "customFields" : {
    "key" : "{}"
  },
  "vendorId" : 5,
  "serviceLevel" : "serviceLevel",
  "lineItems" : [ {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  }, {
    "sku2" : "sku2",
    "unreceivedQty" : 2,
    "prevReceivedQty" : 3,
    "weightPerWrap" : 6.8468526983526398765889098285697400569915771484375,
    "revisionDate" : "revisionDate",
    "customFields" : {
      "key" : "{}"
    },
    "origin" : "origin",
    "weightPerCase" : 7.4577447736837658709418974467553198337554931640625,
    "fullDescription" : "fullDescription",
    "cartonWidth" : 4.9652184929849543237878606305457651615142822265625,
    "unitsPerCase" : 1,
    "cartonLength" : 1.173074250955943309548956676735542714595794677734375,
    "receivingQty" : 4,
    "wrapCode" : "wrapCode",
    "unitCode" : "unitCode",
    "sku" : "sku",
    "quantityPerInnerPack" : 1,
    "expirationDate" : "2000-01-23T04:56:07.000+00:00",
    "unitsPerWrap" : 7,
    "quantity" : 9,
    "quantityPerPallet" : 1,
    "productionLot" : "productionLot",
    "orderedQty" : 9,
    "productIdTag" : "productIdTag",
    "putAwayPlans" : [ {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    }, {
      "quantity" : 9,
      "customFields" : {
        "key" : "{}"
      }
    } ],
    "cartonHeight" : 5.02500479152029466689555192715488374233245849609375
  } ],
  "carrier" : "carrier",
  "workBatchId" : 6,
  "warehouseId" : 6,
  "createdBy" : 7,
  "id" : 0,
  "poNoId" : 1,
  "receivingProcessId" : 2,
  "dockDate" : "2000-01-23T04:56:07.000+00:00",
  "autoCommit" : false,
  "worksheetName" : "worksheetName",
  "lobId" : 5,
  "status" : "status",
  "createDate" : "2000-01-23T04:56:07.000+00:00"
}}]
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to be returned. 

     - returns: RequestBuilder<ReceivingWorksheet> 
     */
    public class func getReceivingWorksheetByIdWithRequestBuilder(receivingWorksheetId receivingWorksheetId: Int32) -> RequestBuilder<ReceivingWorksheet> {
        var path = "/beta/receivingWorksheet/{receivingWorksheetId}"
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetId}", withString: "\(receivingWorksheetId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ReceivingWorksheet>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the tags for a receivingWorksheet.
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to get tags for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getReceivingWorksheetTags(receivingWorksheetId receivingWorksheetId: Int32, completion: ((error: ErrorType?) -> Void)) {
        getReceivingWorksheetTagsWithRequestBuilder(receivingWorksheetId: receivingWorksheetId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get the tags for a receivingWorksheet.
     - GET /beta/receivingWorksheet/{receivingWorksheetId}/tag
     - Get all existing receivingWorksheet tags.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter receivingWorksheetId: (path) Id of the receivingWorksheet to get tags for 

     - returns: RequestBuilder<Void> 
     */
    public class func getReceivingWorksheetTagsWithRequestBuilder(receivingWorksheetId receivingWorksheetId: Int32) -> RequestBuilder<Void> {
        var path = "/beta/receivingWorksheet/{receivingWorksheetId}/tag"
        path = path.stringByReplacingOccurrencesOfString("{receivingWorksheetId}", withString: "\(receivingWorksheetId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a receivingWorksheet
     
     - parameter body: (body) ReceivingWorksheet to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateReceivingWorksheet(body body: ReceivingWorksheet, completion: ((error: ErrorType?) -> Void)) {
        updateReceivingWorksheetWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a receivingWorksheet
     - PUT /beta/receivingWorksheet
     - Updates an existing receivingWorksheet using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ReceivingWorksheet to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReceivingWorksheetWithRequestBuilder(body body: ReceivingWorksheet) -> RequestBuilder<Void> {
        let path = "/beta/receivingWorksheet"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a receivingWorksheet custom fields
     
     - parameter body: (body) ReceivingWorksheet to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateReceivingWorksheetCustomFields(body body: ReceivingWorksheet, completion: ((error: ErrorType?) -> Void)) {
        updateReceivingWorksheetCustomFieldsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a receivingWorksheet custom fields
     - PUT /beta/receivingWorksheet/customFields
     - Updates an existing receivingWorksheet custom fields using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) ReceivingWorksheet to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateReceivingWorksheetCustomFieldsWithRequestBuilder(body body: ReceivingWorksheet) -> RequestBuilder<Void> {
        let path = "/beta/receivingWorksheet/customFields"
        let URLString = InfoplusAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}