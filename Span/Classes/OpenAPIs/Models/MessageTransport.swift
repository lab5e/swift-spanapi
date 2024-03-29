//
// MessageTransport.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The message transport can be UDP or CoAP. */
public enum MessageTransport: String, Codable, CaseIterable {
    case unspecified = "unspecified"
    case udp = "udp"
    case coap = "coap"
    case mqtt = "mqtt"
    case gateway = "gateway"
    case coaps = "coaps"
    case dtls = "dtls"
}
