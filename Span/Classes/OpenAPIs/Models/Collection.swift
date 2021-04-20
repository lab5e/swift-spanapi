//
// Collection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Collection: Codable {

    /** The ID of the collection. This is assigned by the backend. */
    public var collectionId: String?
    /** The team ID that owns the collection. This field is required. When you create new collections the default is to use your private team ID. */
    public var teamId: String?
    public var fieldMask: FieldMask?
    public var firmware: CollectionFirmware?
    /** Tags for the collection. Tags are metadata fields that you can assign to the collection. */
    public var tags: [String: String]?

    public init(collectionId: String? = nil, teamId: String? = nil, fieldMask: FieldMask? = nil, firmware: CollectionFirmware? = nil, tags: [String: String]? = nil) {
        self.collectionId = collectionId
        self.teamId = teamId
        self.fieldMask = fieldMask
        self.firmware = firmware
        self.tags = tags
    }

}