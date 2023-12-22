//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PaginationAuth: APIModel {

    /** The token type required to load the list. */
    public enum `Type`: String, Codable, Equatable, CaseIterable {
        case userAccount = "UserAccount"
        case userProfile = "UserProfile"
    }

    /** The token scope required. */
    public enum Scope: String, Codable, Equatable, CaseIterable {
        case catalog = "Catalog"
        case commerce = "Commerce"
        case settings = "Settings"
    }

    /** The token type required to load the list. */
    public var type: `Type`

    /** The token scope required. */
    public var scope: Scope

    public init(
        type: `Type`, 
        scope: Scope
    ) {
        self.type = type
        self.scope = scope
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        type = try container.decode("type")
        scope = try container.decode("scope")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(type, forKey: "type")
        try container.encode(scope, forKey: "scope")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PaginationAuth else { return false }
      guard self.type == object.type else { return false }
      guard self.scope == object.scope else { return false }
      return true
    }

    public static func == (lhs: PaginationAuth, rhs: PaginationAuth) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
