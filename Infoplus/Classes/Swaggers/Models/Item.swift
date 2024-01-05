//
// Item.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Item: JSONEncodable {
    public var id: Int32?
    public var accountCodeId: Int32?
    public var lowStockContactId: Int32?
    public var legacyLowLevelContactId: Int32?
    public var lowStockCodeId: Int32?
    public var majorGroupId: Int32?
    public var subGroupId: Int32?
    public var productCodeId: Int32?
    public var summaryCodeId: Int32?
    public var buyerId: Int32?
    public var lobId: Int32?
    public var sku: String?
    public var vendorSKU: String?
    public var upc: String?
    public var itemDescription: String?
    public var packingSlipDescription: String?
    public var absoluteMax: String?
    public var additionalDescription: String?
    public var backorder: String?
    public var chargeCode: String?
    public var commodityCodeId: Int32?
    public var companionCode: Int32?
    public var createDate: NSDate?
    public var criticalAmount: Int32?
    public var overallFixedReorderPoint: Int32?
    public var overallLeadTime: Int32?
    public var sellPrice: Double?
    public var pricingPer: String?
    public var lotControlFlag: String?
    public var maxCycle: Int32?
    public var maxInterim: Int32?
    public var numericSortOrder: Int32?
    public var outsideVendorId: Int32?
    public var pickCode: String?
    public var podOrderSuffix: Int32?
    public var podRevDate: String?
    public var status: String?
    public var seasonalItem: String?
    public var requiresProductionLot: String?
    public var sector: String?
    public var secure: String?
    public var serialCode: String?
    public var unitCode: String?
    public var unitsPerWrap: Int32?
    public var weightPerWrap: Double?
    public var quantityPerInnerPack: Int32?
    public var quantityPerCase: Int32?
    public var quantityPerPallet: Int32?
    public var innerPackBarcode: String?
    public var caseBarcode: String?
    public var palletBarcode: String?
    public var voidDate: NSDate?
    public var wrapCode: String?
    public var extrinsicText1: String?
    public var extrinsicText2: String?
    public var extrinsicText3: String?
    public var extrinsicNumber1: Int32?
    public var extrinsicNumber2: Int32?
    public var extrinsicDecimal1: Double?
    public var extrinsicDecimal2: Double?
    public var casebreakEnabled: String?
    public var vendorId: Int32?
    public var vendorPrice: Double?
    public var vendorPer: String?
    public var modifyDate: NSDate?
    public var primaryImage: String?
    public var pickImage: String?
    public var behaviorType: String?
    public var assemblyInstructions: String?
    public var forwardLotMixingRule: String?
    public var storageLotMixingRule: String?
    public var forwardItemMixingRule: String?
    public var storageItemMixingRule: String?
    public var allocationRule: String?
    public var allocationSort: String?
    public var allocationField: String?
    public var barcodeField: String?
    public var warehouseDisplayField: String?
    public var productIdTagSchemeId: Int32?
    public var itemSerialSchemeId: Int32?
    public var receivingCriteriaSchemeId: Int32?
    public var asnRule: String?
    public var quantityType: String?
    public var hazmat: String?
    public var uspsHazmatTypeId: Int32?
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
    public var availableQuantity: Int32?
    public var damagedQuantity: Int32?
    public var inFulfillmentProcessQuantity: Int32?
    public var onHandQuantity: Int32?
    public var openOrderQuantity: Int32?
    public var openPOQuantity: Int32?
    public var orderableQuantity: Int32?
    public var unallocatableQuantity: Int32?
    public var unavailableQuantity: Int32?
    public var totalDemand: Int32?
    public var availableQuantityInnerPacks: Int32?
    public var damagedQuantityInnerPacks: Int32?
    public var inFulfillmentProcessQuantityInnerPacks: Int32?
    public var onHandQuantityInnerPacks: Int32?
    public var openOrderQuantityInnerPacks: Int32?
    public var openPOQuantityInnerPacks: Int32?
    public var orderableQuantityInnerPacks: Int32?
    public var unallocatableQuantityInnerPacks: Int32?
    public var unavailableQuantityInnerPacks: Int32?
    public var availableQuantityCases: Int32?
    public var damagedQuantityCases: Int32?
    public var inFulfillmentProcessQuantityCases: Int32?
    public var onHandQuantityCases: Int32?
    public var openOrderQuantityCases: Int32?
    public var openPOQuantityCases: Int32?
    public var orderableQuantityCases: Int32?
    public var unallocatableQuantityCases: Int32?
    public var unavailableQuantityCases: Int32?
    public var availableQuantityPallets: Int32?
    public var damagedQuantityPallets: Int32?
    public var inFulfillmentProcessQuantityPallets: Int32?
    public var onHandQuantityPallets: Int32?
    public var openOrderQuantityPallets: Int32?
    public var openPOQuantityPallets: Int32?
    public var orderableQuantityPallets: Int32?
    public var unallocatableQuantityPallets: Int32?
    public var unavailableQuantityPallets: Int32?
    public var overallDaysOnHand: Int32?
    public var overallStockStatus: String?
    public var estimatedPallets: Int32?
    public var estimatedCases: Int32?
    public var estimatedInnerPacks: Int32?
    public var nextRequestedDeliveryDate: NSDate?
    public var warehouse1Id: Int32?
    public var w1AvailableQuantity: Int32?
    public var w1DamagedQuantity: Int32?
    public var w1InFulfillmentProcessQuantity: Int32?
    public var w1OnHandQuantity: Int32?
    public var w1OpenOrderQuantity: Int32?
    public var w1OpenPOQuantity: Int32?
    public var w1OrderableQuantity: Int32?
    public var w1UnallocatableQuantity: Int32?
    public var w1UnavailableQuantity: Int32?
    public var w1DaysOnHand: Int32?
    public var w1StockStatus: String?
    public var w1EstimatedPallets: Int32?
    public var w1EstimatedCases: Int32?
    public var w1EstimatedInnerPacks: Int32?
    public var w1NextRequestedDeliveryDate: NSDate?
    public var warehouse2Id: Int32?
    public var w2AvailableQuantity: Int32?
    public var w2DamagedQuantity: Int32?
    public var w2InFulfillmentProcessQuantity: Int32?
    public var w2OnHandQuantity: Int32?
    public var w2OpenOrderQuantity: Int32?
    public var w2OpenPOQuantity: Int32?
    public var w2OrderableQuantity: Int32?
    public var w2UnallocatableQuantity: Int32?
    public var w2UnavailableQuantity: Int32?
    public var w2DaysOnHand: Int32?
    public var w2StockStatus: String?
    public var w2EstimatedPallets: Int32?
    public var w2EstimatedCases: Int32?
    public var w2EstimatedInnerPacks: Int32?
    public var w2NextRequestedDeliveryDate: NSDate?
    public var warehouse3Id: Int32?
    public var w3AvailableQuantity: Int32?
    public var w3DamagedQuantity: Int32?
    public var w3InFulfillmentProcessQuantity: Int32?
    public var w3OnHandQuantity: Int32?
    public var w3OpenOrderQuantity: Int32?
    public var w3OpenPOQuantity: Int32?
    public var w3OrderableQuantity: Int32?
    public var w3UnallocatableQuantity: Int32?
    public var w3UnavailableQuantity: Int32?
    public var w3DaysOnHand: Int32?
    public var w3StockStatus: String?
    public var w3EstimatedPallets: Int32?
    public var w3EstimatedCases: Int32?
    public var w3EstimatedInnerPacks: Int32?
    public var w3NextRequestedDeliveryDate: NSDate?
    public var warehouse4Id: Int32?
    public var w4AvailableQuantity: Int32?
    public var w4DamagedQuantity: Int32?
    public var w4InFulfillmentProcessQuantity: Int32?
    public var w4OnHandQuantity: Int32?
    public var w4OpenOrderQuantity: Int32?
    public var w4OpenPOQuantity: Int32?
    public var w4OrderableQuantity: Int32?
    public var w4UnallocatableQuantity: Int32?
    public var w4UnavailableQuantity: Int32?
    public var w4DaysOnHand: Int32?
    public var w4StockStatus: String?
    public var w4EstimatedPallets: Int32?
    public var w4EstimatedCases: Int32?
    public var w4EstimatedInnerPacks: Int32?
    public var w4NextRequestedDeliveryDate: NSDate?
    public var warehouse5Id: Int32?
    public var w5AvailableQuantity: Int32?
    public var w5DamagedQuantity: Int32?
    public var w5InFulfillmentProcessQuantity: Int32?
    public var w5OnHandQuantity: Int32?
    public var w5OpenOrderQuantity: Int32?
    public var w5OpenPOQuantity: Int32?
    public var w5OrderableQuantity: Int32?
    public var w5UnallocatableQuantity: Int32?
    public var w5UnavailableQuantity: Int32?
    public var w5DaysOnHand: Int32?
    public var w5StockStatus: String?
    public var w5EstimatedPallets: Int32?
    public var w5EstimatedCases: Int32?
    public var w5EstimatedInnerPacks: Int32?
    public var w5NextRequestedDeliveryDate: NSDate?
    public var warehouse6Id: Int32?
    public var w6AvailableQuantity: Int32?
    public var w6DamagedQuantity: Int32?
    public var w6InFulfillmentProcessQuantity: Int32?
    public var w6OnHandQuantity: Int32?
    public var w6OpenOrderQuantity: Int32?
    public var w6OpenPOQuantity: Int32?
    public var w6OrderableQuantity: Int32?
    public var w6UnallocatableQuantity: Int32?
    public var w6UnavailableQuantity: Int32?
    public var w6DaysOnHand: Int32?
    public var w6StockStatus: String?
    public var w6EstimatedPallets: Int32?
    public var w6EstimatedCases: Int32?
    public var w6EstimatedInnerPacks: Int32?
    public var w6NextRequestedDeliveryDate: NSDate?
    public var warehouse7Id: Int32?
    public var w7AvailableQuantity: Int32?
    public var w7DamagedQuantity: Int32?
    public var w7InFulfillmentProcessQuantity: Int32?
    public var w7OnHandQuantity: Int32?
    public var w7OpenOrderQuantity: Int32?
    public var w7OpenPOQuantity: Int32?
    public var w7OrderableQuantity: Int32?
    public var w7UnallocatableQuantity: Int32?
    public var w7UnavailableQuantity: Int32?
    public var w7DaysOnHand: Int32?
    public var w7StockStatus: String?
    public var w7EstimatedPallets: Int32?
    public var w7EstimatedCases: Int32?
    public var w7EstimatedInnerPacks: Int32?
    public var w7NextRequestedDeliveryDate: NSDate?
    public var warehouse8Id: Int32?
    public var w8AvailableQuantity: Int32?
    public var w8DamagedQuantity: Int32?
    public var w8InFulfillmentProcessQuantity: Int32?
    public var w8OnHandQuantity: Int32?
    public var w8OpenOrderQuantity: Int32?
    public var w8OpenPOQuantity: Int32?
    public var w8OrderableQuantity: Int32?
    public var w8UnallocatableQuantity: Int32?
    public var w8UnavailableQuantity: Int32?
    public var w8DaysOnHand: Int32?
    public var w8StockStatus: String?
    public var w8EstimatedPallets: Int32?
    public var w8EstimatedCases: Int32?
    public var w8EstimatedInnerPacks: Int32?
    public var w8NextRequestedDeliveryDate: NSDate?
    public var warehouse9Id: Int32?
    public var w9AvailableQuantity: Int32?
    public var w9DamagedQuantity: Int32?
    public var w9InFulfillmentProcessQuantity: Int32?
    public var w9OnHandQuantity: Int32?
    public var w9OpenOrderQuantity: Int32?
    public var w9OpenPOQuantity: Int32?
    public var w9OrderableQuantity: Int32?
    public var w9UnallocatableQuantity: Int32?
    public var w9UnavailableQuantity: Int32?
    public var w9DaysOnHand: Int32?
    public var w9StockStatus: String?
    public var w9EstimatedPallets: Int32?
    public var w9EstimatedCases: Int32?
    public var w9EstimatedInnerPacks: Int32?
    public var w9NextRequestedDeliveryDate: NSDate?
    public var warehouse10Id: Int32?
    public var w10AvailableQuantity: Int32?
    public var w10DamagedQuantity: Int32?
    public var w10InFulfillmentProcessQuantity: Int32?
    public var w10OnHandQuantity: Int32?
    public var w10OpenOrderQuantity: Int32?
    public var w10OpenPOQuantity: Int32?
    public var w10OrderableQuantity: Int32?
    public var w10UnallocatableQuantity: Int32?
    public var w10UnavailableQuantity: Int32?
    public var w10DaysOnHand: Int32?
    public var w10StockStatus: String?
    public var w10EstimatedPallets: Int32?
    public var w10EstimatedCases: Int32?
    public var w10EstimatedInnerPacks: Int32?
    public var w10NextRequestedDeliveryDate: NSDate?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["accountCodeId"] = self.accountCodeId?.encodeToJSON()
        nillableDictionary["lowStockContactId"] = self.lowStockContactId?.encodeToJSON()
        nillableDictionary["legacyLowLevelContactId"] = self.legacyLowLevelContactId?.encodeToJSON()
        nillableDictionary["lowStockCodeId"] = self.lowStockCodeId?.encodeToJSON()
        nillableDictionary["majorGroupId"] = self.majorGroupId?.encodeToJSON()
        nillableDictionary["subGroupId"] = self.subGroupId?.encodeToJSON()
        nillableDictionary["productCodeId"] = self.productCodeId?.encodeToJSON()
        nillableDictionary["summaryCodeId"] = self.summaryCodeId?.encodeToJSON()
        nillableDictionary["buyerId"] = self.buyerId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["vendorSKU"] = self.vendorSKU
        nillableDictionary["upc"] = self.upc
        nillableDictionary["itemDescription"] = self.itemDescription
        nillableDictionary["packingSlipDescription"] = self.packingSlipDescription
        nillableDictionary["absoluteMax"] = self.absoluteMax
        nillableDictionary["additionalDescription"] = self.additionalDescription
        nillableDictionary["backorder"] = self.backorder
        nillableDictionary["chargeCode"] = self.chargeCode
        nillableDictionary["commodityCodeId"] = self.commodityCodeId?.encodeToJSON()
        nillableDictionary["companionCode"] = self.companionCode?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["criticalAmount"] = self.criticalAmount?.encodeToJSON()
        nillableDictionary["overallFixedReorderPoint"] = self.overallFixedReorderPoint?.encodeToJSON()
        nillableDictionary["overallLeadTime"] = self.overallLeadTime?.encodeToJSON()
        nillableDictionary["sellPrice"] = self.sellPrice
        nillableDictionary["pricingPer"] = self.pricingPer
        nillableDictionary["lotControlFlag"] = self.lotControlFlag
        nillableDictionary["maxCycle"] = self.maxCycle?.encodeToJSON()
        nillableDictionary["maxInterim"] = self.maxInterim?.encodeToJSON()
        nillableDictionary["numericSortOrder"] = self.numericSortOrder?.encodeToJSON()
        nillableDictionary["outsideVendorId"] = self.outsideVendorId?.encodeToJSON()
        nillableDictionary["pickCode"] = self.pickCode
        nillableDictionary["podOrderSuffix"] = self.podOrderSuffix?.encodeToJSON()
        nillableDictionary["podRevDate"] = self.podRevDate
        nillableDictionary["status"] = self.status
        nillableDictionary["seasonalItem"] = self.seasonalItem
        nillableDictionary["requiresProductionLot"] = self.requiresProductionLot
        nillableDictionary["sector"] = self.sector
        nillableDictionary["secure"] = self.secure
        nillableDictionary["serialCode"] = self.serialCode
        nillableDictionary["unitCode"] = self.unitCode
        nillableDictionary["unitsPerWrap"] = self.unitsPerWrap?.encodeToJSON()
        nillableDictionary["weightPerWrap"] = self.weightPerWrap
        nillableDictionary["quantityPerInnerPack"] = self.quantityPerInnerPack?.encodeToJSON()
        nillableDictionary["quantityPerCase"] = self.quantityPerCase?.encodeToJSON()
        nillableDictionary["quantityPerPallet"] = self.quantityPerPallet?.encodeToJSON()
        nillableDictionary["innerPackBarcode"] = self.innerPackBarcode
        nillableDictionary["caseBarcode"] = self.caseBarcode
        nillableDictionary["palletBarcode"] = self.palletBarcode
        nillableDictionary["voidDate"] = self.voidDate?.encodeToJSON()
        nillableDictionary["wrapCode"] = self.wrapCode
        nillableDictionary["extrinsicText1"] = self.extrinsicText1
        nillableDictionary["extrinsicText2"] = self.extrinsicText2
        nillableDictionary["extrinsicText3"] = self.extrinsicText3
        nillableDictionary["extrinsicNumber1"] = self.extrinsicNumber1?.encodeToJSON()
        nillableDictionary["extrinsicNumber2"] = self.extrinsicNumber2?.encodeToJSON()
        nillableDictionary["extrinsicDecimal1"] = self.extrinsicDecimal1
        nillableDictionary["extrinsicDecimal2"] = self.extrinsicDecimal2
        nillableDictionary["casebreakEnabled"] = self.casebreakEnabled
        nillableDictionary["vendorId"] = self.vendorId?.encodeToJSON()
        nillableDictionary["vendorPrice"] = self.vendorPrice
        nillableDictionary["vendorPer"] = self.vendorPer
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["primaryImage"] = self.primaryImage
        nillableDictionary["pickImage"] = self.pickImage
        nillableDictionary["behaviorType"] = self.behaviorType
        nillableDictionary["assemblyInstructions"] = self.assemblyInstructions
        nillableDictionary["forwardLotMixingRule"] = self.forwardLotMixingRule
        nillableDictionary["storageLotMixingRule"] = self.storageLotMixingRule
        nillableDictionary["forwardItemMixingRule"] = self.forwardItemMixingRule
        nillableDictionary["storageItemMixingRule"] = self.storageItemMixingRule
        nillableDictionary["allocationRule"] = self.allocationRule
        nillableDictionary["allocationSort"] = self.allocationSort
        nillableDictionary["allocationField"] = self.allocationField
        nillableDictionary["barcodeField"] = self.barcodeField
        nillableDictionary["warehouseDisplayField"] = self.warehouseDisplayField
        nillableDictionary["productIdTagSchemeId"] = self.productIdTagSchemeId?.encodeToJSON()
        nillableDictionary["itemSerialSchemeId"] = self.itemSerialSchemeId?.encodeToJSON()
        nillableDictionary["receivingCriteriaSchemeId"] = self.receivingCriteriaSchemeId?.encodeToJSON()
        nillableDictionary["asnRule"] = self.asnRule
        nillableDictionary["quantityType"] = self.quantityType
        nillableDictionary["hazmat"] = self.hazmat
        nillableDictionary["uspsHazmatTypeId"] = self.uspsHazmatTypeId?.encodeToJSON()
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
        nillableDictionary["availableQuantity"] = self.availableQuantity?.encodeToJSON()
        nillableDictionary["damagedQuantity"] = self.damagedQuantity?.encodeToJSON()
        nillableDictionary["inFulfillmentProcessQuantity"] = self.inFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["onHandQuantity"] = self.onHandQuantity?.encodeToJSON()
        nillableDictionary["openOrderQuantity"] = self.openOrderQuantity?.encodeToJSON()
        nillableDictionary["openPOQuantity"] = self.openPOQuantity?.encodeToJSON()
        nillableDictionary["orderableQuantity"] = self.orderableQuantity?.encodeToJSON()
        nillableDictionary["unallocatableQuantity"] = self.unallocatableQuantity?.encodeToJSON()
        nillableDictionary["unavailableQuantity"] = self.unavailableQuantity?.encodeToJSON()
        nillableDictionary["totalDemand"] = self.totalDemand?.encodeToJSON()
        nillableDictionary["availableQuantityInnerPacks"] = self.availableQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["damagedQuantityInnerPacks"] = self.damagedQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["inFulfillmentProcessQuantityInnerPacks"] = self.inFulfillmentProcessQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["onHandQuantityInnerPacks"] = self.onHandQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["openOrderQuantityInnerPacks"] = self.openOrderQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["openPOQuantityInnerPacks"] = self.openPOQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["orderableQuantityInnerPacks"] = self.orderableQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["unallocatableQuantityInnerPacks"] = self.unallocatableQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["unavailableQuantityInnerPacks"] = self.unavailableQuantityInnerPacks?.encodeToJSON()
        nillableDictionary["availableQuantityCases"] = self.availableQuantityCases?.encodeToJSON()
        nillableDictionary["damagedQuantityCases"] = self.damagedQuantityCases?.encodeToJSON()
        nillableDictionary["inFulfillmentProcessQuantityCases"] = self.inFulfillmentProcessQuantityCases?.encodeToJSON()
        nillableDictionary["onHandQuantityCases"] = self.onHandQuantityCases?.encodeToJSON()
        nillableDictionary["openOrderQuantityCases"] = self.openOrderQuantityCases?.encodeToJSON()
        nillableDictionary["openPOQuantityCases"] = self.openPOQuantityCases?.encodeToJSON()
        nillableDictionary["orderableQuantityCases"] = self.orderableQuantityCases?.encodeToJSON()
        nillableDictionary["unallocatableQuantityCases"] = self.unallocatableQuantityCases?.encodeToJSON()
        nillableDictionary["unavailableQuantityCases"] = self.unavailableQuantityCases?.encodeToJSON()
        nillableDictionary["availableQuantityPallets"] = self.availableQuantityPallets?.encodeToJSON()
        nillableDictionary["damagedQuantityPallets"] = self.damagedQuantityPallets?.encodeToJSON()
        nillableDictionary["inFulfillmentProcessQuantityPallets"] = self.inFulfillmentProcessQuantityPallets?.encodeToJSON()
        nillableDictionary["onHandQuantityPallets"] = self.onHandQuantityPallets?.encodeToJSON()
        nillableDictionary["openOrderQuantityPallets"] = self.openOrderQuantityPallets?.encodeToJSON()
        nillableDictionary["openPOQuantityPallets"] = self.openPOQuantityPallets?.encodeToJSON()
        nillableDictionary["orderableQuantityPallets"] = self.orderableQuantityPallets?.encodeToJSON()
        nillableDictionary["unallocatableQuantityPallets"] = self.unallocatableQuantityPallets?.encodeToJSON()
        nillableDictionary["unavailableQuantityPallets"] = self.unavailableQuantityPallets?.encodeToJSON()
        nillableDictionary["overallDaysOnHand"] = self.overallDaysOnHand?.encodeToJSON()
        nillableDictionary["overallStockStatus"] = self.overallStockStatus
        nillableDictionary["estimatedPallets"] = self.estimatedPallets?.encodeToJSON()
        nillableDictionary["estimatedCases"] = self.estimatedCases?.encodeToJSON()
        nillableDictionary["estimatedInnerPacks"] = self.estimatedInnerPacks?.encodeToJSON()
        nillableDictionary["nextRequestedDeliveryDate"] = self.nextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse1Id"] = self.warehouse1Id?.encodeToJSON()
        nillableDictionary["w1AvailableQuantity"] = self.w1AvailableQuantity?.encodeToJSON()
        nillableDictionary["w1DamagedQuantity"] = self.w1DamagedQuantity?.encodeToJSON()
        nillableDictionary["w1InFulfillmentProcessQuantity"] = self.w1InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w1OnHandQuantity"] = self.w1OnHandQuantity?.encodeToJSON()
        nillableDictionary["w1OpenOrderQuantity"] = self.w1OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w1OpenPOQuantity"] = self.w1OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w1OrderableQuantity"] = self.w1OrderableQuantity?.encodeToJSON()
        nillableDictionary["w1UnallocatableQuantity"] = self.w1UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w1UnavailableQuantity"] = self.w1UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w1DaysOnHand"] = self.w1DaysOnHand?.encodeToJSON()
        nillableDictionary["w1StockStatus"] = self.w1StockStatus
        nillableDictionary["w1EstimatedPallets"] = self.w1EstimatedPallets?.encodeToJSON()
        nillableDictionary["w1EstimatedCases"] = self.w1EstimatedCases?.encodeToJSON()
        nillableDictionary["w1EstimatedInnerPacks"] = self.w1EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w1NextRequestedDeliveryDate"] = self.w1NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse2Id"] = self.warehouse2Id?.encodeToJSON()
        nillableDictionary["w2AvailableQuantity"] = self.w2AvailableQuantity?.encodeToJSON()
        nillableDictionary["w2DamagedQuantity"] = self.w2DamagedQuantity?.encodeToJSON()
        nillableDictionary["w2InFulfillmentProcessQuantity"] = self.w2InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w2OnHandQuantity"] = self.w2OnHandQuantity?.encodeToJSON()
        nillableDictionary["w2OpenOrderQuantity"] = self.w2OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w2OpenPOQuantity"] = self.w2OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w2OrderableQuantity"] = self.w2OrderableQuantity?.encodeToJSON()
        nillableDictionary["w2UnallocatableQuantity"] = self.w2UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w2UnavailableQuantity"] = self.w2UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w2DaysOnHand"] = self.w2DaysOnHand?.encodeToJSON()
        nillableDictionary["w2StockStatus"] = self.w2StockStatus
        nillableDictionary["w2EstimatedPallets"] = self.w2EstimatedPallets?.encodeToJSON()
        nillableDictionary["w2EstimatedCases"] = self.w2EstimatedCases?.encodeToJSON()
        nillableDictionary["w2EstimatedInnerPacks"] = self.w2EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w2NextRequestedDeliveryDate"] = self.w2NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse3Id"] = self.warehouse3Id?.encodeToJSON()
        nillableDictionary["w3AvailableQuantity"] = self.w3AvailableQuantity?.encodeToJSON()
        nillableDictionary["w3DamagedQuantity"] = self.w3DamagedQuantity?.encodeToJSON()
        nillableDictionary["w3InFulfillmentProcessQuantity"] = self.w3InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w3OnHandQuantity"] = self.w3OnHandQuantity?.encodeToJSON()
        nillableDictionary["w3OpenOrderQuantity"] = self.w3OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w3OpenPOQuantity"] = self.w3OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w3OrderableQuantity"] = self.w3OrderableQuantity?.encodeToJSON()
        nillableDictionary["w3UnallocatableQuantity"] = self.w3UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w3UnavailableQuantity"] = self.w3UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w3DaysOnHand"] = self.w3DaysOnHand?.encodeToJSON()
        nillableDictionary["w3StockStatus"] = self.w3StockStatus
        nillableDictionary["w3EstimatedPallets"] = self.w3EstimatedPallets?.encodeToJSON()
        nillableDictionary["w3EstimatedCases"] = self.w3EstimatedCases?.encodeToJSON()
        nillableDictionary["w3EstimatedInnerPacks"] = self.w3EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w3NextRequestedDeliveryDate"] = self.w3NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse4Id"] = self.warehouse4Id?.encodeToJSON()
        nillableDictionary["w4AvailableQuantity"] = self.w4AvailableQuantity?.encodeToJSON()
        nillableDictionary["w4DamagedQuantity"] = self.w4DamagedQuantity?.encodeToJSON()
        nillableDictionary["w4InFulfillmentProcessQuantity"] = self.w4InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w4OnHandQuantity"] = self.w4OnHandQuantity?.encodeToJSON()
        nillableDictionary["w4OpenOrderQuantity"] = self.w4OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w4OpenPOQuantity"] = self.w4OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w4OrderableQuantity"] = self.w4OrderableQuantity?.encodeToJSON()
        nillableDictionary["w4UnallocatableQuantity"] = self.w4UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w4UnavailableQuantity"] = self.w4UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w4DaysOnHand"] = self.w4DaysOnHand?.encodeToJSON()
        nillableDictionary["w4StockStatus"] = self.w4StockStatus
        nillableDictionary["w4EstimatedPallets"] = self.w4EstimatedPallets?.encodeToJSON()
        nillableDictionary["w4EstimatedCases"] = self.w4EstimatedCases?.encodeToJSON()
        nillableDictionary["w4EstimatedInnerPacks"] = self.w4EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w4NextRequestedDeliveryDate"] = self.w4NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse5Id"] = self.warehouse5Id?.encodeToJSON()
        nillableDictionary["w5AvailableQuantity"] = self.w5AvailableQuantity?.encodeToJSON()
        nillableDictionary["w5DamagedQuantity"] = self.w5DamagedQuantity?.encodeToJSON()
        nillableDictionary["w5InFulfillmentProcessQuantity"] = self.w5InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w5OnHandQuantity"] = self.w5OnHandQuantity?.encodeToJSON()
        nillableDictionary["w5OpenOrderQuantity"] = self.w5OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w5OpenPOQuantity"] = self.w5OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w5OrderableQuantity"] = self.w5OrderableQuantity?.encodeToJSON()
        nillableDictionary["w5UnallocatableQuantity"] = self.w5UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w5UnavailableQuantity"] = self.w5UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w5DaysOnHand"] = self.w5DaysOnHand?.encodeToJSON()
        nillableDictionary["w5StockStatus"] = self.w5StockStatus
        nillableDictionary["w5EstimatedPallets"] = self.w5EstimatedPallets?.encodeToJSON()
        nillableDictionary["w5EstimatedCases"] = self.w5EstimatedCases?.encodeToJSON()
        nillableDictionary["w5EstimatedInnerPacks"] = self.w5EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w5NextRequestedDeliveryDate"] = self.w5NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse6Id"] = self.warehouse6Id?.encodeToJSON()
        nillableDictionary["w6AvailableQuantity"] = self.w6AvailableQuantity?.encodeToJSON()
        nillableDictionary["w6DamagedQuantity"] = self.w6DamagedQuantity?.encodeToJSON()
        nillableDictionary["w6InFulfillmentProcessQuantity"] = self.w6InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w6OnHandQuantity"] = self.w6OnHandQuantity?.encodeToJSON()
        nillableDictionary["w6OpenOrderQuantity"] = self.w6OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w6OpenPOQuantity"] = self.w6OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w6OrderableQuantity"] = self.w6OrderableQuantity?.encodeToJSON()
        nillableDictionary["w6UnallocatableQuantity"] = self.w6UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w6UnavailableQuantity"] = self.w6UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w6DaysOnHand"] = self.w6DaysOnHand?.encodeToJSON()
        nillableDictionary["w6StockStatus"] = self.w6StockStatus
        nillableDictionary["w6EstimatedPallets"] = self.w6EstimatedPallets?.encodeToJSON()
        nillableDictionary["w6EstimatedCases"] = self.w6EstimatedCases?.encodeToJSON()
        nillableDictionary["w6EstimatedInnerPacks"] = self.w6EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w6NextRequestedDeliveryDate"] = self.w6NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse7Id"] = self.warehouse7Id?.encodeToJSON()
        nillableDictionary["w7AvailableQuantity"] = self.w7AvailableQuantity?.encodeToJSON()
        nillableDictionary["w7DamagedQuantity"] = self.w7DamagedQuantity?.encodeToJSON()
        nillableDictionary["w7InFulfillmentProcessQuantity"] = self.w7InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w7OnHandQuantity"] = self.w7OnHandQuantity?.encodeToJSON()
        nillableDictionary["w7OpenOrderQuantity"] = self.w7OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w7OpenPOQuantity"] = self.w7OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w7OrderableQuantity"] = self.w7OrderableQuantity?.encodeToJSON()
        nillableDictionary["w7UnallocatableQuantity"] = self.w7UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w7UnavailableQuantity"] = self.w7UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w7DaysOnHand"] = self.w7DaysOnHand?.encodeToJSON()
        nillableDictionary["w7StockStatus"] = self.w7StockStatus
        nillableDictionary["w7EstimatedPallets"] = self.w7EstimatedPallets?.encodeToJSON()
        nillableDictionary["w7EstimatedCases"] = self.w7EstimatedCases?.encodeToJSON()
        nillableDictionary["w7EstimatedInnerPacks"] = self.w7EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w7NextRequestedDeliveryDate"] = self.w7NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse8Id"] = self.warehouse8Id?.encodeToJSON()
        nillableDictionary["w8AvailableQuantity"] = self.w8AvailableQuantity?.encodeToJSON()
        nillableDictionary["w8DamagedQuantity"] = self.w8DamagedQuantity?.encodeToJSON()
        nillableDictionary["w8InFulfillmentProcessQuantity"] = self.w8InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w8OnHandQuantity"] = self.w8OnHandQuantity?.encodeToJSON()
        nillableDictionary["w8OpenOrderQuantity"] = self.w8OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w8OpenPOQuantity"] = self.w8OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w8OrderableQuantity"] = self.w8OrderableQuantity?.encodeToJSON()
        nillableDictionary["w8UnallocatableQuantity"] = self.w8UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w8UnavailableQuantity"] = self.w8UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w8DaysOnHand"] = self.w8DaysOnHand?.encodeToJSON()
        nillableDictionary["w8StockStatus"] = self.w8StockStatus
        nillableDictionary["w8EstimatedPallets"] = self.w8EstimatedPallets?.encodeToJSON()
        nillableDictionary["w8EstimatedCases"] = self.w8EstimatedCases?.encodeToJSON()
        nillableDictionary["w8EstimatedInnerPacks"] = self.w8EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w8NextRequestedDeliveryDate"] = self.w8NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse9Id"] = self.warehouse9Id?.encodeToJSON()
        nillableDictionary["w9AvailableQuantity"] = self.w9AvailableQuantity?.encodeToJSON()
        nillableDictionary["w9DamagedQuantity"] = self.w9DamagedQuantity?.encodeToJSON()
        nillableDictionary["w9InFulfillmentProcessQuantity"] = self.w9InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w9OnHandQuantity"] = self.w9OnHandQuantity?.encodeToJSON()
        nillableDictionary["w9OpenOrderQuantity"] = self.w9OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w9OpenPOQuantity"] = self.w9OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w9OrderableQuantity"] = self.w9OrderableQuantity?.encodeToJSON()
        nillableDictionary["w9UnallocatableQuantity"] = self.w9UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w9UnavailableQuantity"] = self.w9UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w9DaysOnHand"] = self.w9DaysOnHand?.encodeToJSON()
        nillableDictionary["w9StockStatus"] = self.w9StockStatus
        nillableDictionary["w9EstimatedPallets"] = self.w9EstimatedPallets?.encodeToJSON()
        nillableDictionary["w9EstimatedCases"] = self.w9EstimatedCases?.encodeToJSON()
        nillableDictionary["w9EstimatedInnerPacks"] = self.w9EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w9NextRequestedDeliveryDate"] = self.w9NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["warehouse10Id"] = self.warehouse10Id?.encodeToJSON()
        nillableDictionary["w10AvailableQuantity"] = self.w10AvailableQuantity?.encodeToJSON()
        nillableDictionary["w10DamagedQuantity"] = self.w10DamagedQuantity?.encodeToJSON()
        nillableDictionary["w10InFulfillmentProcessQuantity"] = self.w10InFulfillmentProcessQuantity?.encodeToJSON()
        nillableDictionary["w10OnHandQuantity"] = self.w10OnHandQuantity?.encodeToJSON()
        nillableDictionary["w10OpenOrderQuantity"] = self.w10OpenOrderQuantity?.encodeToJSON()
        nillableDictionary["w10OpenPOQuantity"] = self.w10OpenPOQuantity?.encodeToJSON()
        nillableDictionary["w10OrderableQuantity"] = self.w10OrderableQuantity?.encodeToJSON()
        nillableDictionary["w10UnallocatableQuantity"] = self.w10UnallocatableQuantity?.encodeToJSON()
        nillableDictionary["w10UnavailableQuantity"] = self.w10UnavailableQuantity?.encodeToJSON()
        nillableDictionary["w10DaysOnHand"] = self.w10DaysOnHand?.encodeToJSON()
        nillableDictionary["w10StockStatus"] = self.w10StockStatus
        nillableDictionary["w10EstimatedPallets"] = self.w10EstimatedPallets?.encodeToJSON()
        nillableDictionary["w10EstimatedCases"] = self.w10EstimatedCases?.encodeToJSON()
        nillableDictionary["w10EstimatedInnerPacks"] = self.w10EstimatedInnerPacks?.encodeToJSON()
        nillableDictionary["w10NextRequestedDeliveryDate"] = self.w10NextRequestedDeliveryDate?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
