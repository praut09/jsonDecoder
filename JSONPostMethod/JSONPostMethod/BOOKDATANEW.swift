//
//  BOOKDATANEW.swift
//  JSONPostMethod
//
//  Created by sachin shinde on 03/01/20.
//  Copyright © 2020 sachin shinde. All rights reserved.
//

import Foundation
struct Bookdata: Codable {
    let isbn9780980200447: Isbn9780980200447

    enum CodingKeys: String, CodingKey {
        case isbn9780980200447 = "ISBN:9780980200447"
    }
}

// MARK: - Isbn9780980200447
struct Isbn9780980200447: Codable {
    let infoURL: String
    let bibKey: String
    let previewURL: String
    let thumbnailURL: String
    let details: Details
    let preview: String

    enum CodingKeys: String, CodingKey {
        case infoURL = "info_url"
        case bibKey = "bib_key"
        case previewURL = "preview_url"
        case thumbnailURL = "thumbnail_url"
        case details, preview
    }
}

// MARK: - Details
struct Details: Codable {
    let numberOfPages: Int
    let tableOfContents: [TableOfContent]
    let contributors: [Contributor]
    let isbn10: [String]
    let covers: [Int]
    let lcClassifications: [String]
    let latestRevision: Int
    let ocaid, weight: String
    let sourceRecords: [String]
    let title: String
    let languages: [TypeElement]
    let subjects: [String]
    let publishCountry, byStatement: String
    let oclcNumbers: [String]
    let type: TypeElement
    let physicalDimensions: String
    let revision: Int
    let publishers: [String]
    let detailsDescription, physicalFormat: String
    let lastModified: Created
    let key: String
    let authors: [Author]
    let publishPlaces: [String]
    let pagination: String
    let classifications: Classifications
    let created: Created
    let lccn: [String]
    let notes: String
    let identifiers: Identifiers
    let isbn13, deweyDecimalClass, localID: [String]
    let publishDate: String
    let works: [TypeElement]

    enum CodingKeys: String, CodingKey {
        case numberOfPages = "number_of_pages"
        case tableOfContents = "table_of_contents"
        case contributors
        case isbn10 = "isbn_10"
        case covers
        case lcClassifications = "lc_classifications"
        case latestRevision = "latest_revision"
        case ocaid, weight
        case sourceRecords = "source_records"
        case title, languages, subjects
        case publishCountry = "publish_country"
        case byStatement = "by_statement"
        case oclcNumbers = "oclc_numbers"
        case type
        case physicalDimensions = "physical_dimensions"
        case revision, publishers
        case detailsDescription = "description"
        case physicalFormat = "physical_format"
        case lastModified = "last_modified"
        case key, authors
        case publishPlaces = "publish_places"
        case pagination, classifications, created, lccn, notes, identifiers
        case isbn13 = "isbn_13"
        case deweyDecimalClass = "dewey_decimal_class"
        case localID = "local_id"
        case publishDate = "publish_date"
        case works
    }
}

// MARK: - Author
struct Author: Codable {
    let name, key: String
}

// MARK: - Classifications
struct Classifications: Codable {
}

// MARK: - Contributor
struct Contributor: Codable {
    let role, name: String
}

// MARK: - Created
struct Created: Codable {
    let type, value: String
}

// MARK: - Identifiers
struct Identifiers: Codable {
    let amazon, google, goodreads, librarything: [String]
}

// MARK: - TypeElement
struct TypeElement: Codable {
    let key: String
}

// MARK: - TableOfContent
struct TableOfContent: Codable {
    let level: Int
    let label, pagenum, title: String
}
