//
// InvoiceTemplateLinePriceLevel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InvoiceTemplateLinePriceLevel: JSONEncodable {
    public var id: Int32?
    public var quantity: Int32?
    public var rate: Double?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["rate"] = self.rate
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
