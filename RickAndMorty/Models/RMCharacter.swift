//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Владимир Бурлинов on 16.03.2023.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
}

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknowns = "Unknown"
}
//
//struct Welcome: Codable {
//    let info: Info
//    let results: [Result]
//}
//
//// MARK: - Info
//struct Info: Codable {
//    let count, pages: Int
//    let next, prev: String
//}
//
//// MARK: - Result
//struct Result: Codable {
//    let id: Int
//    let name, status, species, type: String
//    let gender: String
//    let origin, location: Location
//    let image: String
//    let episode: [String]
//    let url: String
//    let created: String
//}
//
//// MARK: - Location
//struct Location: Codable {
//    let name: String
//    let url: String
//}
