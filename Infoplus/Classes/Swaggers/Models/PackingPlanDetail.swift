//
// PackingPlanDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PackingPlanDetail: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var packingPlanId: Int32?
    public var palletNo: Int32?
    public var palletTypeId: Int32?
    public var masterCartonNo: Int32?
    public var masterCartonTypeId: Int32?
    public var cartonNo: Int32?
    public var cartonTypeId: Int32?
    public var cartonId: Int32?
    public var orderId: Double?
    public var lobId: Int32?
    public var skuId: Int32?
    public var lineItemId: Int32?
    public var quantity: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["packingPlanId"] = self.packingPlanId?.encodeToJSON()
        nillableDictionary["palletNo"] = self.palletNo?.encodeToJSON()
        nillableDictionary["palletTypeId"] = self.palletTypeId?.encodeToJSON()
        nillableDictionary["masterCartonNo"] = self.masterCartonNo?.encodeToJSON()
        nillableDictionary["masterCartonTypeId"] = self.masterCartonTypeId?.encodeToJSON()
        nillableDictionary["cartonNo"] = self.cartonNo?.encodeToJSON()
        nillableDictionary["cartonTypeId"] = self.cartonTypeId?.encodeToJSON()
        nillableDictionary["cartonId"] = self.cartonId?.encodeToJSON()
        nillableDictionary["orderId"] = self.orderId
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["skuId"] = self.skuId?.encodeToJSON()
        nillableDictionary["lineItemId"] = self.lineItemId?.encodeToJSON()
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
