//
// CartonType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CartonType: JSONEncodable {

    public var id: Int?
    public var abbreviation: String?
    public var name: String?
    public var lengthIn: Double?
    public var widthIn: Double?
    public var heightIn: Double?
    public var innerLengthIn: Double?
    public var innerWidthIn: Double?
    public var innerHeightIn: Double?
    public var weightLbs: Double?
    public var lobId: Int?
    public var isActive: Bool?
    public var customFields: [String:AnyObject]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["abbreviation"] = self.abbreviation
        nillableDictionary["name"] = self.name
        nillableDictionary["lengthIn"] = self.lengthIn
        nillableDictionary["widthIn"] = self.widthIn
        nillableDictionary["heightIn"] = self.heightIn
        nillableDictionary["innerLengthIn"] = self.innerLengthIn
        nillableDictionary["innerWidthIn"] = self.innerWidthIn
        nillableDictionary["innerHeightIn"] = self.innerHeightIn
        nillableDictionary["weightLbs"] = self.weightLbs
        nillableDictionary["lobId"] = self.lobId
        nillableDictionary["isActive"] = self.isActive
        nillableDictionary["customFields"] = self.customFields?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
