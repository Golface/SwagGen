//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Leg: APIModel {

    public var arrivalPoint: Point?

    public var arrivalTime: DateTime?

    public var departurePoint: Point?

    public var departureTime: DateTime?

    public var disruptions: [Disruption]?

    public var distance: Double?

    public var duration: Int?

    public var hasFixedLocations: Bool?

    /** Describes the action the user need to take for this section, E.g. "walk to the
            district line" */
    public var instruction: Instruction?

    public var isDisrupted: Bool?

    public var mode: Identifier?

    public var obstacles: [Obstacle]?

    public var path: Path?

    public var plannedWorks: [PlannedWork]?

    public var routeOptions: [RouteOption]?

    public var speed: String?

    public init(
        arrivalPoint: Point? = nil, 
        arrivalTime: DateTime? = nil, 
        departurePoint: Point? = nil, 
        departureTime: DateTime? = nil, 
        disruptions: [Disruption]? = nil, 
        distance: Double? = nil, 
        duration: Int? = nil, 
        hasFixedLocations: Bool? = nil, 
        instruction: Instruction? = nil, 
        isDisrupted: Bool? = nil, 
        mode: Identifier? = nil, 
        obstacles: [Obstacle]? = nil, 
        path: Path? = nil, 
        plannedWorks: [PlannedWork]? = nil, 
        routeOptions: [RouteOption]? = nil, 
        speed: String? = nil
    ) {
        self.arrivalPoint = arrivalPoint
        self.arrivalTime = arrivalTime
        self.departurePoint = departurePoint
        self.departureTime = departureTime
        self.disruptions = disruptions
        self.distance = distance
        self.duration = duration
        self.hasFixedLocations = hasFixedLocations
        self.instruction = instruction
        self.isDisrupted = isDisrupted
        self.mode = mode
        self.obstacles = obstacles
        self.path = path
        self.plannedWorks = plannedWorks
        self.routeOptions = routeOptions
        self.speed = speed
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        arrivalPoint = try container.decodeIfPresent("arrivalPoint")
        arrivalTime = try container.decodeIfPresent("arrivalTime")
        departurePoint = try container.decodeIfPresent("departurePoint")
        departureTime = try container.decodeIfPresent("departureTime")
        disruptions = try container.decodeArrayIfPresent("disruptions")
        distance = try container.decodeIfPresent("distance")
        duration = try container.decodeIfPresent("duration")
        hasFixedLocations = try container.decodeIfPresent("hasFixedLocations")
        instruction = try container.decodeIfPresent("instruction")
        isDisrupted = try container.decodeIfPresent("isDisrupted")
        mode = try container.decodeIfPresent("mode")
        obstacles = try container.decodeArrayIfPresent("obstacles")
        path = try container.decodeIfPresent("path")
        plannedWorks = try container.decodeArrayIfPresent("plannedWorks")
        routeOptions = try container.decodeArrayIfPresent("routeOptions")
        speed = try container.decodeIfPresent("speed")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(arrivalPoint, forKey: "arrivalPoint")
        try container.encodeIfPresent(arrivalTime, forKey: "arrivalTime")
        try container.encodeIfPresent(departurePoint, forKey: "departurePoint")
        try container.encodeIfPresent(departureTime, forKey: "departureTime")
        try container.encodeIfPresent(disruptions, forKey: "disruptions")
        try container.encodeIfPresent(distance, forKey: "distance")
        try container.encodeIfPresent(duration, forKey: "duration")
        try container.encodeIfPresent(hasFixedLocations, forKey: "hasFixedLocations")
        try container.encodeIfPresent(instruction, forKey: "instruction")
        try container.encodeIfPresent(isDisrupted, forKey: "isDisrupted")
        try container.encodeIfPresent(mode, forKey: "mode")
        try container.encodeIfPresent(obstacles, forKey: "obstacles")
        try container.encodeIfPresent(path, forKey: "path")
        try container.encodeIfPresent(plannedWorks, forKey: "plannedWorks")
        try container.encodeIfPresent(routeOptions, forKey: "routeOptions")
        try container.encodeIfPresent(speed, forKey: "speed")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Leg else { return false }
      guard self.arrivalPoint == object.arrivalPoint else { return false }
      guard self.arrivalTime == object.arrivalTime else { return false }
      guard self.departurePoint == object.departurePoint else { return false }
      guard self.departureTime == object.departureTime else { return false }
      guard self.disruptions == object.disruptions else { return false }
      guard self.distance == object.distance else { return false }
      guard self.duration == object.duration else { return false }
      guard self.hasFixedLocations == object.hasFixedLocations else { return false }
      guard self.instruction == object.instruction else { return false }
      guard self.isDisrupted == object.isDisrupted else { return false }
      guard self.mode == object.mode else { return false }
      guard self.obstacles == object.obstacles else { return false }
      guard self.path == object.path else { return false }
      guard self.plannedWorks == object.plannedWorks else { return false }
      guard self.routeOptions == object.routeOptions else { return false }
      guard self.speed == object.speed else { return false }
      return true
    }

    public static func == (lhs: Leg, rhs: Leg) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
