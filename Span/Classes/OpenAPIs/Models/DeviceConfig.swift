//
// DeviceConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** This is the configuration for the device via the various gateways. */
public struct DeviceConfig: Codable, JSONEncodable, Hashable {

    public var ciot: CellularIoTConfig?

    public init(ciot: CellularIoTConfig? = nil) {
        self.ciot = ciot
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ciot
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ciot, forKey: .ciot)
    }
}

