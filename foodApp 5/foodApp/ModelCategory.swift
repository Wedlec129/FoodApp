// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct modelCategory: Codable {
    let сategories: [Сategory]
   
    
}

// MARK: - Сategory
struct Сategory: Codable {
    let id: Int
    let name : String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "image_url"
    }
    
    
}

