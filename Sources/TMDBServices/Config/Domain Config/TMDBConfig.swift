//
//  File.swift
//  
//
//  Created by Breno Aquino on 11/07/20.
//

import Foundation

public class MovieDBConfig: NSObject, Config {
    var apiKey: String = "9fb1244aab053cf93fa00223bef8e80f"
    var baseURL: String { return "https://api.themoviedb.org/3" }
    var headers: [String: String]? { return nil }
    
    public static var baseImageURL: String = "https://image.tmdb.org/t/p/"
}
