//
// ExternalShipment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ExternalShipment: JSONEncodable {

    public var id: Int?
    public var createDate: NSDate?
    public var modifyDate: NSDate?
    public var orderId: Double?
    public var carrierId: Int?
    public var parcelAccountId: Int?
    public var thirdPartyParcelAccountId: Int?
    public var freight: Double?
    public var trackingNo: String?
    public var dim1In: Double?
    public var dim2In: Double?
    public var dim3In: Double?
    public var weightLbs: Double?
    public var dimWeight: Double?
    public var residential: Bool?
    public var zone: String?
    public var status: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["createDate"] = self.createDate?.encodeToJSON()
        nillableDictionary["modifyDate"] = self.modifyDate?.encodeToJSON()
        nillableDictionary["orderId"] = self.orderId
        nillableDictionary["carrierId"] = self.carrierId
        nillableDictionary["parcelAccountId"] = self.parcelAccountId
        nillableDictionary["thirdPartyParcelAccountId"] = self.thirdPartyParcelAccountId
        nillableDictionary["freight"] = self.freight
        nillableDictionary["trackingNo"] = self.trackingNo
        nillableDictionary["dim1In"] = self.dim1In
        nillableDictionary["dim2In"] = self.dim2In
        nillableDictionary["dim3In"] = self.dim3In
        nillableDictionary["weightLbs"] = self.weightLbs
        nillableDictionary["dimWeight"] = self.dimWeight
        nillableDictionary["residential"] = self.residential
        nillableDictionary["zone"] = self.zone
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
