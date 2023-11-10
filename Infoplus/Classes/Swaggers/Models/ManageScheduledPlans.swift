//
// ManageScheduledPlans.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ManageScheduledPlans: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var description: String?
    public var scheduledplantypeid: Int32?
    public var planid: Int32?
    public var active: Bool?
    public var user: Int32?
    public var deleted: Bool?
    public var warehouseId: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["scheduledplantypeid"] = self.scheduledplantypeid?.encodeToJSON()
        nillableDictionary["planid"] = self.planid?.encodeToJSON()
        nillableDictionary["active"] = self.active
        nillableDictionary["user"] = self.user?.encodeToJSON()
        nillableDictionary["deleted"] = self.deleted
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
