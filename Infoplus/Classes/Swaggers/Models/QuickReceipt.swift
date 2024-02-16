//
// QuickReceipt.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class QuickReceipt: JSONEncodable {
    public var id: Int32?
    public var createdBy: String?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var warehouseId: Int32?
    public var lobId: Int32?
    public var sku: String?
    public var locationId: Int32?
    public var quantity: Int32?
    public var itemSerials: [String]?
    public var vendorId: Int32?
    public var carrier: String?
    public var status: String?
    public var unitCode: String?
    public var wrapCode: String?
    public var weightPerWrap: Double?
    public var unitsPerWrap: Int32?
    public var quantityPerInnerPack: Int32?
    public var unitsPerCase: Int32?
    public var quantityPerPallet: Int32?
    public var caseWeight: Double?
    public var productionLot: String?
    public var revisionDate: String?
    public var origin: String?
    public var cartonLength: Double?
    public var cartonWidth: Double?
    public var cartonHeight: Double?
    public var cost: Double?
    public var sellPrice: Double?
    public var pricingPer: String?
    public var generatedItemReceiptId: Int32?
    public var generatedASNId: Int32?
    public var dockDate: NSDate?
    public var productIdTag: String?
    public var expirationDate: NSDate?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createdBy"] = self.createdBy
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["locationId"] = self.locationId?.encodeToJSON()
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["itemSerials"] = self.itemSerials?.encodeToJSON()
        nillableDictionary["vendorId"] = self.vendorId?.encodeToJSON()
        nillableDictionary["carrier"] = self.carrier
        nillableDictionary["status"] = self.status
        nillableDictionary["unitCode"] = self.unitCode
        nillableDictionary["wrapCode"] = self.wrapCode
        nillableDictionary["weightPerWrap"] = self.weightPerWrap
        nillableDictionary["unitsPerWrap"] = self.unitsPerWrap?.encodeToJSON()
        nillableDictionary["quantityPerInnerPack"] = self.quantityPerInnerPack?.encodeToJSON()
        nillableDictionary["unitsPerCase"] = self.unitsPerCase?.encodeToJSON()
        nillableDictionary["quantityPerPallet"] = self.quantityPerPallet?.encodeToJSON()
        nillableDictionary["caseWeight"] = self.caseWeight
        nillableDictionary["productionLot"] = self.productionLot
        nillableDictionary["revisionDate"] = self.revisionDate
        nillableDictionary["origin"] = self.origin
        nillableDictionary["cartonLength"] = self.cartonLength
        nillableDictionary["cartonWidth"] = self.cartonWidth
        nillableDictionary["cartonHeight"] = self.cartonHeight
        nillableDictionary["cost"] = self.cost
        nillableDictionary["sellPrice"] = self.sellPrice
        nillableDictionary["pricingPer"] = self.pricingPer
        nillableDictionary["generatedItemReceiptId"] = self.generatedItemReceiptId?.encodeToJSON()
        nillableDictionary["generatedASNId"] = self.generatedASNId?.encodeToJSON()
        nillableDictionary["dockDate"] = self.dockDate?.encodeToJSON()
        nillableDictionary["productIdTag"] = self.productIdTag
        nillableDictionary["expirationDate"] = self.expirationDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
