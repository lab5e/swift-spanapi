//
// InetMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Metadata for devices connected via the internet gateway. This metadata shows the configuration for the last message transmission. */
public struct InetMetadata: Codable, JSONEncodable, Hashable {

    public var gatewayId: String?
    public var lastUpdate: String?
    public var remoteAddress: String?
    public var certificateSerial: String?

    public init(gatewayId: String? = nil, lastUpdate: String? = nil, remoteAddress: String? = nil, certificateSerial: String? = nil) {
        self.gatewayId = gatewayId
        self.lastUpdate = lastUpdate
        self.remoteAddress = remoteAddress
        self.certificateSerial = certificateSerial
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gatewayId
        case lastUpdate
        case remoteAddress
        case certificateSerial
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gatewayId, forKey: .gatewayId)
        try container.encodeIfPresent(lastUpdate, forKey: .lastUpdate)
        try container.encodeIfPresent(remoteAddress, forKey: .remoteAddress)
        try container.encodeIfPresent(certificateSerial, forKey: .certificateSerial)
    }
}
