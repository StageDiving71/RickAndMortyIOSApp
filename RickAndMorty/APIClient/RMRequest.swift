//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Владимир Бурлинов on 16.03.2023.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
 
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endPoint: RMEndpoint
     
    private let pathComponents: Set<String>
    
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }

        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    //MARK: - public
    public init(endPoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []
    ) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
