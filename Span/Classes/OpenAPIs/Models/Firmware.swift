//
// Firmware.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Firmware images aren&#39;t served back out through the API, only the metadata. */
public struct Firmware: Codable {

    public var imageId: String?
    /** Make sure that the firmware image reports this version. If the version reported by this image is different the FOTA process won&#39;t be reported as successful since the device will report a version different from this. */
    public var version: String?
    /** This is just for internal house keeping, making it potentially easier to identify the firmware image. */
    public var filename: String?
    /** To ensure each image is unique the SHA-256 hash for all images in a collection must be unqique */
    public var sha256: String?
    public var length: Int?
    /** Collection ID for the collection owning the firmware image. */
    public var collectionId: String?
    public var created: String?
    /** Tags for firmware image. */
    public var tags: [String: String]?

    public init(imageId: String? = nil, version: String? = nil, filename: String? = nil, sha256: String? = nil, length: Int? = nil, collectionId: String? = nil, created: String? = nil, tags: [String: String]? = nil) {
        self.imageId = imageId
        self.version = version
        self.filename = filename
        self.sha256 = sha256
        self.length = length
        self.collectionId = collectionId
        self.created = created
        self.tags = tags
    }

}