//
// DeviceImageState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Image state for a single device */
public struct DeviceImageState: Codable, JSONEncodable, Hashable {

    public var state: [ImageState]?

    public init(state: [ImageState]? = nil) {
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

