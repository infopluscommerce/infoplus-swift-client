//
// OrderLine.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderLine: JSONEncodable {
    public var id: Int32?
    public var orderNo: Double?
    public var lobId: Int32?
    public var sku: String?
    public var poNoId: Int32?
    public var orderedQty: Int32?
    public var allowedQty: Int32?
    public var shippedQty: Int32?
    public var backorderQty: Int32?
    public var revDate: String?
    public var chargeCode: String?
    public var distributionCode: String?
    public var upc: String?
    public var vendorSKU: String?
    public var orderSourceSKU: String?
    public var unitCost: Double?
    public var unitSell: Double?
    public var unitDiscount: Double?
    public var unitDeclaredValueOverride: Double?
    public var extendedCost: Double?
    public var extendedSell: Double?
    public var extendedDiscount: Double?
    public var ncExtendedSell: Double?
    public var extendedDeclaredValueOverride: Double?
    public var itemWeight: Double?
    public var productionLot: String?
    public var expirationDate: NSDate?
    public var weightPerWrap: Double?
    public var sector: String?
    public var orderAssemblyInstructions: String?
    public var itemAccountCodeId: Int32?
    public var itemLegacyLowStockContactId: Int32?
    public var itemMajorGroupId: Int32?
    public var itemSubGroupId: Int32?
    public var itemProductCodeId: Int32?
    public var itemSummaryCodeId: Int32?
    public var fulfillmentChannel: String?
    public var dynamicKitComponentList: [DynamicKitComponentLine]?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["poNoId"] = self.poNoId?.encodeToJSON()
        nillableDictionary["orderedQty"] = self.orderedQty?.encodeToJSON()
        nillableDictionary["allowedQty"] = self.allowedQty?.encodeToJSON()
        nillableDictionary["shippedQty"] = self.shippedQty?.encodeToJSON()
        nillableDictionary["backorderQty"] = self.backorderQty?.encodeToJSON()
        nillableDictionary["revDate"] = self.revDate
        nillableDictionary["chargeCode"] = self.chargeCode
        nillableDictionary["distributionCode"] = self.distributionCode
        nillableDictionary["upc"] = self.upc
        nillableDictionary["vendorSKU"] = self.vendorSKU
        nillableDictionary["orderSourceSKU"] = self.orderSourceSKU
        nillableDictionary["unitCost"] = self.unitCost
        nillableDictionary["unitSell"] = self.unitSell
        nillableDictionary["unitDiscount"] = self.unitDiscount
        nillableDictionary["unitDeclaredValueOverride"] = self.unitDeclaredValueOverride
        nillableDictionary["extendedCost"] = self.extendedCost
        nillableDictionary["extendedSell"] = self.extendedSell
        nillableDictionary["extendedDiscount"] = self.extendedDiscount
        nillableDictionary["ncExtendedSell"] = self.ncExtendedSell
        nillableDictionary["extendedDeclaredValueOverride"] = self.extendedDeclaredValueOverride
        nillableDictionary["itemWeight"] = self.itemWeight
        nillableDictionary["productionLot"] = self.productionLot
        nillableDictionary["expirationDate"] = self.expirationDate?.encodeToJSON()
        nillableDictionary["weightPerWrap"] = self.weightPerWrap
        nillableDictionary["sector"] = self.sector
        nillableDictionary["orderAssemblyInstructions"] = self.orderAssemblyInstructions
        nillableDictionary["itemAccountCodeId"] = self.itemAccountCodeId?.encodeToJSON()
        nillableDictionary["itemLegacyLowStockContactId"] = self.itemLegacyLowStockContactId?.encodeToJSON()
        nillableDictionary["itemMajorGroupId"] = self.itemMajorGroupId?.encodeToJSON()
        nillableDictionary["itemSubGroupId"] = self.itemSubGroupId?.encodeToJSON()
        nillableDictionary["itemProductCodeId"] = self.itemProductCodeId?.encodeToJSON()
        nillableDictionary["itemSummaryCodeId"] = self.itemSummaryCodeId?.encodeToJSON()
        nillableDictionary["fulfillmentChannel"] = self.fulfillmentChannel
        nillableDictionary["dynamicKitComponentList"] = self.dynamicKitComponentList?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
