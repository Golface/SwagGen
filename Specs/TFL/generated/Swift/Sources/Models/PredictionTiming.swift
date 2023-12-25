//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PredictionTiming: APIModel {

    public var countdownServerAdjustment: String?

    public var insert: DateTime?

    public var read: DateTime?

    public var received: DateTime?

    public var sent: DateTime?

    public var source: DateTime?

    public init(
        countdownServerAdjustment: String? = nil, 
        insert: DateTime? = nil, 
        read: DateTime? = nil, 
        received: DateTime? = nil, 
        sent: DateTime? = nil, 
        source: DateTime? = nil
    ) {
        self.countdownServerAdjustment = countdownServerAdjustment
        self.insert = insert
        self.read = read
        self.received = received
        self.sent = sent
        self.source = source
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        countdownServerAdjustment = try container.decodeIfPresent("countdownServerAdjustment")
        insert = try container.decodeIfPresent("insert")
        read = try container.decodeIfPresent("read")
        received = try container.decodeIfPresent("received")
        sent = try container.decodeIfPresent("sent")
        source = try container.decodeIfPresent("source")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(countdownServerAdjustment, forKey: "countdownServerAdjustment")
        try container.encodeIfPresent(insert, forKey: "insert")
        try container.encodeIfPresent(read, forKey: "read")
        try container.encodeIfPresent(received, forKey: "received")
        try container.encodeIfPresent(sent, forKey: "sent")
        try container.encodeIfPresent(source, forKey: "source")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PredictionTiming else { return false }
      guard self.countdownServerAdjustment == object.countdownServerAdjustment else { return false }
      guard self.insert == object.insert else { return false }
      guard self.read == object.read else { return false }
      guard self.received == object.received else { return false }
      guard self.sent == object.sent else { return false }
      guard self.source == object.source else { return false }
      return true
    }

    public static func == (lhs: PredictionTiming, rhs: PredictionTiming) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
