//
// Order.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Order: JSONEncodable {

    public var orderNo: Double?
    public var customerOrderNo: String?
    public var lobId: Int?
    public var warehouseId: Int?
    public var orderDate: NSDate?
    public var customerNo: String?
    public var useOrderNoRoot: Int?
    public var firstShipDate: NSDate?
    public var lastShipDate: NSDate?
    public var deliverOnDate: NSDate?
    public var needByDate: NSDate?
    public var carrierId: Int?
    public var serviceTypeId: String?
    public var shipVia: String?
    public var mediaCode: String?
    public var legacyRestrictionType: String?
    public var alcoholOrderType: String?
    public var alternateUsage: String?
    public var authorizationAmount: Double?
    public var authorizedBy: String?
    public var balanceDue: Double?
    public var batchNo: String?
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
    public var numberOfCartons: Int?
    public var numberOfPallets: Int?
    public var completionStatus: String?
    public var parcelAccountId: Int?
    public var thirdPartyParcelAccountId: Int?
    public var costCenter: String?
    public var createDate: NSDate?
    public var customerPONo: String?
    public var distributionChannel: String?
    public var distributionCharges: Double?
    public var division: Int?
    public var enteredBy: String?
    public var preAllocationEstimatedWeight: Double?
    public var estimatedWeightLbs: Double?
    public var freight: Double?
    public var giftMessage: String?
    public var groupOrderId: Double?
    public var parentKODOrderId: Double?
    public var holdCode: String?
    public var integrationPartnerId: Int?
    public var numberOfLineItems: Int?
    public var estimatedNumberOfPicks: Int?
    public var modifyDate: NSDate?
    public var omsOrderNo: Int?
    public var omsCustomerId: Int?
    public var orderLoadProgramId: Int?
    public var orderMessage: String?
    public var orderReason: Int?
    public var orderSourceId: Int?
    public var packingSlipTemplateId: Int?
    public var orderInvoiceTemplateId: Int?
    public var orderConfirmationEmailTemplateId: Int?
    public var shipmentConfirmationEmailTemplateId: Int?
    public var priceLevel: String?
    public var priceMode: String?
    public var priorityCode: Int?
    public var fulfillmentProcessId: Int?
    public var shipBy: NSDate?
    public var shipCode: String?
    public var shipDate: NSDate?
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
    public var shippingCharge: Double?
    public var status: String?
    public var stopBackOrders: String?
    public var subtotal: Double?
    public var tax: Double?
    public var total: Double?
    public var totalDiscount: Double?
    public var totalPaid: Double?
    public var totalQty: Int?
    public var weightLbs: Double?
    public var orderAssemblyInstructions: String?
    public var lineItems: [OrderLine]?
    public var extraOrderData: [OrderExtraOrderData]?
    public var extraLineItemData: [OrderExtraLineItemData]?
    public var externalShippingSystemId: Int?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["customerOrderNo"] = self.customerOrderNo
        nillableDictionary["lobId"] = self.lobId
        nillableDictionary["warehouseId"] = self.warehouseId
        nillableDictionary["orderDate"] = self.orderDate?.encodeToJSON()
        nillableDictionary["customerNo"] = self.customerNo
        nillableDictionary["useOrderNoRoot"] = self.useOrderNoRoot
        nillableDictionary["firstShipDate"] = self.firstShipDate?.encodeToJSON()
        nillableDictionary["lastShipDate"] = self.lastShipDate?.encodeToJSON()
        nillableDictionary["deliverOnDate"] = self.deliverOnDate?.encodeToJSON()
        nillableDictionary["needByDate"] = self.needByDate?.encodeToJSON()
        nillableDictionary["carrierId"] = self.carrierId
        nillableDictionary["serviceTypeId"] = self.serviceTypeId
        nillableDictionary["shipVia"] = self.shipVia
        nillableDictionary["mediaCode"] = self.mediaCode
        nillableDictionary["legacyRestrictionType"] = self.legacyRestrictionType
        nillableDictionary["alcoholOrderType"] = self.alcoholOrderType
        nillableDictionary["alternateUsage"] = self.alternateUsage
        nillableDictionary["authorizationAmount"] = self.authorizationAmount
        nillableDictionary["authorizedBy"] = self.authorizedBy
        nillableDictionary["balanceDue"] = self.balanceDue
        nillableDictionary["batchNo"] = self.batchNo
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
        nillableDictionary["numberOfCartons"] = self.numberOfCartons
        nillableDictionary["numberOfPallets"] = self.numberOfPallets
        nillableDictionary["completionStatus"] = self.completionStatus
        nillableDictionary["parcelAccountId"] = self.parcelAccountId
        nillableDictionary["thirdPartyParcelAccountId"] = self.thirdPartyParcelAccountId
        nillableDictionary["costCenter"] = self.costCenter
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["customerPONo"] = self.customerPONo
        nillableDictionary["distributionChannel"] = self.distributionChannel
        nillableDictionary["distributionCharges"] = self.distributionCharges
        nillableDictionary["division"] = self.division
        nillableDictionary["enteredBy"] = self.enteredBy
        nillableDictionary["preAllocationEstimatedWeight"] = self.preAllocationEstimatedWeight
        nillableDictionary["estimatedWeightLbs"] = self.estimatedWeightLbs
        nillableDictionary["freight"] = self.freight
        nillableDictionary["giftMessage"] = self.giftMessage
        nillableDictionary["groupOrderId"] = self.groupOrderId
        nillableDictionary["parentKODOrderId"] = self.parentKODOrderId
        nillableDictionary["holdCode"] = self.holdCode
        nillableDictionary["integrationPartnerId"] = self.integrationPartnerId
        nillableDictionary["numberOfLineItems"] = self.numberOfLineItems
        nillableDictionary["estimatedNumberOfPicks"] = self.estimatedNumberOfPicks
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["omsOrderNo"] = self.omsOrderNo
        nillableDictionary["omsCustomerId"] = self.omsCustomerId
        nillableDictionary["orderLoadProgramId"] = self.orderLoadProgramId
        nillableDictionary["orderMessage"] = self.orderMessage
        nillableDictionary["orderReason"] = self.orderReason
        nillableDictionary["orderSourceId"] = self.orderSourceId
        nillableDictionary["packingSlipTemplateId"] = self.packingSlipTemplateId
        nillableDictionary["orderInvoiceTemplateId"] = self.orderInvoiceTemplateId
        nillableDictionary["orderConfirmationEmailTemplateId"] = self.orderConfirmationEmailTemplateId
        nillableDictionary["shipmentConfirmationEmailTemplateId"] = self.shipmentConfirmationEmailTemplateId
        nillableDictionary["priceLevel"] = self.priceLevel
        nillableDictionary["priceMode"] = self.priceMode
        nillableDictionary["priorityCode"] = self.priorityCode
        nillableDictionary["fulfillmentProcessId"] = self.fulfillmentProcessId
        nillableDictionary["shipBy"] = self.shipBy?.encodeToJSON()
        nillableDictionary["shipCode"] = self.shipCode
        nillableDictionary["shipDate"] = self.shipDate?.encodeToJSON()
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
        nillableDictionary["shippingCharge"] = self.shippingCharge
        nillableDictionary["status"] = self.status
        nillableDictionary["stopBackOrders"] = self.stopBackOrders
        nillableDictionary["subtotal"] = self.subtotal
        nillableDictionary["tax"] = self.tax
        nillableDictionary["total"] = self.total
        nillableDictionary["totalDiscount"] = self.totalDiscount
        nillableDictionary["totalPaid"] = self.totalPaid
        nillableDictionary["totalQty"] = self.totalQty
        nillableDictionary["weightLbs"] = self.weightLbs
        nillableDictionary["orderAssemblyInstructions"] = self.orderAssemblyInstructions
        nillableDictionary["lineItems"] = self.lineItems?.encodeToJSON()
        nillableDictionary["extraOrderData"] = self.extraOrderData?.encodeToJSON()
        nillableDictionary["extraLineItemData"] = self.extraLineItemData?.encodeToJSON()
        nillableDictionary["externalShippingSystemId"] = self.externalShippingSystemId
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
