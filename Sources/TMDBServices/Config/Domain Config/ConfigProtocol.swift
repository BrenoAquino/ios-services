//
//  File.swift
//  
//
//  Created by Breno Aquino on 11/07/20.
//

import Foundation

protocol Config {
    var apiKey: String { get }
    var baseURL: String { get }
    var headers: [String: String]? { get }
    
    func path(_ string: String) -> String
}

extension Config {
    func path(_ string: String) -> String {
        return string
    }
}
