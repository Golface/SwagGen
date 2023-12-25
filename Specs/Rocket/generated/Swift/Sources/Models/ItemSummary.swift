//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ItemSummary: APIModel {

    /** Unique identifier for an Item */
    public var id: String

    /** The type of item */
    public var type: ItemType

    /** The path to the detail page of this item. Can be used to load the item detail page via the /page endpoint. */
    public var path: String

    /** The display title of the item. */
    public var title: String

    /** The number of available episodes in the season, if the item is a season. */
    public var availableEpisodeCount: Int?

    /** The number of available seasons in the show, if the item is a show. */
    public var availableSeasonCount: Int?

    /** The average user rating. */
    public var averageUserRating: Double?

    /** The badge this item has. */
    public var badge: String?

    /** The classification rating of this item. */
    public var classification: ClassificationSummary?

    /** A contextually relative title to display after a parent title.
Mostly applicable to Season, Episode and Trailer.
 */
    public var contextualTitle: String?

    /** A map of custom fields defined by a curator for an item. */
    public var customFields: [String: Any]?

    /** A custom identifier for this item.
For example the id for this item under a different content system.
 */
    public var customId: String?

    /** The duration of the media in seconds. */
    public var duration: Int?

    /** The number of episodes in the season, if the item is a season. */
    public var episodeCount: Int?

    /** The number of an episode, if the item is an episode. */
    public var episodeNumber: Int?

    /** The array of genres this item belongs to. */
    public var genres: [String]?

    /** Whether closed captioning is available. */
    public var hasClosedCaptions: Bool?

    public var images: [String: URL]?

    /** The array of available offers for this item. */
    public var offers: [Offer]?

    /** The year this item was released */
    public var releaseYear: Int?

    /** The scopes for this item */
    public var scopes: [String]?

    /** The identifier of the season this item belongs to, if the item is an episode. */
    public var seasonId: String?

    /** The number of a season, if the item is a season. */
    public var seasonNumber: Int?

    /** A truncated description of the item */
    public var shortDescription: String?

    /** The identifier of the show this item belongs to, if the item is a season or episode. */
    public var showId: String?

    /** The tagline of the item */
    public var tagline: String?

    /** The path to watch this item, if the item is a watchable type, e.g. a `movie`, `program` and `episode`. */
    public var watchPath: String?

    public init(
        id: String, 
        type: ItemType, 
        path: String, 
        title: String, 
        availableEpisodeCount: Int? = nil, 
        availableSeasonCount: Int? = nil, 
        averageUserRating: Double? = nil, 
        badge: String? = nil, 
        classification: ClassificationSummary? = nil, 
        contextualTitle: String? = nil, 
        customFields: [String: Any]? = nil, 
        customId: String? = nil, 
        duration: Int? = nil, 
        episodeCount: Int? = nil, 
        episodeNumber: Int? = nil, 
        genres: [String]? = nil, 
        hasClosedCaptions: Bool? = nil, 
        images: [String: URL]? = nil, 
        offers: [Offer]? = nil, 
        releaseYear: Int? = nil, 
        scopes: [String]? = nil, 
        seasonId: String? = nil, 
        seasonNumber: Int? = nil, 
        shortDescription: String? = nil, 
        showId: String? = nil, 
        tagline: String? = nil, 
        watchPath: String? = nil
    ) {
        self.id = id
        self.type = type
        self.path = path
        self.title = title
        self.availableEpisodeCount = availableEpisodeCount
        self.availableSeasonCount = availableSeasonCount
        self.averageUserRating = averageUserRating
        self.badge = badge
        self.classification = classification
        self.contextualTitle = contextualTitle
        self.customFields = customFields
        self.customId = customId
        self.duration = duration
        self.episodeCount = episodeCount
        self.episodeNumber = episodeNumber
        self.genres = genres
        self.hasClosedCaptions = hasClosedCaptions
        self.images = images
        self.offers = offers
        self.releaseYear = releaseYear
        self.scopes = scopes
        self.seasonId = seasonId
        self.seasonNumber = seasonNumber
        self.shortDescription = shortDescription
        self.showId = showId
        self.tagline = tagline
        self.watchPath = watchPath
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        type = try container.decode("type")
        path = try container.decode("path")
        title = try container.decode("title")
        availableEpisodeCount = try container.decodeIfPresent("availableEpisodeCount")
        availableSeasonCount = try container.decodeIfPresent("availableSeasonCount")
        averageUserRating = try container.decodeIfPresent("averageUserRating")
        badge = try container.decodeIfPresent("badge")
        classification = try container.decodeIfPresent("classification")
        contextualTitle = try container.decodeIfPresent("contextualTitle")
        customFields = try container.decodeAnyIfPresent("customFields")
        customId = try container.decodeIfPresent("customId")
        duration = try container.decodeIfPresent("duration")
        episodeCount = try container.decodeIfPresent("episodeCount")
        episodeNumber = try container.decodeIfPresent("episodeNumber")
        genres = try container.decodeArrayIfPresent("genres")
        hasClosedCaptions = try container.decodeIfPresent("hasClosedCaptions")
        images = try container.decodeIfPresent("images")
        offers = try container.decodeArrayIfPresent("offers")
        releaseYear = try container.decodeIfPresent("releaseYear")
        scopes = try container.decodeArrayIfPresent("scopes")
        seasonId = try container.decodeIfPresent("seasonId")
        seasonNumber = try container.decodeIfPresent("seasonNumber")
        shortDescription = try container.decodeIfPresent("shortDescription")
        showId = try container.decodeIfPresent("showId")
        tagline = try container.decodeIfPresent("tagline")
        watchPath = try container.decodeIfPresent("watchPath")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(type, forKey: "type")
        try container.encode(path, forKey: "path")
        try container.encode(title, forKey: "title")
        try container.encodeIfPresent(availableEpisodeCount, forKey: "availableEpisodeCount")
        try container.encodeIfPresent(availableSeasonCount, forKey: "availableSeasonCount")
        try container.encodeIfPresent(averageUserRating, forKey: "averageUserRating")
        try container.encodeIfPresent(badge, forKey: "badge")
        try container.encodeIfPresent(classification, forKey: "classification")
        try container.encodeIfPresent(contextualTitle, forKey: "contextualTitle")
        try container.encodeAnyIfPresent(customFields, forKey: "customFields")
        try container.encodeIfPresent(customId, forKey: "customId")
        try container.encodeIfPresent(duration, forKey: "duration")
        try container.encodeIfPresent(episodeCount, forKey: "episodeCount")
        try container.encodeIfPresent(episodeNumber, forKey: "episodeNumber")
        try container.encodeIfPresent(genres, forKey: "genres")
        try container.encodeIfPresent(hasClosedCaptions, forKey: "hasClosedCaptions")
        try container.encodeIfPresent(images, forKey: "images")
        try container.encodeIfPresent(offers, forKey: "offers")
        try container.encodeIfPresent(releaseYear, forKey: "releaseYear")
        try container.encodeIfPresent(scopes, forKey: "scopes")
        try container.encodeIfPresent(seasonId, forKey: "seasonId")
        try container.encodeIfPresent(seasonNumber, forKey: "seasonNumber")
        try container.encodeIfPresent(shortDescription, forKey: "shortDescription")
        try container.encodeIfPresent(showId, forKey: "showId")
        try container.encodeIfPresent(tagline, forKey: "tagline")
        try container.encodeIfPresent(watchPath, forKey: "watchPath")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ItemSummary else { return false }
      guard self.id == object.id else { return false }
      guard self.type == object.type else { return false }
      guard self.path == object.path else { return false }
      guard self.title == object.title else { return false }
      guard self.availableEpisodeCount == object.availableEpisodeCount else { return false }
      guard self.availableSeasonCount == object.availableSeasonCount else { return false }
      guard self.averageUserRating == object.averageUserRating else { return false }
      guard self.badge == object.badge else { return false }
      guard self.classification == object.classification else { return false }
      guard self.contextualTitle == object.contextualTitle else { return false }
      guard NSDictionary(dictionary: self.customFields ?? [:]).isEqual(to: object.customFields ?? [:]) else { return false }
      guard self.customId == object.customId else { return false }
      guard self.duration == object.duration else { return false }
      guard self.episodeCount == object.episodeCount else { return false }
      guard self.episodeNumber == object.episodeNumber else { return false }
      guard self.genres == object.genres else { return false }
      guard self.hasClosedCaptions == object.hasClosedCaptions else { return false }
      guard self.images == object.images else { return false }
      guard self.offers == object.offers else { return false }
      guard self.releaseYear == object.releaseYear else { return false }
      guard self.scopes == object.scopes else { return false }
      guard self.seasonId == object.seasonId else { return false }
      guard self.seasonNumber == object.seasonNumber else { return false }
      guard self.shortDescription == object.shortDescription else { return false }
      guard self.showId == object.showId else { return false }
      guard self.tagline == object.tagline else { return false }
      guard self.watchPath == object.watchPath else { return false }
      return true
    }

    public static func == (lhs: ItemSummary, rhs: ItemSummary) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
