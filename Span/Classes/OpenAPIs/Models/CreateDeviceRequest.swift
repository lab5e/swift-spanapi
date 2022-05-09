//
// CreateDeviceRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request object to create new devices */
public struct CreateDeviceRequest: Codable, JSONEncodable, Hashable {

    /** Tags are metadata for the device that you can set. These are just strings. */
    public var tags: [String: String]?
    public var firmware: FirmwareMetadata?
    public var config: DeviceConfig?
    public var metadata: DeviceMetadata?
    /** The IMSI is the unique ID for the (e|nu|whatever)SIM card on your device. This is the primary identifier for your device on the network.  Deprecated: The IMSI is replaced by CellularIoTMetadata */
    public var imsi: String?
    /** The IMEI number is the unique ID for your hardware as seen by the network. Obviously you might have a completely different view on things.  Deprecated: The IMEI is replaced by CellularIoTMetadata */
    public var imei: String?
    public var network: NetworkMetadata?

    public init(tags: [String: String]? = nil, firmware: FirmwareMetadata? = nil, config: DeviceConfig? = nil, metadata: DeviceMetadata? = nil, imsi: String? = nil, imei: String? = nil, network: NetworkMetadata? = nil) {
        self.tags = tags
        self.firmware = firmware
        self.config = config
        self.metadata = metadata
        self.imsi = imsi
        self.imei = imei
        self.network = network
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case firmware
        case config
        case metadata
        case imsi
        case imei
        case network
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(firmware, forKey: .firmware)
        try container.encodeIfPresent(config, forKey: .config)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(imsi, forKey: .imsi)
        try container.encodeIfPresent(imei, forKey: .imei)
        try container.encodeIfPresent(network, forKey: .network)
    }
}

