//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Recommendation: APIModel {

    public var cost: String?

    public var discountCard: String?

    public var fareType: String?

    public var gettingYourTicket: [Message]?

    public var id: Int?

    public var keyFeatures: [Message]?

    public var notes: [Message]?

    public var priceComparison: String?

    public var priceDescription: String?

    public var product: String?

    public var productType: String?

    public var rank: Int?

    public var recommendedTopUp: String?

    public var rule: Int?

    public var singleFare: Double?

    public var ticketTime: String?

    public var ticketType: String?

    public var zones: String?

    public init(
        cost: String? = nil, 
        discountCard: String? = nil, 
        fareType: String? = nil, 
        gettingYourTicket: [Message]? = nil, 
        id: Int? = nil, 
        keyFeatures: [Message]? = nil, 
        notes: [Message]? = nil, 
        priceComparison: String? = nil, 
        priceDescription: String? = nil, 
        product: String? = nil, 
        productType: String? = nil, 
        rank: Int? = nil, 
        recommendedTopUp: String? = nil, 
        rule: Int? = nil, 
        singleFare: Double? = nil, 
        ticketTime: String? = nil, 
        ticketType: String? = nil, 
        zones: String? = nil
    ) {
        self.cost = cost
        self.discountCard = discountCard
        self.fareType = fareType
        self.gettingYourTicket = gettingYourTicket
        self.id = id
        self.keyFeatures = keyFeatures
        self.notes = notes
        self.priceComparison = priceComparison
        self.priceDescription = priceDescription
        self.product = product
        self.productType = productType
        self.rank = rank
        self.recommendedTopUp = recommendedTopUp
        self.rule = rule
        self.singleFare = singleFare
        self.ticketTime = ticketTime
        self.ticketType = ticketType
        self.zones = zones
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        cost = try container.decodeIfPresent("cost")
        discountCard = try container.decodeIfPresent("discountCard")
        fareType = try container.decodeIfPresent("fareType")
        gettingYourTicket = try container.decodeArrayIfPresent("gettingYourTicket")
        id = try container.decodeIfPresent("id")
        keyFeatures = try container.decodeArrayIfPresent("keyFeatures")
        notes = try container.decodeArrayIfPresent("notes")
        priceComparison = try container.decodeIfPresent("priceComparison")
        priceDescription = try container.decodeIfPresent("priceDescription")
        product = try container.decodeIfPresent("product")
        productType = try container.decodeIfPresent("productType")
        rank = try container.decodeIfPresent("rank")
        recommendedTopUp = try container.decodeIfPresent("recommendedTopUp")
        rule = try container.decodeIfPresent("rule")
        singleFare = try container.decodeIfPresent("singleFare")
        ticketTime = try container.decodeIfPresent("ticketTime")
        ticketType = try container.decodeIfPresent("ticketType")
        zones = try container.decodeIfPresent("zones")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(cost, forKey: "cost")
        try container.encodeIfPresent(discountCard, forKey: "discountCard")
        try container.encodeIfPresent(fareType, forKey: "fareType")
        try container.encodeIfPresent(gettingYourTicket, forKey: "gettingYourTicket")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(keyFeatures, forKey: "keyFeatures")
        try container.encodeIfPresent(notes, forKey: "notes")
        try container.encodeIfPresent(priceComparison, forKey: "priceComparison")
        try container.encodeIfPresent(priceDescription, forKey: "priceDescription")
        try container.encodeIfPresent(product, forKey: "product")
        try container.encodeIfPresent(productType, forKey: "productType")
        try container.encodeIfPresent(rank, forKey: "rank")
        try container.encodeIfPresent(recommendedTopUp, forKey: "recommendedTopUp")
        try container.encodeIfPresent(rule, forKey: "rule")
        try container.encodeIfPresent(singleFare, forKey: "singleFare")
        try container.encodeIfPresent(ticketTime, forKey: "ticketTime")
        try container.encodeIfPresent(ticketType, forKey: "ticketType")
        try container.encodeIfPresent(zones, forKey: "zones")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Recommendation else { return false }
      guard self.cost == object.cost else { return false }
      guard self.discountCard == object.discountCard else { return false }
      guard self.fareType == object.fareType else { return false }
      guard self.gettingYourTicket == object.gettingYourTicket else { return false }
      guard self.id == object.id else { return false }
      guard self.keyFeatures == object.keyFeatures else { return false }
      guard self.notes == object.notes else { return false }
      guard self.priceComparison == object.priceComparison else { return false }
      guard self.priceDescription == object.priceDescription else { return false }
      guard self.product == object.product else { return false }
      guard self.productType == object.productType else { return false }
      guard self.rank == object.rank else { return false }
      guard self.recommendedTopUp == object.recommendedTopUp else { return false }
      guard self.rule == object.rule else { return false }
      guard self.singleFare == object.singleFare else { return false }
      guard self.ticketTime == object.ticketTime else { return false }
      guard self.ticketType == object.ticketType else { return false }
      guard self.zones == object.zones else { return false }
      return true
    }

    public static func == (lhs: Recommendation, rhs: Recommendation) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
