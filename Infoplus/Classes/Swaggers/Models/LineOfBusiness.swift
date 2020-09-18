//
// LineOfBusiness.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class LineOfBusiness: JSONEncodable {
    public var id: Int32?
    public var name: String?
    public var code: String?
    public var label: String?
    public var defaultWarehouseServiceTypeId: Int32?
    public var defaultSLAServiceDays: Int32?
    public var defaultSLACutoffTime: String?
    public var onHold: Bool?
    public var onHoldReason: String?
    public var gs1CompanyPrefix: String?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["code"] = self.code
        nillableDictionary["label"] = self.label
        nillableDictionary["defaultWarehouseServiceTypeId"] = self.defaultWarehouseServiceTypeId?.encodeToJSON()
        nillableDictionary["defaultSLAServiceDays"] = self.defaultSLAServiceDays?.encodeToJSON()
        nillableDictionary["defaultSLACutoffTime"] = self.defaultSLACutoffTime
        nillableDictionary["onHold"] = self.onHold
        nillableDictionary["onHoldReason"] = self.onHoldReason
        nillableDictionary["gs1CompanyPrefix"] = self.gs1CompanyPrefix
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
