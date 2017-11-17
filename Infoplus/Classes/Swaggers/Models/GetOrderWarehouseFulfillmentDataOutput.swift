//
// GetOrderWarehouseFulfillmentDataOutput.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class GetOrderWarehouseFulfillmentDataOutput: JSONEncodable {

    public var rawData: [String:OrderWarehouseFulfillmentRawData]?
    public var planList: [OrderWarehouseFulfillmentPlan]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["rawData"] = self.rawData?.encodeToJSON()
        nillableDictionary["planList"] = self.planList?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
