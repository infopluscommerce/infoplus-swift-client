//
// InvoiceWorksheetLine.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InvoiceWorksheetLine: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var lobId: Int32?
    public var seqNo: Int32?
    public var description: String?
    public var accountCode: String?
    public var department: String?
    public var itemCode: String?
    public var quantity: Double?
    public var chargeRate: Double?
    public var extendedCharge: Double?
    public var backupFile: Int32?
    public var backupDocument: String?
    public var invoiceWorksheetId: Int32?
    public var invoiceTemplateLineId: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["seqNo"] = self.seqNo?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["accountCode"] = self.accountCode
        nillableDictionary["department"] = self.department
        nillableDictionary["itemCode"] = self.itemCode
        nillableDictionary["quantity"] = self.quantity
        nillableDictionary["chargeRate"] = self.chargeRate
        nillableDictionary["extendedCharge"] = self.extendedCharge
        nillableDictionary["backupFile"] = self.backupFile?.encodeToJSON()
        nillableDictionary["backupDocument"] = self.backupDocument
        nillableDictionary["invoiceWorksheetId"] = self.invoiceWorksheetId?.encodeToJSON()
        nillableDictionary["invoiceTemplateLineId"] = self.invoiceTemplateLineId?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
