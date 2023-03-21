//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Владимир Бурлинов on 16.03.2023.
//

import Foundation

/// Represents unique API endpoint
enum RMEndpoint: String {
    /// Endpoint to ger character info
    case character
    /// Endpoint to ger location info
    case location
    /// Endpoint to ger episode info
    case episode
}
