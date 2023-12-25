//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ContentIdentityCountry: APIModel {

    public var order: Double

    public var contentProvider: ObjectID?

    public var country: ObjectID?

    public var id: ObjectID?

    public var identityProvider: ObjectID?

    public var showInList: Bool?

    public init(
        order: Double, 
        contentProvider: ObjectID? = nil, 
        country: ObjectID? = nil, 
        id: ObjectID? = nil, 
        identityProvider: ObjectID? = nil, 
        showInList: Bool? = nil
    ) {
        self.order = order
        self.contentProvider = contentProvider
        self.country = country
        self.id = id
        self.identityProvider = identityProvider
        self.showInList = showInList
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        order = try container.decode("order")
        contentProvider = try container.decodeIfPresent("contentProvider")
        country = try container.decodeIfPresent("country")
        id = try container.decodeIfPresent("id")
        identityProvider = try container.decodeIfPresent("identityProvider")
        showInList = try container.decodeIfPresent("showInList")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(order, forKey: "order")
        try container.encodeIfPresent(contentProvider, forKey: "contentProvider")
        try container.encodeIfPresent(country, forKey: "country")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(identityProvider, forKey: "identityProvider")
        try container.encodeIfPresent(showInList, forKey: "showInList")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ContentIdentityCountry else { return false }
      guard self.order == object.order else { return false }
      guard self.contentProvider == object.contentProvider else { return false }
      guard self.country == object.country else { return false }
      guard self.id == object.id else { return false }
      guard self.identityProvider == object.identityProvider else { return false }
      guard self.showInList == object.showInList else { return false }
      return true
    }

    public static func == (lhs: ContentIdentityCountry, rhs: ContentIdentityCountry) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
