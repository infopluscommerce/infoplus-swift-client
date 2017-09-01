//
// Item.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Item: JSONEncodable {

    public var id: Int?
    public var accountCodeId: Int?
    public var lowStockContactId: Int?
    public var legacyLowLevelContactId: Int?
    public var lowStockCodeId: Int?
    public var majorGroupId: Int?
    public var subGroupId: Int?
    public var productCodeId: Int?
    public var summaryCodeId: Int?
    public var buyerId: Int?
    public var lobId: Int?
    public var sku: String?
    public var vendorSKU: String?
    public var upc: String?
    public var itemDescription: String?
    public var packingSlipDescription: String?
    public var absoluteMax: String?
    public var additionalDescription: String?
    public var backorder: String?
    public var chargeCode: String?
    public var commodityCode: String?
    public var compCode: Int?
    public var createDate: NSDate?
    public var criticalAmount: Int?
    public var overallFixedReorderPoint: Int?
    public var overallLeadTime: Int?
    public var sellPrice: Double?
    public var pricingPer: String?
    public var lotControlFlag: String?
    public var maxCycle: Int?
    public var maxInterim: Int?
    public var numericSortOrder: Int?
    public var outsideVendor: Int?
    public var pickNo: String?
    public var podOrderSuffix: Int?
    public var podRevDate: String?
    public var status: String?
    public var seasonalItem: String?
    public var requiresProductionLot: String?
    public var sector: String?
    public var secure: String?
    public var serialCode: String?
    public var unitCode: String?
    public var unitsPerWrap: Int?
    public var weightPerWrap: Double?
    public var voidDate: NSDate?
    public var wrapCode: String?
    public var extrinsicText1: String?
    public var extrinsicText2: String?
    public var extrinsicText3: String?
    public var extrinsicNumber1: Int?
    public var extrinsicNumber2: Int?
    public var extrinsicDecimal1: Double?
    public var extrinsicDecimal2: Double?
    public var casebreakEnabled: String?
    public var vendorId: Int?
    public var vendorPrice: Double?
    public var vendorPer: String?
    public var modifyDate: NSDate?
    public var forwardLotMixingRule: String?
    public var storageLotMixingRule: String?
    public var forwardItemMixingRule: String?
    public var storageItemMixingRule: String?
    public var allocationRule: String?
    public var barcodeField: String?
    public var warehouseDisplayField: String?
    public var productIdTagSchemeId: Int?
    public var hazmat: String?
    public var isAlcohol: Bool?
    public var alcoholType: String?
    public var alcoholContent: Double?
    public var alcoholContainer: String?
    public var alcoholVintageYear: String?
    public var alcoholCountry: String?
    public var alcoholState: String?
    public var alcoholRegion: String?
    public var alcoholBrand: String?
    public var alcoholUPCCode: String?
    public var alcoholNAMBCACode: String?
    public var alcoholUNIMERCCode: String?
    public var alcoholSCCCode: String?
    public var length: Double?
    public var width: Double?
    public var height: Double?
    public var topUp: Bool?
    public var shipSolo: Bool?
    public var inventoryUpdateTimestamp: NSDate?
    public var availableQuantity: Int?
    public var damagedQuantity: Int?
    public var inFulfillmentProcessQuantity: Int?
    public var onHandQuantity: Int?
    public var openOrderQuantity: Int?
    public var openPOQuantity: Int?
    public var orderableQuantity: Int?
    public var unallocatableQuantity: Int?
    public var unavailableQuantity: Int?
    public var overallDaysOnHand: Int?
    public var overallStockStatus: String?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["accountCodeId"] = self.accountCodeId
        nillableDictionary["lowStockContactId"] = self.lowStockContactId
        nillableDictionary["legacyLowLevelContactId"] = self.legacyLowLevelContactId
        nillableDictionary["lowStockCodeId"] = self.lowStockCodeId
        nillableDictionary["majorGroupId"] = self.majorGroupId
        nillableDictionary["subGroupId"] = self.subGroupId
        nillableDictionary["productCodeId"] = self.productCodeId
        nillableDictionary["summaryCodeId"] = self.summaryCodeId
        nillableDictionary["buyerId"] = self.buyerId
        nillableDictionary["lobId"] = self.lobId
        nillableDictionary["sku"] = self.sku
        nillableDictionary["vendorSKU"] = self.vendorSKU
        nillableDictionary["upc"] = self.upc
        nillableDictionary["itemDescription"] = self.itemDescription
        nillableDictionary["packingSlipDescription"] = self.packingSlipDescription
        nillableDictionary["absoluteMax"] = self.absoluteMax
        nillableDictionary["additionalDescription"] = self.additionalDescription
        nillableDictionary["backorder"] = self.backorder
        nillableDictionary["chargeCode"] = self.chargeCode
        nillableDictionary["commodityCode"] = self.commodityCode
        nillableDictionary["compCode"] = self.compCode
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["criticalAmount"] = self.criticalAmount
        nillableDictionary["overallFixedReorderPoint"] = self.overallFixedReorderPoint
        nillableDictionary["overallLeadTime"] = self.overallLeadTime
        nillableDictionary["sellPrice"] = self.sellPrice
        nillableDictionary["pricingPer"] = self.pricingPer
        nillableDictionary["lotControlFlag"] = self.lotControlFlag
        nillableDictionary["maxCycle"] = self.maxCycle
        nillableDictionary["maxInterim"] = self.maxInterim
        nillableDictionary["numericSortOrder"] = self.numericSortOrder
        nillableDictionary["outsideVendor"] = self.outsideVendor
        nillableDictionary["pickNo"] = self.pickNo
        nillableDictionary["podOrderSuffix"] = self.podOrderSuffix
        nillableDictionary["podRevDate"] = self.podRevDate
        nillableDictionary["status"] = self.status
        nillableDictionary["seasonalItem"] = self.seasonalItem
        nillableDictionary["requiresProductionLot"] = self.requiresProductionLot
        nillableDictionary["sector"] = self.sector
        nillableDictionary["secure"] = self.secure
        nillableDictionary["serialCode"] = self.serialCode
        nillableDictionary["unitCode"] = self.unitCode
        nillableDictionary["unitsPerWrap"] = self.unitsPerWrap
        nillableDictionary["weightPerWrap"] = self.weightPerWrap
        nillableDictionary["voidDate"] = self.voidDate?.encodeToJSON()
        nillableDictionary["wrapCode"] = self.wrapCode
        nillableDictionary["extrinsicText1"] = self.extrinsicText1
        nillableDictionary["extrinsicText2"] = self.extrinsicText2
        nillableDictionary["extrinsicText3"] = self.extrinsicText3
        nillableDictionary["extrinsicNumber1"] = self.extrinsicNumber1
        nillableDictionary["extrinsicNumber2"] = self.extrinsicNumber2
        nillableDictionary["extrinsicDecimal1"] = self.extrinsicDecimal1
        nillableDictionary["extrinsicDecimal2"] = self.extrinsicDecimal2
        nillableDictionary["casebreakEnabled"] = self.casebreakEnabled
        nillableDictionary["vendorId"] = self.vendorId
        nillableDictionary["vendorPrice"] = self.vendorPrice
        nillableDictionary["vendorPer"] = self.vendorPer
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["forwardLotMixingRule"] = self.forwardLotMixingRule
        nillableDictionary["storageLotMixingRule"] = self.storageLotMixingRule
        nillableDictionary["forwardItemMixingRule"] = self.forwardItemMixingRule
        nillableDictionary["storageItemMixingRule"] = self.storageItemMixingRule
        nillableDictionary["allocationRule"] = self.allocationRule
        nillableDictionary["barcodeField"] = self.barcodeField
        nillableDictionary["warehouseDisplayField"] = self.warehouseDisplayField
        nillableDictionary["productIdTagSchemeId"] = self.productIdTagSchemeId
        nillableDictionary["hazmat"] = self.hazmat
        nillableDictionary["isAlcohol"] = self.isAlcohol
        nillableDictionary["alcoholType"] = self.alcoholType
        nillableDictionary["alcoholContent"] = self.alcoholContent
        nillableDictionary["alcoholContainer"] = self.alcoholContainer
        nillableDictionary["alcoholVintageYear"] = self.alcoholVintageYear
        nillableDictionary["alcoholCountry"] = self.alcoholCountry
        nillableDictionary["alcoholState"] = self.alcoholState
        nillableDictionary["alcoholRegion"] = self.alcoholRegion
        nillableDictionary["alcoholBrand"] = self.alcoholBrand
        nillableDictionary["alcoholUPCCode"] = self.alcoholUPCCode
        nillableDictionary["alcoholNAMBCACode"] = self.alcoholNAMBCACode
        nillableDictionary["alcoholUNIMERCCode"] = self.alcoholUNIMERCCode
        nillableDictionary["alcoholSCCCode"] = self.alcoholSCCCode
        nillableDictionary["length"] = self.length
        nillableDictionary["width"] = self.width
        nillableDictionary["height"] = self.height
        nillableDictionary["topUp"] = self.topUp
        nillableDictionary["shipSolo"] = self.shipSolo
        nillableDictionary["inventoryUpdateTimestamp"] = self.inventoryUpdateTimestamp?.encodeToJSON()
        nillableDictionary["availableQuantity"] = self.availableQuantity
        nillableDictionary["damagedQuantity"] = self.damagedQuantity
        nillableDictionary["inFulfillmentProcessQuantity"] = self.inFulfillmentProcessQuantity
        nillableDictionary["onHandQuantity"] = self.onHandQuantity
        nillableDictionary["openOrderQuantity"] = self.openOrderQuantity
        nillableDictionary["openPOQuantity"] = self.openPOQuantity
        nillableDictionary["orderableQuantity"] = self.orderableQuantity
        nillableDictionary["unallocatableQuantity"] = self.unallocatableQuantity
        nillableDictionary["unavailableQuantity"] = self.unavailableQuantity
        nillableDictionary["overallDaysOnHand"] = self.overallDaysOnHand
        nillableDictionary["overallStockStatus"] = self.overallStockStatus
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
