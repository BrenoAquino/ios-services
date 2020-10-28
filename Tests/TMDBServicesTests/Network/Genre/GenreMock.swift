//
//  GenreMock.swift
//  
//
//  Created by Breno Aquino on 28/10/20.
//

import Foundation
import Moya
import TMDBServices

enum GenreMock {
    static let genresSuccess = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("genres-success")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let genresGenericError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("genres-failure")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(400, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let genresMapError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("genres-map-error")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let genresEmpty = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("genres-empty")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
}
