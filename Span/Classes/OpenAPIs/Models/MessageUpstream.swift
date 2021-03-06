//
// MessageUpstream.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** This is the messages sent from the device to the backend service */
public struct MessageUpstream: Codable, JSONEncodable, Hashable {

    public var messageId: String?
    public var collectionId: String?
    public var deviceId: String?
    public var gatewayId: String?
    public var transport: MessageTransport?
    public var received: String?
    public var payload: Data?

    public init(messageId: String? = nil, collectionId: String? = nil, deviceId: String? = nil, gatewayId: String? = nil, transport: MessageTransport? = nil, received: String? = nil, payload: Data? = nil) {
        self.messageId = messageId
        self.collectionId = collectionId
        self.deviceId = deviceId
        self.gatewayId = gatewayId
        self.transport = transport
        self.received = received
        self.payload = payload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case collectionId
        case deviceId
        case gatewayId
        case transport
        case received
        case payload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(collectionId, forKey: .collectionId)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(gatewayId, forKey: .gatewayId)
        try container.encodeIfPresent(transport, forKey: .transport)
        try container.encodeIfPresent(received, forKey: .received)
        try container.encodeIfPresent(payload, forKey: .payload)
    }
}

