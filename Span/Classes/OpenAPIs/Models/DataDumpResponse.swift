//
// DataDumpResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DataDumpResponse: Codable {

    public var collections: [DumpedCollection]?

    public init(collections: [DumpedCollection]? = nil) {
        self.collections = collections
    }

}
