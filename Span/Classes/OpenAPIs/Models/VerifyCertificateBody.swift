//
// VerifyCertificateBody.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Verify a certificate */
public struct VerifyCertificateBody: Codable, JSONEncodable, Hashable {

    public var gatewayId: String?
    public var deviceId: String?
    public var certificate: Data?

    public init(gatewayId: String? = nil, deviceId: String? = nil, certificate: Data? = nil) {
        self.gatewayId = gatewayId
        self.deviceId = deviceId
        self.certificate = certificate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gatewayId
        case deviceId
        case certificate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gatewayId, forKey: .gatewayId)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(certificate, forKey: .certificate)
    }
}

