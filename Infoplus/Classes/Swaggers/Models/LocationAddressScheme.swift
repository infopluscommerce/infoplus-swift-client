//
// LocationAddressScheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class LocationAddressScheme: JSONEncodable {
    public var id: Int32?
    public var clientId: Int32?
    public var name: String?
    public var formatString: String?
    public var locationNamingScheme: String?
    public var locationNumberZeroPadded: Bool?
    public var locationNumberMinimumNumberOfDigits: Int32?
    public var levelNamingScheme: String?
    public var levelNumberZeroPadded: Bool?
    public var levelNumberMinimumNumberOfDigits: Int32?
    public var aisleNamingScheme: String?
    public var aisleNumberZeroPadded: Bool?
    public var aisleNumberMinimumNumberOfDigits: Int32?
    public var bayNamingScheme: String?
    public var bayNumberZeroPadded: Bool?
    public var bayNumberMinimumNumberOfDigits: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["clientId"] = self.clientId?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["formatString"] = self.formatString
        nillableDictionary["locationNamingScheme"] = self.locationNamingScheme
        nillableDictionary["locationNumberZeroPadded"] = self.locationNumberZeroPadded
        nillableDictionary["locationNumberMinimumNumberOfDigits"] = self.locationNumberMinimumNumberOfDigits?.encodeToJSON()
        nillableDictionary["levelNamingScheme"] = self.levelNamingScheme
        nillableDictionary["levelNumberZeroPadded"] = self.levelNumberZeroPadded
        nillableDictionary["levelNumberMinimumNumberOfDigits"] = self.levelNumberMinimumNumberOfDigits?.encodeToJSON()
        nillableDictionary["aisleNamingScheme"] = self.aisleNamingScheme
        nillableDictionary["aisleNumberZeroPadded"] = self.aisleNumberZeroPadded
        nillableDictionary["aisleNumberMinimumNumberOfDigits"] = self.aisleNumberMinimumNumberOfDigits?.encodeToJSON()
        nillableDictionary["bayNamingScheme"] = self.bayNamingScheme
        nillableDictionary["bayNumberZeroPadded"] = self.bayNumberZeroPadded
        nillableDictionary["bayNumberMinimumNumberOfDigits"] = self.bayNumberMinimumNumberOfDigits?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
