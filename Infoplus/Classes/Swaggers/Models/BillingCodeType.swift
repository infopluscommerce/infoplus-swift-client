//
// BillingCodeType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BillingCodeType: JSONEncodable {

    public var id: Int?
    public var clientId: Int?
    public var billingCode: String?
    public var name: String?
    public var description: String?
    public var isActive: Bool?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["clientId"] = self.clientId
        nillableDictionary["billingCode"] = self.billingCode
        nillableDictionary["name"] = self.name
        nillableDictionary["description"] = self.description
        nillableDictionary["isActive"] = self.isActive
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
