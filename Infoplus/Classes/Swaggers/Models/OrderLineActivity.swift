//
// OrderLineActivity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderLineActivity: JSONEncodable {

    public var id: Int?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var orderNo: Double?
    public var lobId: Int?
    public var sku: String?
    public var poNoId: Int?
    public var orderCreateDate: NSDate?
    public var orderModifyDate: NSDate?
    public var crossDock: Int?
    public var processNoId: Int?
    public var orderedQty: Int?
    public var allowedQty: Int?
    public var shippedQty: Int?
    public var backorderQty: Int?
    public var adjustCode: Int?
    public var processFlag: String?
    public var revDate: String?
    public var restrictionRule: Int?
    public var unitCost: Double?
    public var unitSell: Double?
    public var unitDiscount: Double?
    public var extendedCost: Double?
    public var extendedSell: Double?
    public var extendedDiscount: Double?
    public var ncExtendedSell: Double?
    public var per: String?
    public var chargeCode: String?
    public var distributionCode: String?
    public var upc: String?
    public var vendorSKU: String?
    public var orderSourceSKU: String?
    public var itemMajorGroupId: Int?
    public var masterMajorGroupName: String?
    public var itemSubGroupId: Int?
    public var masterSubGroupName: String?
    public var itemProductCodeId: Int?
    public var masterProductionCodeName: String?
    public var itemAccountCodeId: Int?
    public var masterAccountCodeName: String?
    public var itemSummaryCodeId: Int?
    public var masterSummaryCodeName: String?
    public var itemLegacyLowStockContactId: Int?
    public var lowStockContactName: String?
    public var sector: String?
    public var weightPerWrap: Double?
    public var itemWeight: Double?
    public var productionLot: String?
    public var numberOfWraps: Int?
    public var numberOfCases: Int?
    public var numberOfTouches: Int?
    public var alcoholTypeId: Int?
    public var alcoholTypeName: String?
    public var alcoholContent: Double?
    public var alcoholContainerId: Int?
    public var alcoholContainerName: String?
    public var alcoholContainerVolume: Int?
    public var alcoholVintageYear: String?
    public var alcoholCountryId: Int?
    public var alcoholCountryName: String?
    public var alcoholState: String?
    public var alcoholRegion: String?
    public var alcoholBrand: String?
    public var alcoholUPCCode: String?
    public var alcoholNABCACode: String?
    public var alcoholUNIMERCCode: String?
    public var alcoholSCCCode: String?
    public var alternateUsage: String?
    public var groupOrderId: Double?
    public var orderStatus: String?
    public var orderStatusName: String?
    public var carrierId: Int?
    public var carrierName: String?
    public var mediaCode: String?
    public var legacyRestrictionType: String?
    public var reqTypeName: String?
    public var serviceTypeId: String?
    public var serviceTypeName: String?
    public var alcoholOrderType: String?
    public var distributionChannel: String?
    public var distributionChannelName: String?
    public var priorityCode: Int?
    public var orderDate: NSDate?
    public var enteredBy: String?
    public var orderReason: Int?
    public var customerOrderNo: String?
    public var priceLevel: String?
    public var shipBy: NSDate?
    public var stopBackOrders: String?
    public var orderSourceId: Int?
    public var orderSourceName: String?
    public var integrationPartnerId: Int?
    public var integrationPartnerName: String?
    public var orderLoadProgramId: Int?
    public var orderLoadProgramName: String?
    public var omsOrderNo: Int?
    public var omsCustomerId: Int?
    public var shipToAttention: String?
    public var shipToCompany: String?
    public var shipToStreet: String?
    public var shipToStreet2: String?
    public var shipToStreet3: String?
    public var shipToCity: String?
    public var shipToState: String?
    public var shipToZip: String?
    public var shipToCountry: String?
    public var shipToPhone: String?
    public var shipToEmail: String?
    public var billToAttention: String?
    public var billToCompany: String?
    public var billToStreet: String?
    public var billToStreet2: String?
    public var billToStreet3: String?
    public var billToCity: String?
    public var billToState: String?
    public var billToZip: String?
    public var billToCountry: String?
    public var billToPhone: String?
    public var billToEmail: String?
    public var orderShipDate: NSDate?
    public var freight: Double?
    public var orderWeightLbs: Double?
    public var orderEstimatedWeightLbs: Double?
    public var numberOfPallets: Int?
    public var numberOfLineItems: Int?
    public var completionStatus: String?
    public var holdCode: String?
    public var shipCode: String?
    public var orderMessage: String?
    public var division: Int?
    public var costCenter: String?
    public var authorizedBy: String?
    public var batchNo: String?
    public var firstShipDate: NSDate?
    public var lastShipDate: NSDate?
    public var deliverOnDate: NSDate?
    public var customerPONo: String?
    public var shipVia: String?
    public var needByDate: NSDate?
    public var total: Double?
    public var balanceDue: Double?
    public var totalPaid: Double?
    public var authorizationAmount: Double?
    public var subtotal: Double?
    public var taxOnFreight: Double?
    public var tax: Double?
    public var distributionCharges: Double?
    public var shippingCharge: Double?
    public var totalDiscount: Double?
    public var parcelAccountId: Int?
    public var packingSlipTemplateId: Int?
    public var giftMessage: String?
    public var branchSector: String?
    public var branchArea: String?
    public var branchCustomerType: String?
    public var branchId: String?
    public var orderCode: String?
    public var leadPackageId: String?
    public var totalQty: Int?
    public var estimatedNumberOfPicks: Int?
    public var orderConfirmationEmailTemplateId: Int?
    public var shipmentConfirmationEmailTemplateId: Int?
    public var orderInvoiceTemplateId: Int?
    public var priceMode: String?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["lobId"] = self.lobId
        nillableDictionary["sku"] = self.sku
        nillableDictionary["poNoId"] = self.poNoId
        nillableDictionary["orderCreateDate"] = self.orderCreateDate?.encodeToJSON()
        nillableDictionary["orderModifyDate"] = self.orderModifyDate?.encodeToJSON()
        nillableDictionary["crossDock"] = self.crossDock
        nillableDictionary["processNoId"] = self.processNoId
        nillableDictionary["orderedQty"] = self.orderedQty
        nillableDictionary["allowedQty"] = self.allowedQty
        nillableDictionary["shippedQty"] = self.shippedQty
        nillableDictionary["backorderQty"] = self.backorderQty
        nillableDictionary["adjustCode"] = self.adjustCode
        nillableDictionary["processFlag"] = self.processFlag
        nillableDictionary["revDate"] = self.revDate
        nillableDictionary["restrictionRule"] = self.restrictionRule
        nillableDictionary["unitCost"] = self.unitCost
        nillableDictionary["unitSell"] = self.unitSell
        nillableDictionary["unitDiscount"] = self.unitDiscount
        nillableDictionary["extendedCost"] = self.extendedCost
        nillableDictionary["extendedSell"] = self.extendedSell
        nillableDictionary["extendedDiscount"] = self.extendedDiscount
        nillableDictionary["ncExtendedSell"] = self.ncExtendedSell
        nillableDictionary["per"] = self.per
        nillableDictionary["chargeCode"] = self.chargeCode
        nillableDictionary["distributionCode"] = self.distributionCode
        nillableDictionary["upc"] = self.upc
        nillableDictionary["vendorSKU"] = self.vendorSKU
        nillableDictionary["orderSourceSKU"] = self.orderSourceSKU
        nillableDictionary["itemMajorGroupId"] = self.itemMajorGroupId
        nillableDictionary["masterMajorGroupName"] = self.masterMajorGroupName
        nillableDictionary["itemSubGroupId"] = self.itemSubGroupId
        nillableDictionary["masterSubGroupName"] = self.masterSubGroupName
        nillableDictionary["itemProductCodeId"] = self.itemProductCodeId
        nillableDictionary["masterProductionCodeName"] = self.masterProductionCodeName
        nillableDictionary["itemAccountCodeId"] = self.itemAccountCodeId
        nillableDictionary["masterAccountCodeName"] = self.masterAccountCodeName
        nillableDictionary["itemSummaryCodeId"] = self.itemSummaryCodeId
        nillableDictionary["masterSummaryCodeName"] = self.masterSummaryCodeName
        nillableDictionary["itemLegacyLowStockContactId"] = self.itemLegacyLowStockContactId
        nillableDictionary["lowStockContactName"] = self.lowStockContactName
        nillableDictionary["sector"] = self.sector
        nillableDictionary["weightPerWrap"] = self.weightPerWrap
        nillableDictionary["itemWeight"] = self.itemWeight
        nillableDictionary["productionLot"] = self.productionLot
        nillableDictionary["numberOfWraps"] = self.numberOfWraps
        nillableDictionary["numberOfCases"] = self.numberOfCases
        nillableDictionary["numberOfTouches"] = self.numberOfTouches
        nillableDictionary["alcoholTypeId"] = self.alcoholTypeId
        nillableDictionary["alcoholTypeName"] = self.alcoholTypeName
        nillableDictionary["alcoholContent"] = self.alcoholContent
        nillableDictionary["alcoholContainerId"] = self.alcoholContainerId
        nillableDictionary["alcoholContainerName"] = self.alcoholContainerName
        nillableDictionary["alcoholContainerVolume"] = self.alcoholContainerVolume
        nillableDictionary["alcoholVintageYear"] = self.alcoholVintageYear
        nillableDictionary["alcoholCountryId"] = self.alcoholCountryId
        nillableDictionary["alcoholCountryName"] = self.alcoholCountryName
        nillableDictionary["alcoholState"] = self.alcoholState
        nillableDictionary["alcoholRegion"] = self.alcoholRegion
        nillableDictionary["alcoholBrand"] = self.alcoholBrand
        nillableDictionary["alcoholUPCCode"] = self.alcoholUPCCode
        nillableDictionary["alcoholNABCACode"] = self.alcoholNABCACode
        nillableDictionary["alcoholUNIMERCCode"] = self.alcoholUNIMERCCode
        nillableDictionary["alcoholSCCCode"] = self.alcoholSCCCode
        nillableDictionary["alternateUsage"] = self.alternateUsage
        nillableDictionary["groupOrderId"] = self.groupOrderId
        nillableDictionary["orderStatus"] = self.orderStatus
        nillableDictionary["orderStatusName"] = self.orderStatusName
        nillableDictionary["carrierId"] = self.carrierId
        nillableDictionary["carrierName"] = self.carrierName
        nillableDictionary["mediaCode"] = self.mediaCode
        nillableDictionary["legacyRestrictionType"] = self.legacyRestrictionType
        nillableDictionary["reqTypeName"] = self.reqTypeName
        nillableDictionary["serviceTypeId"] = self.serviceTypeId
        nillableDictionary["serviceTypeName"] = self.serviceTypeName
        nillableDictionary["alcoholOrderType"] = self.alcoholOrderType
        nillableDictionary["distributionChannel"] = self.distributionChannel
        nillableDictionary["distributionChannelName"] = self.distributionChannelName
        nillableDictionary["priorityCode"] = self.priorityCode
        nillableDictionary["orderDate"] = self.orderDate?.encodeToJSON()
        nillableDictionary["enteredBy"] = self.enteredBy
        nillableDictionary["orderReason"] = self.orderReason
        nillableDictionary["customerOrderNo"] = self.customerOrderNo
        nillableDictionary["priceLevel"] = self.priceLevel
        nillableDictionary["shipBy"] = self.shipBy?.encodeToJSON()
        nillableDictionary["stopBackOrders"] = self.stopBackOrders
        nillableDictionary["orderSourceId"] = self.orderSourceId
        nillableDictionary["orderSourceName"] = self.orderSourceName
        nillableDictionary["integrationPartnerId"] = self.integrationPartnerId
        nillableDictionary["integrationPartnerName"] = self.integrationPartnerName
        nillableDictionary["orderLoadProgramId"] = self.orderLoadProgramId
        nillableDictionary["orderLoadProgramName"] = self.orderLoadProgramName
        nillableDictionary["omsOrderNo"] = self.omsOrderNo
        nillableDictionary["omsCustomerId"] = self.omsCustomerId
        nillableDictionary["shipToAttention"] = self.shipToAttention
        nillableDictionary["shipToCompany"] = self.shipToCompany
        nillableDictionary["shipToStreet"] = self.shipToStreet
        nillableDictionary["shipToStreet2"] = self.shipToStreet2
        nillableDictionary["shipToStreet3"] = self.shipToStreet3
        nillableDictionary["shipToCity"] = self.shipToCity
        nillableDictionary["shipToState"] = self.shipToState
        nillableDictionary["shipToZip"] = self.shipToZip
        nillableDictionary["shipToCountry"] = self.shipToCountry
        nillableDictionary["shipToPhone"] = self.shipToPhone
        nillableDictionary["shipToEmail"] = self.shipToEmail
        nillableDictionary["billToAttention"] = self.billToAttention
        nillableDictionary["billToCompany"] = self.billToCompany
        nillableDictionary["billToStreet"] = self.billToStreet
        nillableDictionary["billToStreet2"] = self.billToStreet2
        nillableDictionary["billToStreet3"] = self.billToStreet3
        nillableDictionary["billToCity"] = self.billToCity
        nillableDictionary["billToState"] = self.billToState
        nillableDictionary["billToZip"] = self.billToZip
        nillableDictionary["billToCountry"] = self.billToCountry
        nillableDictionary["billToPhone"] = self.billToPhone
        nillableDictionary["billToEmail"] = self.billToEmail
        nillableDictionary["orderShipDate"] = self.orderShipDate?.encodeToJSON()
        nillableDictionary["freight"] = self.freight
        nillableDictionary["orderWeightLbs"] = self.orderWeightLbs
        nillableDictionary["orderEstimatedWeightLbs"] = self.orderEstimatedWeightLbs
        nillableDictionary["numberOfPallets"] = self.numberOfPallets
        nillableDictionary["numberOfLineItems"] = self.numberOfLineItems
        nillableDictionary["completionStatus"] = self.completionStatus
        nillableDictionary["holdCode"] = self.holdCode
        nillableDictionary["shipCode"] = self.shipCode
        nillableDictionary["orderMessage"] = self.orderMessage
        nillableDictionary["division"] = self.division
        nillableDictionary["costCenter"] = self.costCenter
        nillableDictionary["authorizedBy"] = self.authorizedBy
        nillableDictionary["batchNo"] = self.batchNo
        nillableDictionary["firstShipDate"] = self.firstShipDate?.encodeToJSON()
        nillableDictionary["lastShipDate"] = self.lastShipDate?.encodeToJSON()
        nillableDictionary["deliverOnDate"] = self.deliverOnDate?.encodeToJSON()
        nillableDictionary["customerPONo"] = self.customerPONo
        nillableDictionary["shipVia"] = self.shipVia
        nillableDictionary["needByDate"] = self.needByDate?.encodeToJSON()
        nillableDictionary["total"] = self.total
        nillableDictionary["balanceDue"] = self.balanceDue
        nillableDictionary["totalPaid"] = self.totalPaid
        nillableDictionary["authorizationAmount"] = self.authorizationAmount
        nillableDictionary["subtotal"] = self.subtotal
        nillableDictionary["taxOnFreight"] = self.taxOnFreight
        nillableDictionary["tax"] = self.tax
        nillableDictionary["distributionCharges"] = self.distributionCharges
        nillableDictionary["shippingCharge"] = self.shippingCharge
        nillableDictionary["totalDiscount"] = self.totalDiscount
        nillableDictionary["parcelAccountId"] = self.parcelAccountId
        nillableDictionary["packingSlipTemplateId"] = self.packingSlipTemplateId
        nillableDictionary["giftMessage"] = self.giftMessage
        nillableDictionary["branchSector"] = self.branchSector
        nillableDictionary["branchArea"] = self.branchArea
        nillableDictionary["branchCustomerType"] = self.branchCustomerType
        nillableDictionary["branchId"] = self.branchId
        nillableDictionary["orderCode"] = self.orderCode
        nillableDictionary["leadPackageId"] = self.leadPackageId
        nillableDictionary["totalQty"] = self.totalQty
        nillableDictionary["estimatedNumberOfPicks"] = self.estimatedNumberOfPicks
        nillableDictionary["orderConfirmationEmailTemplateId"] = self.orderConfirmationEmailTemplateId
        nillableDictionary["shipmentConfirmationEmailTemplateId"] = self.shipmentConfirmationEmailTemplateId
        nillableDictionary["orderInvoiceTemplateId"] = self.orderInvoiceTemplateId
        nillableDictionary["priceMode"] = self.priceMode
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
