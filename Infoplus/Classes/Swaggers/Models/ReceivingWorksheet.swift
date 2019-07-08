//
// ReceivingWorksheet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ReceivingWorksheet: JSONEncodable {
    public var id: Int32?
    public var warehouseId: Int32?
    public var poNoId: Int32?
    public var lobId: Int32?
    public var vendorId: Int32?
    public var status: String?
    public var serviceLevel: String?
    public var receivingProcessId: Int32?
    public var dockDate: NSDate?
    public var createdBy: Int32?
    public var worksheetName: String?
    public var carrier: String?
    public var onTheDock: Bool?
    public var autoCommit: Bool?
    public var lineItems: [ReceivingWorksheetLineItem]?
    public var notes: String?
    public var workBatchId: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["poNoId"] = self.poNoId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["vendorId"] = self.vendorId?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["serviceLevel"] = self.serviceLevel
        nillableDictionary["receivingProcessId"] = self.receivingProcessId?.encodeToJSON()
        nillableDictionary["dockDate"] = self.dockDate?.encodeToJSON()
        nillableDictionary["createdBy"] = self.createdBy?.encodeToJSON()
        nillableDictionary["worksheetName"] = self.worksheetName
        nillableDictionary["carrier"] = self.carrier
        nillableDictionary["onTheDock"] = self.onTheDock
        nillableDictionary["autoCommit"] = self.autoCommit
        nillableDictionary["lineItems"] = self.lineItems?.encodeToJSON()
        nillableDictionary["notes"] = self.notes
        nillableDictionary["workBatchId"] = self.workBatchId?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}