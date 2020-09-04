//
// Asn.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Asn: JSONEncodable {
    public var id: Int32?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var lobId: Int32?
    public var poNo: String?
    public var vendorId: Int32?
    public var warehouseId: Int32?
    public var orderDate: NSDate?
    public var type: String?
    public var billingName: String?
    public var billingAttention: String?
    public var billingStreet1: String?
    public var billingStreet2: String?
    public var billingCity: String?
    public var billingState: String?
    public var billingZipCode: String?
    public var billingPhone: String?
    public var shipToName: String?
    public var shipToAddress: String?
    public var shipToStreet1: String?
    public var shipToStreet2: String?
    public var shipToCity: String?
    public var shipToState: String?
    public var shipToZipCode: String?
    public var shipToPhone: String?
    public var corporateName: String?
    public var corporateAttention: String?
    public var corporateStreet1: String?
    public var corporateStreet2: String?
    public var corporateCity: String?
    public var corporateState: String?
    public var corporateZipCode: String?
    public var accountCode: String?
    public var buyer: Int32?
    public var carrier: Int32?
    public var confTo: String?
    public var fob: String?
    public var printed: String?
    public var projectNo: Int32?
    public var remarks: String?
    public var requestBy: String?
    public var terms: String?
    public var usedBy: String?
    public var lineItems: [ItemReceipt]?
    public var status: String?
    public var transferOrderId: Double?
    public var customFields: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["lobId"] = self.lobId?.encodeToJSON()
        nillableDictionary["poNo"] = self.poNo
        nillableDictionary["vendorId"] = self.vendorId?.encodeToJSON()
        nillableDictionary["warehouseId"] = self.warehouseId?.encodeToJSON()
        nillableDictionary["orderDate"] = self.orderDate?.encodeToJSON()
        nillableDictionary["type"] = self.type
        nillableDictionary["billingName"] = self.billingName
        nillableDictionary["billingAttention"] = self.billingAttention
        nillableDictionary["billingStreet1"] = self.billingStreet1
        nillableDictionary["billingStreet2"] = self.billingStreet2
        nillableDictionary["billingCity"] = self.billingCity
        nillableDictionary["billingState"] = self.billingState
        nillableDictionary["billingZipCode"] = self.billingZipCode
        nillableDictionary["billingPhone"] = self.billingPhone
        nillableDictionary["shipToName"] = self.shipToName
        nillableDictionary["shipToAddress"] = self.shipToAddress
        nillableDictionary["shipToStreet1"] = self.shipToStreet1
        nillableDictionary["shipToStreet2"] = self.shipToStreet2
        nillableDictionary["shipToCity"] = self.shipToCity
        nillableDictionary["shipToState"] = self.shipToState
        nillableDictionary["shipToZipCode"] = self.shipToZipCode
        nillableDictionary["shipToPhone"] = self.shipToPhone
        nillableDictionary["corporateName"] = self.corporateName
        nillableDictionary["corporateAttention"] = self.corporateAttention
        nillableDictionary["corporateStreet1"] = self.corporateStreet1
        nillableDictionary["corporateStreet2"] = self.corporateStreet2
        nillableDictionary["corporateCity"] = self.corporateCity
        nillableDictionary["corporateState"] = self.corporateState
        nillableDictionary["corporateZipCode"] = self.corporateZipCode
        nillableDictionary["accountCode"] = self.accountCode
        nillableDictionary["buyer"] = self.buyer?.encodeToJSON()
        nillableDictionary["carrier"] = self.carrier?.encodeToJSON()
        nillableDictionary["confTo"] = self.confTo
        nillableDictionary["fob"] = self.fob
        nillableDictionary["printed"] = self.printed
        nillableDictionary["projectNo"] = self.projectNo?.encodeToJSON()
        nillableDictionary["remarks"] = self.remarks
        nillableDictionary["requestBy"] = self.requestBy
        nillableDictionary["terms"] = self.terms
        nillableDictionary["usedBy"] = self.usedBy
        nillableDictionary["lineItems"] = self.lineItems?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["transferOrderId"] = self.transferOrderId
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}