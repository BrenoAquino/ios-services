//
//  DiscoverNetwork.swift
//  
//
//  Created by Breno Aquino on 11/07/20.
//

import Foundation

class DiscoverNetwork {
    
    private var network: Network<DiscoverAPIs> = Network<DiscoverAPIs>()
    private var config: MovieDBConfig = MovieDBConfig(version: .v3)
    
    init() {}
    
    func movies(genre: Int, callback: @escaping (Result<[Movie], NSError>) -> Void) {
        network.request(DiscoverAPIs.discoverMovie(config: config, genre: genre)) { result in
            switch result {
            case .success(let response):
                do {
                    let movies = try response.map([Movie].self, atKeyPath: "results", using: JSONDecoder(), failsOnEmptyData: false)
                    callback(.success(movies))
                } catch let error {
                    callback(.failure(error as NSError))
                }
                
            case .failure(let error):
                callback(.failure(error as NSError))
            }
        }
    }
}