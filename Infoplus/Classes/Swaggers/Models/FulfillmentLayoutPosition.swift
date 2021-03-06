//
// FulfillmentLayoutPosition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FulfillmentLayoutPosition: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var fulfillmentProcessId: Int32?
    public var lobId: Int32?
    public var pickPosition: String?
    public var layoutPosition: String?
    public var sku: String?
    public var quantity: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["fulfillmentProcessId"] = self.fulfillmentProcessId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["pickPosition"] = self.pickPosition
        nillableDictionary["layoutPosition"] = self.layoutPosition
        nillableDictionary["sku"] = self.sku
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
