//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class OrderedRoute: APIModel {

    public var name: String?

    public var naptanIds: [String]?

    public var serviceType: String?

    public init(
        name: String? = nil, 
        naptanIds: [String]? = nil, 
        serviceType: String? = nil
    ) {
        self.name = name
        self.naptanIds = naptanIds
        self.serviceType = serviceType
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        name = try container.decodeIfPresent("name")
        naptanIds = try container.decodeArrayIfPresent("naptanIds")
        serviceType = try container.decodeIfPresent("serviceType")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(naptanIds, forKey: "naptanIds")
        try container.encodeIfPresent(serviceType, forKey: "serviceType")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? OrderedRoute else { return false }
      guard self.name == object.name else { return false }
      guard self.naptanIds == object.naptanIds else { return false }
      guard self.serviceType == object.serviceType else { return false }
      return true
    }

    public static func == (lhs: OrderedRoute, rhs: OrderedRoute) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
