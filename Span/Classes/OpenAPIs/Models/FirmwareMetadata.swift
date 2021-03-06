//
// FirmwareMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Metadata about firmware on devices. */
public struct FirmwareMetadata: Codable, JSONEncodable, Hashable {

    public var currentFirmwareId: String?
    public var targetFirmwareId: String?
    /** Last reported firmware version. */
    public var firmwareVersion: String?
    public var serialNumber: String?
    public var modelNumber: String?
    public var manufacturer: String?
    public var state: String?
    public var stateMessage: String?

    public init(currentFirmwareId: String? = nil, targetFirmwareId: String? = nil, firmwareVersion: String? = nil, serialNumber: String? = nil, modelNumber: String? = nil, manufacturer: String? = nil, state: String? = nil, stateMessage: String? = nil) {
        self.currentFirmwareId = currentFirmwareId
        self.targetFirmwareId = targetFirmwareId
        self.firmwareVersion = firmwareVersion
        self.serialNumber = serialNumber
        self.modelNumber = modelNumber
        self.manufacturer = manufacturer
        self.state = state
        self.stateMessage = stateMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentFirmwareId
        case targetFirmwareId
        case firmwareVersion
        case serialNumber
        case modelNumber
        case manufacturer
        case state
        case stateMessage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currentFirmwareId, forKey: .currentFirmwareId)
        try container.encodeIfPresent(targetFirmwareId, forKey: .targetFirmwareId)
        try container.encodeIfPresent(firmwareVersion, forKey: .firmwareVersion)
        try container.encodeIfPresent(serialNumber, forKey: .serialNumber)
        try container.encodeIfPresent(modelNumber, forKey: .modelNumber)
        try container.encodeIfPresent(manufacturer, forKey: .manufacturer)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(stateMessage, forKey: .stateMessage)
    }
}

