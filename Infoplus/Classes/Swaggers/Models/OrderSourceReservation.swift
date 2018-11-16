//
// OrderSourceReservation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderSourceReservation: JSONEncodable {
    public var id: Int32?
    public var orderSourceId: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var reservedQuantity: Int32?
    public var customFields: [String:AnyObject]?
    public var sku: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["orderSourceId"] = self.orderSourceId?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["reservedQuantity"] = self.reservedQuantity?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
