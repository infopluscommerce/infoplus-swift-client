//
// BillOfLadingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class BillOfLadingAPI: APIBase {
    /**
     
     Create a billOfLading
     
     - parameter body: (body) BillOfLading to be inserted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addBillOfLading(body body: BillOfLading, completion: ((data: BillOfLading?, error: ErrorType?) -> Void)) {
        addBillOfLadingWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Create a billOfLading
     
     - POST /v1.0/billOfLading
     - Inserts a new billOfLading using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "shipToAddress" : "aeiou",
  "trailerNo" : "aeiou",
  "scac" : "aeiou",
  "shipFromZip" : "aeiou",
  "billToState" : "aeiou",
  "customerCheckAcceptable" : true,
  "isThisAMasterBOL" : true,
  "isShipToFOB" : true,
  "isTrailerLoadedByShipper" : true,
  "sid" : "aeiou",
  "billToCity" : "aeiou",
  "thirdParty" : true,
  "shipToCity" : "aeiou",
  "billToAddress" : "aeiou",
  "proNo" : "aeiou",
  "shipToZip" : "aeiou",
  "billToZip" : "aeiou",
  "bolDate" : "2000-01-23T04:56:07.000+0000",
  "carrierName" : "aeiou",
  "codAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "byDriver" : true,
  "id" : 123,
  "byDriverPieces" : true,
  "shipFromName" : "aeiou",
  "shipToState" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "orderInfoLines" : [ {
    "palletslip" : true,
    "noPackages" : 123,
    "weight" : 123,
    "additionalShipperInfo" : "aeiou",
    "customerOrderNo" : "aeiou"
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "sealNo" : "aeiou",
  "shipFromState" : "aeiou",
  "isFreightCountedByShipper" : true,
  "carrierInfoLines" : [ {
    "seqNo" : 123,
    "carrierClass" : "aeiou",
    "huQuantity" : 123,
    "huType" : "aeiou",
    "commodityDescription" : "aeiou",
    "weight" : 123,
    "nfmcNo" : "aeiou",
    "packageQuantity" : 123,
    "isHazardousMaterial" : true,
    "packageType" : "aeiou"
  } ],
  "masterBOLId" : 123,
  "prepaid" : true,
  "billToName" : "aeiou",
  "shipToLocationNo" : "aeiou",
  "isShipFromFOB" : true,
  "feeTermsPrepaid" : true,
  "byDriverPallets" : true,
  "shipFromAddress" : "aeiou",
  "specialInstructions" : "aeiou",
  "bolNo" : "aeiou",
  "shipFromCity" : "aeiou",
  "shipToName" : "aeiou",
  "feeTermsCollect" : true,
  "collect" : true,
  "cid" : "aeiou"
}}]
     
     - parameter body: (body) BillOfLading to be inserted. 

     - returns: RequestBuilder<BillOfLading> 
     */
    public class func addBillOfLadingWithRequestBuilder(body body: BillOfLading) -> RequestBuilder<BillOfLading> {
        let path = "/v1.0/billOfLading"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<BillOfLading>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Delete a billOfLading
     
     - parameter billOfLadingId: (path) Id of the billOfLading to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteBillOfLading(billOfLadingId billOfLadingId: Int, completion: ((error: ErrorType?) -> Void)) {
        deleteBillOfLadingWithRequestBuilder(billOfLadingId: billOfLadingId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Delete a billOfLading
     
     - DELETE /v1.0/billOfLading/{billOfLadingId}
     - Deletes the billOfLading identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter billOfLadingId: (path) Id of the billOfLading to be deleted. 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteBillOfLadingWithRequestBuilder(billOfLadingId billOfLadingId: Int) -> RequestBuilder<Void> {
        var path = "/v1.0/billOfLading/{billOfLadingId}"
        path = path.stringByReplacingOccurrencesOfString("{billOfLadingId}", withString: "\(billOfLadingId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Search billOfLadings by filter
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBillOfLadingByFilter(filter filter: String?, page: Int?, limit: Int?, sort: String?, completion: ((data: [BillOfLading]?, error: ErrorType?) -> Void)) {
        getBillOfLadingByFilterWithRequestBuilder(filter: filter, page: page, limit: limit, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Search billOfLadings by filter
     
     - GET /v1.0/billOfLading/search
     - Returns the list of billOfLadings that match the given filter.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example=[ {
  "shipToAddress" : "aeiou",
  "trailerNo" : "aeiou",
  "scac" : "aeiou",
  "shipFromZip" : "aeiou",
  "billToState" : "aeiou",
  "customerCheckAcceptable" : true,
  "isThisAMasterBOL" : true,
  "isShipToFOB" : true,
  "isTrailerLoadedByShipper" : true,
  "sid" : "aeiou",
  "billToCity" : "aeiou",
  "thirdParty" : true,
  "shipToCity" : "aeiou",
  "billToAddress" : "aeiou",
  "proNo" : "aeiou",
  "shipToZip" : "aeiou",
  "billToZip" : "aeiou",
  "bolDate" : "2000-01-23T04:56:07.000+0000",
  "carrierName" : "aeiou",
  "codAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "byDriver" : true,
  "id" : 123,
  "byDriverPieces" : true,
  "shipFromName" : "aeiou",
  "shipToState" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "orderInfoLines" : [ {
    "palletslip" : true,
    "noPackages" : 123,
    "weight" : 123,
    "additionalShipperInfo" : "aeiou",
    "customerOrderNo" : "aeiou"
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "sealNo" : "aeiou",
  "shipFromState" : "aeiou",
  "isFreightCountedByShipper" : true,
  "carrierInfoLines" : [ {
    "seqNo" : 123,
    "carrierClass" : "aeiou",
    "huQuantity" : 123,
    "huType" : "aeiou",
    "commodityDescription" : "aeiou",
    "weight" : 123,
    "nfmcNo" : "aeiou",
    "packageQuantity" : 123,
    "isHazardousMaterial" : true,
    "packageType" : "aeiou"
  } ],
  "masterBOLId" : 123,
  "prepaid" : true,
  "billToName" : "aeiou",
  "shipToLocationNo" : "aeiou",
  "isShipFromFOB" : true,
  "feeTermsPrepaid" : true,
  "byDriverPallets" : true,
  "shipFromAddress" : "aeiou",
  "specialInstructions" : "aeiou",
  "bolNo" : "aeiou",
  "shipFromCity" : "aeiou",
  "shipToName" : "aeiou",
  "feeTermsCollect" : true,
  "collect" : true,
  "cid" : "aeiou"
} ]}]
     
     - parameter filter: (query) Query string, used to filter results. (optional)
     - parameter page: (query) Result page number.  Defaults to 1. (optional)
     - parameter limit: (query) Maximum results per page.  Defaults to 20.  Max allowed value is 250. (optional)
     - parameter sort: (query) Sort results by specified field. (optional)

     - returns: RequestBuilder<[BillOfLading]> 
     */
    public class func getBillOfLadingByFilterWithRequestBuilder(filter filter: String?, page: Int?, limit: Int?, sort: String?) -> RequestBuilder<[BillOfLading]> {
        let path = "/v1.0/billOfLading/search"
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "filter": filter,
            "page": page,
            "limit": limit,
            "sort": sort
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[BillOfLading]>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Get a billOfLading by id
     
     - parameter billOfLadingId: (path) Id of the billOfLading to be returned. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getBillOfLadingById(billOfLadingId billOfLadingId: Int, completion: ((data: BillOfLading?, error: ErrorType?) -> Void)) {
        getBillOfLadingByIdWithRequestBuilder(billOfLadingId: billOfLadingId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a billOfLading by id
     
     - GET /v1.0/billOfLading/{billOfLadingId}
     - Returns the billOfLading identified by the specified id.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     - examples: [{contentType=application/json, example={
  "shipToAddress" : "aeiou",
  "trailerNo" : "aeiou",
  "scac" : "aeiou",
  "shipFromZip" : "aeiou",
  "billToState" : "aeiou",
  "customerCheckAcceptable" : true,
  "isThisAMasterBOL" : true,
  "isShipToFOB" : true,
  "isTrailerLoadedByShipper" : true,
  "sid" : "aeiou",
  "billToCity" : "aeiou",
  "thirdParty" : true,
  "shipToCity" : "aeiou",
  "billToAddress" : "aeiou",
  "proNo" : "aeiou",
  "shipToZip" : "aeiou",
  "billToZip" : "aeiou",
  "bolDate" : "2000-01-23T04:56:07.000+0000",
  "carrierName" : "aeiou",
  "codAmount" : 1.3579000000000001069366817318950779736042022705078125,
  "byDriver" : true,
  "id" : 123,
  "byDriverPieces" : true,
  "shipFromName" : "aeiou",
  "shipToState" : "aeiou",
  "createDate" : "2000-01-23T04:56:07.000+0000",
  "lobId" : 123,
  "orderInfoLines" : [ {
    "palletslip" : true,
    "noPackages" : 123,
    "weight" : 123,
    "additionalShipperInfo" : "aeiou",
    "customerOrderNo" : "aeiou"
  } ],
  "modifyDate" : "2000-01-23T04:56:07.000+0000",
  "sealNo" : "aeiou",
  "shipFromState" : "aeiou",
  "isFreightCountedByShipper" : true,
  "carrierInfoLines" : [ {
    "seqNo" : 123,
    "carrierClass" : "aeiou",
    "huQuantity" : 123,
    "huType" : "aeiou",
    "commodityDescription" : "aeiou",
    "weight" : 123,
    "nfmcNo" : "aeiou",
    "packageQuantity" : 123,
    "isHazardousMaterial" : true,
    "packageType" : "aeiou"
  } ],
  "masterBOLId" : 123,
  "prepaid" : true,
  "billToName" : "aeiou",
  "shipToLocationNo" : "aeiou",
  "isShipFromFOB" : true,
  "feeTermsPrepaid" : true,
  "byDriverPallets" : true,
  "shipFromAddress" : "aeiou",
  "specialInstructions" : "aeiou",
  "bolNo" : "aeiou",
  "shipFromCity" : "aeiou",
  "shipToName" : "aeiou",
  "feeTermsCollect" : true,
  "collect" : true,
  "cid" : "aeiou"
}}]
     
     - parameter billOfLadingId: (path) Id of the billOfLading to be returned. 

     - returns: RequestBuilder<BillOfLading> 
     */
    public class func getBillOfLadingByIdWithRequestBuilder(billOfLadingId billOfLadingId: Int) -> RequestBuilder<BillOfLading> {
        var path = "/v1.0/billOfLading/{billOfLadingId}"
        path = path.stringByReplacingOccurrencesOfString("{billOfLadingId}", withString: "\(billOfLadingId)", options: .LiteralSearch, range: nil)
        let URLString = InfoplusAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<BillOfLading>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Update a billOfLading
     
     - parameter body: (body) BillOfLading to be updated. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateBillOfLading(body body: BillOfLading, completion: ((error: ErrorType?) -> Void)) {
        updateBillOfLadingWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     
     Update a billOfLading
     
     - PUT /v1.0/billOfLading
     - Updates an existing billOfLading using the specified data.
     - API Key:
       - type: apiKey API-Key 
       - name: api_key
     
     - parameter body: (body) BillOfLading to be updated. 

     - returns: RequestBuilder<Void> 
     */
    public class func updateBillOfLadingWithRequestBuilder(body body: BillOfLading) -> RequestBuilder<Void> {
        let path = "/v1.0/billOfLading"
        let URLString = InfoplusAPI.basePath + path
        
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = InfoplusAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
