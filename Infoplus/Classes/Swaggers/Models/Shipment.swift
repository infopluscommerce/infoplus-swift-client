//
// Shipment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Shipment: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var shipDate: NSDate?
    public var deliveredDate: NSDate?
    public var trackingNo: String?
    public var warehouseId: Int32?
    public var lobId: Int32?
    public var orderNo: Double?
    public var cartonNo: Int32?
    public var numberOfCartons: Int32?
    public var status: String?
    public var shipped: Bool?
    public var casebreak: Bool?
    public var carrierServiceId: Int32?
    public var dim1In: Double?
    public var dim2In: Double?
    public var dim3In: Double?
    public var estimatedZone: String?
    public var parcelAccountNo: String?
    public var thirdPartyParcelAccountNo: String?
    public var shipmentId: String?
    public var manifestId: Int32?
    public var residential: Bool?
    public var billingOption: String?
    public var weightLbs: Double?
    public var dimWeight: Double?
    public var licensePlateNumber: String?
    public var chargedFreightAmount: Double?
    public var publishedFreightAmount: Double?
    public var retailFreightAmount: Double?
    public var externalShippingSystemId: Int32?
    public var shipmentType: String?
    public var carrierCompany: String?
    public var cartonId: Int32?
    public var cartonTypeId: Int32?
    public var deliveryMessage: String?
    public var omsOrderNo: Int32?
    public var carrier: Int32?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["shipDate"] = self.shipDate?.encodeToJSON()
        nillableDictionary["deliveredDate"] = self.deliveredDate?.encodeToJSON()
        nillableDictionary["trackingNo"] = self.trackingNo
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["orderNo"] = self.orderNo
        nillableDictionary["cartonNo"] = self.cartonNo?.encodeToJSON()
        nillableDictionary["numberOfCartons"] = self.numberOfCartons?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["shipped"] = self.shipped
        nillableDictionary["casebreak"] = self.casebreak
        nillableDictionary["carrierServiceId"] = self.carrierServiceId?.encodeToJSON()
        nillableDictionary["dim1In"] = self.dim1In
        nillableDictionary["dim2In"] = self.dim2In
        nillableDictionary["dim3In"] = self.dim3In
        nillableDictionary["estimatedZone"] = self.estimatedZone
        nillableDictionary["parcelAccountNo"] = self.parcelAccountNo
        nillableDictionary["thirdPartyParcelAccountNo"] = self.thirdPartyParcelAccountNo
        nillableDictionary["shipmentId"] = self.shipmentId
        nillableDictionary["manifestId"] = self.manifestId?.encodeToJSON()
        nillableDictionary["residential"] = self.residential
        nillableDictionary["billingOption"] = self.billingOption
        nillableDictionary["weightLbs"] = self.weightLbs
        nillableDictionary["dimWeight"] = self.dimWeight
        nillableDictionary["licensePlateNumber"] = self.licensePlateNumber
        nillableDictionary["chargedFreightAmount"] = self.chargedFreightAmount
        nillableDictionary["publishedFreightAmount"] = self.publishedFreightAmount
        nillableDictionary["retailFreightAmount"] = self.retailFreightAmount
        nillableDictionary["externalShippingSystemId"] = self.externalShippingSystemId?.encodeToJSON()
        nillableDictionary["shipmentType"] = self.shipmentType
        nillableDictionary["carrierCompany"] = self.carrierCompany
        nillableDictionary["cartonId"] = self.cartonId?.encodeToJSON()
        nillableDictionary["cartonTypeId"] = self.cartonTypeId?.encodeToJSON()
        nillableDictionary["deliveryMessage"] = self.deliveryMessage
        nillableDictionary["omsOrderNo"] = self.omsOrderNo?.encodeToJSON()
        nillableDictionary["carrier"] = self.carrier?.encodeToJSON()
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
