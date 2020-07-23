//
//  MovieInterface.swift
//  
//
//  Created by Breno Aquino on 11/07/20.
//

import Foundation

class MovieInterface {
    
    private var network: Network<MovieAPIs> = Network<MovieAPIs>()
    private var config: MovieDBConfig = MovieDBConfig()
    
    init() {}
    
    func upcoming(callback: @escaping (Result<[Movie], NSError>) -> Void) {
        network.request(MovieAPIs.upcoming(config: config)) { result in
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
    
    func detail(id: Int, callback: @escaping (Result<Movie, NSError>) -> Void) {
        network.request(MovieAPIs.detail(id: id, config: config)) { result in
            switch result {
            case .success(let response):
                do {
                    let movies = try response.map(Movie.self, using: JSONDecoder(), failsOnEmptyData: false)
                    callback(.success(movies))
                } catch let error {
                    callback(.failure(error as NSError))
                }
                
            case .failure(let error):
                callback(.failure(error as NSError))
            }
        }
    }
    
    func keywords(id: Int, callback: @escaping (Result<[Keyword], NSError>) -> Void) {
        network.request(MovieAPIs.keywords(id: id, config: config)) { result in
            switch result {
            case .success(let response):
                do {
                    let movies = try response.map([Keyword].self, atKeyPath: "keywords", using: JSONDecoder(), failsOnEmptyData: false)
                    callback(.success(movies))
                } catch let error {
                    callback(.failure(error as NSError))
                }
                
            case .failure(let error):
                callback(.failure(error as NSError))
            }
        }
    }
    
    func recommendations(id: Int, callback: @escaping (Result<[Movie], NSError>) -> Void) {
        network.request(MovieAPIs.recommendations(id: id, config: config)) { result in
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
