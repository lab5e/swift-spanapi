//
// ListLabeledFirmwareResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Response object for listing firmware images */
public struct ListLabeledFirmwareResponse: Codable, JSONEncodable, Hashable {

    public var images: [LabeledFirmware]?

    public init(images: [LabeledFirmware]? = nil) {
        self.images = images
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case images
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(images, forKey: .images)
    }
}

