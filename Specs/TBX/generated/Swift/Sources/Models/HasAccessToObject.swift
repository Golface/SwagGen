//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class HasAccessToObject: APIModel {

    /** Target urn */
    public var urn: String

    /** This tell if the client has access to the request */
    public var access: Bool

    /** This is for know if the client has a TryAndBuy */
    public var isTryandbuy: Bool

    /** This is for know from where us get the response
Options: CACHE_ACCESS / IDP_ACCESS / ACTIVITY_ACCESS / PERMISSION_ACCESS / ETIMEDOUT / IDP_ERROR */
    public var reason: String

    public var error: ErrorObject?

    /** If the action is PPV this is the date on the PPV will expire */
    public var expiration: DateTime?

    /** The response received from the IDP */
    public var idpAccess: Bool?

    public init(
        urn: String, 
        access: Bool, 
        isTryandbuy: Bool, 
        reason: String, 
        error: ErrorObject? = nil, 
        expiration: DateTime? = nil, 
        idpAccess: Bool? = nil
    ) {
        self.urn = urn
        self.access = access
        self.isTryandbuy = isTryandbuy
        self.reason = reason
        self.error = error
        self.expiration = expiration
        self.idpAccess = idpAccess
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        urn = try container.decode("urn")
        access = try container.decode("access")
        isTryandbuy = try container.decode("is_tryandbuy")
        reason = try container.decode("reason")
        error = try container.decodeIfPresent("error")
        expiration = try container.decodeIfPresent("expiration")
        idpAccess = try container.decodeIfPresent("idp_access")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(urn, forKey: "urn")
        try container.encode(access, forKey: "access")
        try container.encode(isTryandbuy, forKey: "is_tryandbuy")
        try container.encode(reason, forKey: "reason")
        try container.encodeIfPresent(error, forKey: "error")
        try container.encodeIfPresent(expiration, forKey: "expiration")
        try container.encodeIfPresent(idpAccess, forKey: "idp_access")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? HasAccessToObject else { return false }
      guard self.urn == object.urn else { return false }
      guard self.access == object.access else { return false }
      guard self.isTryandbuy == object.isTryandbuy else { return false }
      guard self.reason == object.reason else { return false }
      guard self.error == object.error else { return false }
      guard self.expiration == object.expiration else { return false }
      guard self.idpAccess == object.idpAccess else { return false }
      return true
    }

    public static func == (lhs: HasAccessToObject, rhs: HasAccessToObject) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
