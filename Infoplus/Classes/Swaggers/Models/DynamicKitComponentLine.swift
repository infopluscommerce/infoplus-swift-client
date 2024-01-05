//
// DynamicKitComponentLine.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class DynamicKitComponentLine: JSONEncodable {
    public var lobId: Int32?
    public var sku: String?
    public var perKitQuantity: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["perKitQuantity"] = self.perKitQuantity?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
