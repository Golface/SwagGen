//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Pet: APIModel {

    /** pet status in the store */
    public enum Status: String, Codable, Equatable, CaseIterable {
        case available = "available"
        case pending = "pending"
        case sold = "sold"
    }

    public var name: String

    public var photoUrls: [String]

    public var category: Category?

    public var id: Int?

    /** pet status in the store */
    public var status: Status?

    public var tags: [Tag]?

    public init(
        name: String, 
        photoUrls: [String], 
        category: Category? = nil, 
        id: Int? = nil, 
        status: Status? = nil, 
        tags: [Tag]? = nil
    ) {
        self.name = name
        self.photoUrls = photoUrls
        self.category = category
        self.id = id
        self.status = status
        self.tags = tags
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        name = try container.decode("name")
        photoUrls = try container.decodeArray("photoUrls")
        category = try container.decodeIfPresent("category")
        id = try container.decodeIfPresent("id")
        status = try container.decodeIfPresent("status")
        tags = try container.decodeArrayIfPresent("tags")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(name, forKey: "name")
        try container.encode(photoUrls, forKey: "photoUrls")
        try container.encodeIfPresent(category, forKey: "category")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(tags, forKey: "tags")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Pet else { return false }
      guard self.name == object.name else { return false }
      guard self.photoUrls == object.photoUrls else { return false }
      guard self.category == object.category else { return false }
      guard self.id == object.id else { return false }
      guard self.status == object.status else { return false }
      guard self.tags == object.tags else { return false }
      return true
    }

    public static func == (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
