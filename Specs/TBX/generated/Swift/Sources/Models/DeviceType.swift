//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DeviceType: APIModel {

    public var shortName: String

    public var contentProvider: ObjectID?

    public var defaultExpireDays: Double?

    public var deviceType: String?

    public var id: ObjectID?

    public var needActivation: Bool?

    public init(
        shortName: String, 
        contentProvider: ObjectID? = nil, 
        defaultExpireDays: Double? = nil, 
        deviceType: String? = nil, 
        id: ObjectID? = nil, 
        needActivation: Bool? = nil
    ) {
        self.shortName = shortName
        self.contentProvider = contentProvider
        self.defaultExpireDays = defaultExpireDays
        self.deviceType = deviceType
        self.id = id
        self.needActivation = needActivation
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        shortName = try container.decode("shortName")
        contentProvider = try container.decodeIfPresent("contentProvider")
        defaultExpireDays = try container.decodeIfPresent("defaultExpireDays")
        deviceType = try container.decodeIfPresent("deviceType")
        id = try container.decodeIfPresent("id")
        needActivation = try container.decodeIfPresent("needActivation")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(shortName, forKey: "shortName")
        try container.encodeIfPresent(contentProvider, forKey: "contentProvider")
        try container.encodeIfPresent(defaultExpireDays, forKey: "defaultExpireDays")
        try container.encodeIfPresent(deviceType, forKey: "deviceType")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(needActivation, forKey: "needActivation")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceType else { return false }
      guard self.shortName == object.shortName else { return false }
      guard self.contentProvider == object.contentProvider else { return false }
      guard self.defaultExpireDays == object.defaultExpireDays else { return false }
      guard self.deviceType == object.deviceType else { return false }
      guard self.id == object.id else { return false }
      guard self.needActivation == object.needActivation else { return false }
      return true
    }

    public static func == (lhs: DeviceType, rhs: DeviceType) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
