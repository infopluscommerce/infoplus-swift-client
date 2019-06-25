//
// CustomerInvoiceTemplateLine.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CustomerInvoiceTemplateLine: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var lobId: Int32?
    public var description: String?
    public var seqNo: Int32?
    public var accountCode: String?
    public var active: Bool?
    public var includeIfZero: Bool?
    public var department: String?
    public var itemCode: String?
    public var invoiceTemplateId: Int32?
    public var billingRuleId: Int32?
    public var priceLevelMode: String?
    public var scriptId: Int32?
    public var priceLevelList: [InvoiceTemplateLinePriceLevel]?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["seqNo"] = self.seqNo?.encodeToJSON()
        nillableDictionary["accountCode"] = self.accountCode
        nillableDictionary["active"] = self.active
        nillableDictionary["includeIfZero"] = self.includeIfZero
        nillableDictionary["department"] = self.department
        nillableDictionary["itemCode"] = self.itemCode
        nillableDictionary["invoiceTemplateId"] = self.invoiceTemplateId?.encodeToJSON()
        nillableDictionary["billingRuleId"] = self.billingRuleId?.encodeToJSON()
        nillableDictionary["priceLevelMode"] = self.priceLevelMode
        nillableDictionary["scriptId"] = self.scriptId?.encodeToJSON()
        nillableDictionary["priceLevelList"] = self.priceLevelList?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
