//
// GatewayStats.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** This is statistics for a single gateway */
public struct GatewayStats: Codable, JSONEncodable, Hashable {

    public var messagesUpstream: String?
    public var messagesDownstream: String?
    public var bytesUpstream: String?
    public var bytesDownstream: String?

    public init(messagesUpstream: String? = nil, messagesDownstream: String? = nil, bytesUpstream: String? = nil, bytesDownstream: String? = nil) {
        self.messagesUpstream = messagesUpstream
        self.messagesDownstream = messagesDownstream
        self.bytesUpstream = bytesUpstream
        self.bytesDownstream = bytesDownstream
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messagesUpstream
        case messagesDownstream
        case bytesUpstream
        case bytesDownstream
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(messagesUpstream, forKey: .messagesUpstream)
        try container.encodeIfPresent(messagesDownstream, forKey: .messagesDownstream)
        try container.encodeIfPresent(bytesUpstream, forKey: .bytesUpstream)
        try container.encodeIfPresent(bytesDownstream, forKey: .bytesDownstream)
    }
}

