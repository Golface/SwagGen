//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Page: PageSummary {

    /** Entries of a page */
    public var entries: [PageEntry]

    /** A map of custom fields defined by a curator for a page. */
    public var customFields: [String: Any]?

    /** When the page represents the detail of an item this property will contain the item detail.
For clients consuming an item detail page, any page row entry of type `ItemDetailEntry`
should look to obtain its data from the contents of this property.
*Note that you have to be using feature flag `idp` to enable this
on item detail pages. See `feature-flags.md` for further details.*
 */
    public var item: ItemDetail?

    /** When the page represents the detail of a List this property will contain the list in question.
For clients consuming a list detail page, any page row entry of type `ListDetailEntry`
should look to obtain its data from the contents of this property.
*Note that you have to be using feature flag `ldp` to enable this
on list detail pages. See `feature-flags.md` for further details.*
 */
    public var list: ItemList?

    public var metadata: PageMetadata?

    public init(
        id: String, 
        path: String, 
        title: String, 
        template: String, 
        isStatic: Bool, 
        isSystemPage: Bool, 
        entries: [PageEntry], 
        key: String? = nil, 
        customFields: [String: Any]? = nil, 
        item: ItemDetail? = nil, 
        list: ItemList? = nil, 
        metadata: PageMetadata? = nil
    ) {
        self.entries = entries
        self.customFields = customFields
        self.item = item
        self.list = list
        self.metadata = metadata
        super.init(id: id, path: path, title: title, template: template, isStatic: isStatic, isSystemPage: isSystemPage, key: key)
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        entries = try container.decodeArray("entries")
        customFields = try container.decodeAnyIfPresent("customFields")
        item = try container.decodeIfPresent("item")
        list = try container.decodeIfPresent("list")
        metadata = try container.decodeIfPresent("metadata")
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(entries, forKey: "entries")
        try container.encodeAnyIfPresent(customFields, forKey: "customFields")
        try container.encodeIfPresent(item, forKey: "item")
        try container.encodeIfPresent(list, forKey: "list")
        try container.encodeIfPresent(metadata, forKey: "metadata")
        try super.encode(to: encoder)
    }

    override public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Page else { return false }
      guard self.entries == object.entries else { return false }
      guard NSDictionary(dictionary: self.customFields ?? [:]).isEqual(to: object.customFields ?? [:]) else { return false }
      guard self.item == object.item else { return false }
      guard self.list == object.list else { return false }
      guard self.metadata == object.metadata else { return false }
      return super.isEqual(to: object)
    }
}
