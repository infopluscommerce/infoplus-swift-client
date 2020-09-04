//
// ReceivingProcess.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ReceivingProcess: JSONEncodable {
    public var id: Int32?
    public var warehouseId: Int32?
    public var status: String?
    public var workBatchId: Int32?
    public var receivingWorksheetId: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["workBatchId"] = self.workBatchId?.encodeToJSON()
        nillableDictionary["receivingWorksheetId"] = self.receivingWorksheetId?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}