//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EmissionsSurchargeVehicle: APIModel {

    public enum Compliance: String, Codable, Equatable, CaseIterable {
        case notCompliant = "NotCompliant"
        case compliant = "Compliant"
        case exempt = "Exempt"
    }

    public var colour: String?

    public var compliance: Compliance?

    public var make: String?

    public var model: String?

    public var type: String?

    public var vrm: String?

    public init(
        colour: String? = nil, 
        compliance: Compliance? = nil, 
        make: String? = nil, 
        model: String? = nil, 
        type: String? = nil, 
        vrm: String? = nil
    ) {
        self.colour = colour
        self.compliance = compliance
        self.make = make
        self.model = model
        self.type = type
        self.vrm = vrm
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        colour = try container.decodeIfPresent("colour")
        compliance = try container.decodeIfPresent("compliance")
        make = try container.decodeIfPresent("make")
        model = try container.decodeIfPresent("model")
        type = try container.decodeIfPresent("type")
        vrm = try container.decodeIfPresent("vrm")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(colour, forKey: "colour")
        try container.encodeIfPresent(compliance, forKey: "compliance")
        try container.encodeIfPresent(make, forKey: "make")
        try container.encodeIfPresent(model, forKey: "model")
        try container.encodeIfPresent(type, forKey: "type")
        try container.encodeIfPresent(vrm, forKey: "vrm")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EmissionsSurchargeVehicle else { return false }
      guard self.colour == object.colour else { return false }
      guard self.compliance == object.compliance else { return false }
      guard self.make == object.make else { return false }
      guard self.model == object.model else { return false }
      guard self.type == object.type else { return false }
      guard self.vrm == object.vrm else { return false }
      return true
    }

    public static func == (lhs: EmissionsSurchargeVehicle, rhs: EmissionsSurchargeVehicle) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
