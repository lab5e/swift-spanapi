//
// DeviceMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DeviceMetadata: Codable {

    public var simOperator: NetworkOperator?

    public init(simOperator: NetworkOperator? = nil) {
        self.simOperator = simOperator
    }

}
