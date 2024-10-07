//
// UpdateDeviceBody.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Updating the device */
public struct UpdateDeviceBody: Codable, JSONEncodable, Hashable {

    /** The collection id for the device. This field is optional and can be omitted if the collection id isn't changed. When changing to a new collection you must be an owner of the other collection, ie an administrator of the team that owns the new collection. */
    public var collectionId: String?
    /** Tags are metadata for the device that you can set. These are just strings. */
    public var tags: [String: String]?
    public var firmware: FirmwareMetadata?
    public var config: DeviceConfig?
    public var enabled: Bool?

    public init(collectionId: String? = nil, tags: [String: String]? = nil, firmware: FirmwareMetadata? = nil, config: DeviceConfig? = nil, enabled: Bool? = nil) {
        self.collectionId = collectionId
        self.tags = tags
        self.firmware = firmware
        self.config = config
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case collectionId
        case tags
        case firmware
        case config
        case enabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(collectionId, forKey: .collectionId)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(firmware, forKey: .firmware)
        try container.encodeIfPresent(config, forKey: .config)
        try container.encodeIfPresent(enabled, forKey: .enabled)
    }
}
