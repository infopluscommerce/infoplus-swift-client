//
// OrderWarehouseFulfillmentPlanDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderWarehouseFulfillmentPlanDetail: JSONEncodable {

    public var warehouseId: Int?
    public var carrierCode: Int?
    public var lineItemList: [String]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["warehouseId"] = self.warehouseId
        nillableDictionary["carrierCode"] = self.carrierCode
        nillableDictionary["lineItemList"] = self.lineItemList?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
