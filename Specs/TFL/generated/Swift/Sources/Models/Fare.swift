//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Fare: APIModel {

    public var cap: Double?

    public var cost: String?

    public var description: String?

    public var id: Int?

    public var mode: String?

    public var passengerType: String?

    public var ticketTime: String?

    public var ticketType: String?

    public var validFrom: DateTime?

    public var validUntil: DateTime?

    public var zone: String?

    public init(
        cap: Double? = nil, 
        cost: String? = nil, 
        description: String? = nil, 
        id: Int? = nil, 
        mode: String? = nil, 
        passengerType: String? = nil, 
        ticketTime: String? = nil, 
        ticketType: String? = nil, 
        validFrom: DateTime? = nil, 
        validUntil: DateTime? = nil, 
        zone: String? = nil
    ) {
        self.cap = cap
        self.cost = cost
        self.description = description
        self.id = id
        self.mode = mode
        self.passengerType = passengerType
        self.ticketTime = ticketTime
        self.ticketType = ticketType
        self.validFrom = validFrom
        self.validUntil = validUntil
        self.zone = zone
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        cap = try container.decodeIfPresent("cap")
        cost = try container.decodeIfPresent("cost")
        description = try container.decodeIfPresent("description")
        id = try container.decodeIfPresent("id")
        mode = try container.decodeIfPresent("mode")
        passengerType = try container.decodeIfPresent("passengerType")
        ticketTime = try container.decodeIfPresent("ticketTime")
        ticketType = try container.decodeIfPresent("ticketType")
        validFrom = try container.decodeIfPresent("validFrom")
        validUntil = try container.decodeIfPresent("validUntil")
        zone = try container.decodeIfPresent("zone")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(cap, forKey: "cap")
        try container.encodeIfPresent(cost, forKey: "cost")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(mode, forKey: "mode")
        try container.encodeIfPresent(passengerType, forKey: "passengerType")
        try container.encodeIfPresent(ticketTime, forKey: "ticketTime")
        try container.encodeIfPresent(ticketType, forKey: "ticketType")
        try container.encodeIfPresent(validFrom, forKey: "validFrom")
        try container.encodeIfPresent(validUntil, forKey: "validUntil")
        try container.encodeIfPresent(zone, forKey: "zone")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Fare else { return false }
      guard self.cap == object.cap else { return false }
      guard self.cost == object.cost else { return false }
      guard self.description == object.description else { return false }
      guard self.id == object.id else { return false }
      guard self.mode == object.mode else { return false }
      guard self.passengerType == object.passengerType else { return false }
      guard self.ticketTime == object.ticketTime else { return false }
      guard self.ticketType == object.ticketType else { return false }
      guard self.validFrom == object.validFrom else { return false }
      guard self.validUntil == object.validUntil else { return false }
      guard self.zone == object.zone else { return false }
      return true
    }

    public static func == (lhs: Fare, rhs: Fare) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
