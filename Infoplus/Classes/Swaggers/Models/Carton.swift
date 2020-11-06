//
// Carton.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Carton: JSONEncodable {
    public var id: Int32?
    public var orderNo: Double?
    public var cartonNo: Int32?
    public var cartonTypeId: Int32?
    public var cartonLPN: String?
    public var weightLbs: Double?
    public var layoutPosition: String?
    public var lobId: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["cartonNo"] = self.cartonNo?.encodeToJSON()
        nillableDictionary["cartonTypeId"] = self.cartonTypeId?.encodeToJSON()
        nillableDictionary["cartonLPN"] = self.cartonLPN
        nillableDictionary["weightLbs"] = self.weightLbs
        nillableDictionary["layoutPosition"] = self.layoutPosition
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
