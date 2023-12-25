//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents an entry of a Page.
Defines what specific piece of content should be presented e.g. an Item or ItemList.
Also defines what visual template should be used to render that content.
 */
public class PageEntry: APIModel {

    /** The type of PageEntry. Used to help identify what type of content will be presented. */
    public enum `Type`: String, Codable, Equatable, CaseIterable {
        case itemEntry = "ItemEntry"
        case itemDetailEntry = "ItemDetailEntry"
        case listEntry = "ListEntry"
        case listDetailEntry = "ListDetailEntry"
        case userEntry = "UserEntry"
        case textEntry = "TextEntry"
        case imageEntry = "ImageEntry"
        case customEntry = "CustomEntry"
        case peopleEntry = "PeopleEntry"
    }

    /** The unique identifier for a page entry. */
    public var id: String

    /** The type of PageEntry. Used to help identify what type of content will be presented. */
    public var type: `Type`

    /** The name of the Page Entry. */
    public var title: String

    /** Template type used to present the content of the PageEntry. */
    public var template: String

    /** A map of custom fields defined by a curator for a page entry. */
    public var customFields: [String: Any]?

    /** The images for the page entry if any.
For example the images of an `ImageEntry`.
 */
    public var images: [String: URL]?

    /** If 'type' is 'ItemEntry' then this is the item to be represented. */
    public var item: ItemSummary?

    /** If 'type' is 'ListEntry' or 'UserEntry' then this is the list to be represented. */
    public var list: ItemList?

    /** If 'type' is 'PeopleEntry' then this is the array of people to present. */
    public var people: [Person]?

    /** If 'type' is 'TextEntry' then this is the text to be represented. */
    public var text: String?

    public init(
        id: String, 
        type: `Type`, 
        title: String, 
        template: String, 
        customFields: [String: Any]? = nil, 
        images: [String: URL]? = nil, 
        item: ItemSummary? = nil, 
        list: ItemList? = nil, 
        people: [Person]? = nil, 
        text: String? = nil
    ) {
        self.id = id
        self.type = type
        self.title = title
        self.template = template
        self.customFields = customFields
        self.images = images
        self.item = item
        self.list = list
        self.people = people
        self.text = text
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        type = try container.decode("type")
        title = try container.decode("title")
        template = try container.decode("template")
        customFields = try container.decodeAnyIfPresent("customFields")
        images = try container.decodeIfPresent("images")
        item = try container.decodeIfPresent("item")
        list = try container.decodeIfPresent("list")
        people = try container.decodeArrayIfPresent("people")
        text = try container.decodeIfPresent("text")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(type, forKey: "type")
        try container.encode(title, forKey: "title")
        try container.encode(template, forKey: "template")
        try container.encodeAnyIfPresent(customFields, forKey: "customFields")
        try container.encodeIfPresent(images, forKey: "images")
        try container.encodeIfPresent(item, forKey: "item")
        try container.encodeIfPresent(list, forKey: "list")
        try container.encodeIfPresent(people, forKey: "people")
        try container.encodeIfPresent(text, forKey: "text")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PageEntry else { return false }
      guard self.id == object.id else { return false }
      guard self.type == object.type else { return false }
      guard self.title == object.title else { return false }
      guard self.template == object.template else { return false }
      guard NSDictionary(dictionary: self.customFields ?? [:]).isEqual(to: object.customFields ?? [:]) else { return false }
      guard self.images == object.images else { return false }
      guard self.item == object.item else { return false }
      guard self.list == object.list else { return false }
      guard self.people == object.people else { return false }
      guard self.text == object.text else { return false }
      return true
    }

    public static func == (lhs: PageEntry, rhs: PageEntry) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
