//
// ParcelAccount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ParcelAccount: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var carrierCompany: String?
    public var accountNo: String?
    public var lobId: Int32?
    public var orderSourceId: Int32?
    public var client: Int32?
    public var ipcDatabaseId: Int32?
    public var name: String?
    public var manifestPartnerId: String?
    public var manifestPartnerCredentials: String?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["carrierCompany"] = self.carrierCompany
        nillableDictionary["accountNo"] = self.accountNo
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["orderSourceId"] = self.orderSourceId?.encodeToJSON()
        nillableDictionary["client"] = self.client?.encodeToJSON()
        nillableDictionary["ipcDatabaseId"] = self.ipcDatabaseId?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["manifestPartnerId"] = self.manifestPartnerId
        nillableDictionary["manifestPartnerCredentials"] = self.manifestPartnerCredentials
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
