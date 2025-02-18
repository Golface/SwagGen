//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class StopPointSequence: APIModel {

    public enum ServiceType: String, Codable, Equatable, CaseIterable {
        case regular = "Regular"
        case night = "Night"
    }

    /** The id of this branch. */
    public var branchId: Int?

    public var direction: String?

    public var lineId: String?

    public var lineName: String?

    /** The ids of the next branch(es) in the sequence. Note that the next and previous branch id can be
            identical in the case of a looped route e.g. the Circle line. */
    public var nextBranchIds: [Int]?

    /** The ids of the previous branch(es) in the sequence. Note that the next and previous branch id can be
            identical in the case of a looped route e.g. the Circle line. */
    public var prevBranchIds: [Int]?

    public var serviceType: ServiceType?

    public var stopPoint: [MatchedStop]?

    public init(
        branchId: Int? = nil, 
        direction: String? = nil, 
        lineId: String? = nil, 
        lineName: String? = nil, 
        nextBranchIds: [Int]? = nil, 
        prevBranchIds: [Int]? = nil, 
        serviceType: ServiceType? = nil, 
        stopPoint: [MatchedStop]? = nil
    ) {
        self.branchId = branchId
        self.direction = direction
        self.lineId = lineId
        self.lineName = lineName
        self.nextBranchIds = nextBranchIds
        self.prevBranchIds = prevBranchIds
        self.serviceType = serviceType
        self.stopPoint = stopPoint
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        branchId = try container.decodeIfPresent("branchId")
        direction = try container.decodeIfPresent("direction")
        lineId = try container.decodeIfPresent("lineId")
        lineName = try container.decodeIfPresent("lineName")
        nextBranchIds = try container.decodeArrayIfPresent("nextBranchIds")
        prevBranchIds = try container.decodeArrayIfPresent("prevBranchIds")
        serviceType = try container.decodeIfPresent("serviceType")
        stopPoint = try container.decodeArrayIfPresent("stopPoint")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(branchId, forKey: "branchId")
        try container.encodeIfPresent(direction, forKey: "direction")
        try container.encodeIfPresent(lineId, forKey: "lineId")
        try container.encodeIfPresent(lineName, forKey: "lineName")
        try container.encodeIfPresent(nextBranchIds, forKey: "nextBranchIds")
        try container.encodeIfPresent(prevBranchIds, forKey: "prevBranchIds")
        try container.encodeIfPresent(serviceType, forKey: "serviceType")
        try container.encodeIfPresent(stopPoint, forKey: "stopPoint")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? StopPointSequence else { return false }
      guard self.branchId == object.branchId else { return false }
      guard self.direction == object.direction else { return false }
      guard self.lineId == object.lineId else { return false }
      guard self.lineName == object.lineName else { return false }
      guard self.nextBranchIds == object.nextBranchIds else { return false }
      guard self.prevBranchIds == object.prevBranchIds else { return false }
      guard self.serviceType == object.serviceType else { return false }
      guard self.stopPoint == object.stopPoint else { return false }
      return true
    }

    public static func == (lhs: StopPointSequence, rhs: StopPointSequence) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
