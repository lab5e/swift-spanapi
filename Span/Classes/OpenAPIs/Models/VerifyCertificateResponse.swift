//
// VerifyCertificateResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Response when verifying a certificate. The valid flag is set to true when the certificate is valid.  Any errors will be added to the errors array. */
public struct VerifyCertificateResponse: Codable, JSONEncodable, Hashable {

    public var valid: Bool?
    public var errors: [String]?

    public init(valid: Bool? = nil, errors: [String]? = nil) {
        self.valid = valid
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case valid
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(valid, forKey: .valid)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}

