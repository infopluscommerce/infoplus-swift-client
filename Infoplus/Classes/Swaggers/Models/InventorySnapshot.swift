//
// InventorySnapshot.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InventorySnapshot: JSONEncodable {

    public var id: Int?
    public var warehouseLocationId: Int?
    public var itemId: Int?
    public var lobId: Int?
    public var snapshotDate: NSDate?
    public var isMixedReceipts: Bool?
    public var quantity: Int?
    public var address: String?
    public var warehouseId: Int?
    public var warehouseName: String?
    public var warehouseZoneId: Int?
    public var warehouseZoneName: String?
    public var warehouseZoneAddress: String?
    public var warehouseBuildingId: Int?
    public var warehouseBuildingName: String?
    public var warehouseAisleId: Int?
    public var warehouseAisleAddress: String?
    public var warehouseLocationOriginId: Int?
    public var warehouseLocationOriginName: String?
    public var warehouseLocationBillingTypeId: Int?
    public var warehouseLocationBillingTypeName: String?
    public var warehouseLocationBehaviorTypeId: Int?
    public var warehouseLocationBehaviorTypeName: String?
    public var warehouseLocationFootprintId: Int?
    public var warehouseLocationFootprintName: String?
    public var warehouseLocationFootprintWidth: Int?
    public var warehouseLocationFootprintHeight: Int?
    public var warehouseLocationFootprintDepth: Int?
    public var warehouseLocationLevel: Int?
    public var warehouseLocationBay: Int?
    public var warehouseLocationNumber: Int?
    public var warehouseLocationOnline: Bool?
    public var warehouseLocationPriorityCode: Int?
    public var warehouseLocationAllowItemMixing: Bool?
    public var warehouseLocationCost: Int?
    public var controlNo: String?
    public var itemVendorSku: String?
    public var itemUpc: String?
    public var itemMajorGroup: Int?
    public var itemMajorGroupName: String?
    public var itemSubGroup: Int?
    public var itemSubGroupName: String?
    public var itemProductCode: Int?
    public var itemProductCodeName: String?
    public var itemAccountCode: String?
    public var itemAccountCodeName: String?
    public var itemSummaryCode: Int?
    public var itemSummaryCodeName: String?
    public var itemSector: String?
    public var poNo: String?
    public var receiptDistributionDate: NSDate?
    public var receiptUnitsPerWrap: Int?
    public var receiptUnitsPerCase: Int?
    public var receiptRevisionDate: String?
    public var receiptProductionLot: String?
    public var receiptReceiveDate: NSDate?
    public var receiptStatus: String?
    public var receiptStatusName: String?
    public var receiptUnitCode: Int?
    public var receiptUnitCodeText: String?
    public var receiptWrapCode: Int?
    public var receiptWrapCodeText: String?
    public var receiptCaseWeight: Double?
    public var receiptProductIdTag: String?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["warehouseLocationId"] = self.warehouseLocationId
        nillableDictionary["itemId"] = self.itemId
        nillableDictionary["lobId"] = self.lobId
        nillableDictionary["snapshotDate"] = self.snapshotDate?.encodeToJSON()
        nillableDictionary["isMixedReceipts"] = self.isMixedReceipts
        nillableDictionary["quantity"] = self.quantity
        nillableDictionary["address"] = self.address
        nillableDictionary["warehouseId"] = self.warehouseId
        nillableDictionary["warehouseName"] = self.warehouseName
        nillableDictionary["warehouseZoneId"] = self.warehouseZoneId
        nillableDictionary["warehouseZoneName"] = self.warehouseZoneName
        nillableDictionary["warehouseZoneAddress"] = self.warehouseZoneAddress
        nillableDictionary["warehouseBuildingId"] = self.warehouseBuildingId
        nillableDictionary["warehouseBuildingName"] = self.warehouseBuildingName
        nillableDictionary["warehouseAisleId"] = self.warehouseAisleId
        nillableDictionary["warehouseAisleAddress"] = self.warehouseAisleAddress
        nillableDictionary["warehouseLocationOriginId"] = self.warehouseLocationOriginId
        nillableDictionary["warehouseLocationOriginName"] = self.warehouseLocationOriginName
        nillableDictionary["warehouseLocationBillingTypeId"] = self.warehouseLocationBillingTypeId
        nillableDictionary["warehouseLocationBillingTypeName"] = self.warehouseLocationBillingTypeName
        nillableDictionary["warehouseLocationBehaviorTypeId"] = self.warehouseLocationBehaviorTypeId
        nillableDictionary["warehouseLocationBehaviorTypeName"] = self.warehouseLocationBehaviorTypeName
        nillableDictionary["warehouseLocationFootprintId"] = self.warehouseLocationFootprintId
        nillableDictionary["warehouseLocationFootprintName"] = self.warehouseLocationFootprintName
        nillableDictionary["warehouseLocationFootprintWidth"] = self.warehouseLocationFootprintWidth
        nillableDictionary["warehouseLocationFootprintHeight"] = self.warehouseLocationFootprintHeight
        nillableDictionary["warehouseLocationFootprintDepth"] = self.warehouseLocationFootprintDepth
        nillableDictionary["warehouseLocationLevel"] = self.warehouseLocationLevel
        nillableDictionary["warehouseLocationBay"] = self.warehouseLocationBay
        nillableDictionary["warehouseLocationNumber"] = self.warehouseLocationNumber
        nillableDictionary["warehouseLocationOnline"] = self.warehouseLocationOnline
        nillableDictionary["warehouseLocationPriorityCode"] = self.warehouseLocationPriorityCode
        nillableDictionary["warehouseLocationAllowItemMixing"] = self.warehouseLocationAllowItemMixing
        nillableDictionary["warehouseLocationCost"] = self.warehouseLocationCost
        nillableDictionary["controlNo"] = self.controlNo
        nillableDictionary["itemVendorSku"] = self.itemVendorSku
        nillableDictionary["itemUpc"] = self.itemUpc
        nillableDictionary["itemMajorGroup"] = self.itemMajorGroup
        nillableDictionary["itemMajorGroupName"] = self.itemMajorGroupName
        nillableDictionary["itemSubGroup"] = self.itemSubGroup
        nillableDictionary["itemSubGroupName"] = self.itemSubGroupName
        nillableDictionary["itemProductCode"] = self.itemProductCode
        nillableDictionary["itemProductCodeName"] = self.itemProductCodeName
        nillableDictionary["itemAccountCode"] = self.itemAccountCode
        nillableDictionary["itemAccountCodeName"] = self.itemAccountCodeName
        nillableDictionary["itemSummaryCode"] = self.itemSummaryCode
        nillableDictionary["itemSummaryCodeName"] = self.itemSummaryCodeName
        nillableDictionary["itemSector"] = self.itemSector
        nillableDictionary["poNo"] = self.poNo
        nillableDictionary["receiptDistributionDate"] = self.receiptDistributionDate?.encodeToJSON()
        nillableDictionary["receiptUnitsPerWrap"] = self.receiptUnitsPerWrap
        nillableDictionary["receiptUnitsPerCase"] = self.receiptUnitsPerCase
        nillableDictionary["receiptRevisionDate"] = self.receiptRevisionDate
        nillableDictionary["receiptProductionLot"] = self.receiptProductionLot
        nillableDictionary["receiptReceiveDate"] = self.receiptReceiveDate?.encodeToJSON()
        nillableDictionary["receiptStatus"] = self.receiptStatus
        nillableDictionary["receiptStatusName"] = self.receiptStatusName
        nillableDictionary["receiptUnitCode"] = self.receiptUnitCode
        nillableDictionary["receiptUnitCodeText"] = self.receiptUnitCodeText
        nillableDictionary["receiptWrapCode"] = self.receiptWrapCode
        nillableDictionary["receiptWrapCodeText"] = self.receiptWrapCodeText
        nillableDictionary["receiptCaseWeight"] = self.receiptCaseWeight
        nillableDictionary["receiptProductIdTag"] = self.receiptProductIdTag
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
