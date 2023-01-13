//
// OutputDataMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The output data message contains payload plus metadata for a payload received from a device. */
public struct OutputDataMessage: Codable, JSONEncodable, Hashable {

    public var type: OutputMessageType?
    public var device: Device?
    public var payload: Data?
    /** Received time for message. Value is ms since epoch. */
    public var received: String?
    public var transport: String?
    public var udpMetaData: UDPMetadata?
    public var coapMetaData: CoAPMetadata?
    public var messageId: String?
    public var mqttMetaData: MQTTMetadata?

    public init(type: OutputMessageType? = nil, device: Device? = nil, payload: Data? = nil, received: String? = nil, transport: String? = nil, udpMetaData: UDPMetadata? = nil, coapMetaData: CoAPMetadata? = nil, messageId: String? = nil, mqttMetaData: MQTTMetadata? = nil) {
        self.type = type
        self.device = device
        self.payload = payload
        self.received = received
        self.transport = transport
        self.udpMetaData = udpMetaData
        self.coapMetaData = coapMetaData
        self.messageId = messageId
        self.mqttMetaData = mqttMetaData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case device
        case payload
        case received
        case transport
        case udpMetaData
        case coapMetaData
        case messageId
        case mqttMetaData
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(device, forKey: .device)
        try container.encodeIfPresent(payload, forKey: .payload)
        try container.encodeIfPresent(received, forKey: .received)
        try container.encodeIfPresent(transport, forKey: .transport)
        try container.encodeIfPresent(udpMetaData, forKey: .udpMetaData)
        try container.encodeIfPresent(coapMetaData, forKey: .coapMetaData)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(mqttMetaData, forKey: .mqttMetaData)
    }
}

