//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Puppi: Dog {

    public var play: Bool?

    public init(
        animal: String? = nil, 
        barks: Bool? = nil, 
        play: Bool? = nil
    ) {
        self.play = play
        super.init(animal: animal, barks: barks)
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        play = try container.decodeIfPresent("play")
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(play, forKey: "play")
        try super.encode(to: encoder)
    }

    override public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Puppi else { return false }
      guard self.play == object.play else { return false }
      return super.isEqual(to: object)
    }
}
