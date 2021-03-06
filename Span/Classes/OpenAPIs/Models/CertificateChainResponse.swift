//
// CertificateChainResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Response when retrieving a certificate chain */
public struct CertificateChainResponse: Codable, JSONEncodable, Hashable {

    public var chain: Data?

    public init(chain: Data? = nil) {
        self.chain = chain
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chain
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(chain, forKey: .chain)
    }
}

