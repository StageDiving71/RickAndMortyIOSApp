//
//  RMService.swift
//  RickAndMorty
//
//  Created by Владимир Бурлинов on 16.03.2023.
//

import Foundation

//cmnd+opt+/

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    ///  Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
                _ request: RMRequest,
                expecting type: T.Type,
                completion: @escaping (Result<T, Error>
                ) -> Void) {
        
    }
}
