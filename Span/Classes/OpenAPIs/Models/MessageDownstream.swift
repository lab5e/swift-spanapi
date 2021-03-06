//
// MessageDownstream.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Downstream messages are sent from the backend to the devices. */
public struct MessageDownstream: Codable, JSONEncodable, Hashable {

    public var messageId: String?
    public var collectionId: String?
    public var deviceId: String?
    public var gatewayId: String?
    public var createdTime: String?
    public var sentTime: String?
    public var transport: MessageTransport?
    public var state: MessageState?
    public var payload: Data?

    public init(messageId: String? = nil, collectionId: String? = nil, deviceId: String? = nil, gatewayId: String? = nil, createdTime: String? = nil, sentTime: String? = nil, transport: MessageTransport? = nil, state: MessageState? = nil, payload: Data? = nil) {
        self.messageId = messageId
        self.collectionId = collectionId
        self.deviceId = deviceId
        self.gatewayId = gatewayId
        self.createdTime = createdTime
        self.sentTime = sentTime
        self.transport = transport
        self.state = state
        self.payload = payload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
        case collectionId
        case deviceId
        case gatewayId
        case createdTime
        case sentTime
        case transport
        case state
        case payload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(collectionId, forKey: .collectionId)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(gatewayId, forKey: .gatewayId)
        try container.encodeIfPresent(createdTime, forKey: .createdTime)
        try container.encodeIfPresent(sentTime, forKey: .sentTime)
        try container.encodeIfPresent(transport, forKey: .transport)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(payload, forKey: .payload)
    }
}

