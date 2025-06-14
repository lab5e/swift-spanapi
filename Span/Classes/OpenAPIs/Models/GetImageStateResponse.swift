//
// GetImageStateResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Response object when retrieving image state for a single device */
public struct GetImageStateResponse: Codable, JSONEncodable, Hashable {

    public var state: DeviceImageState?

    public init(state: DeviceImageState? = nil) {
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

