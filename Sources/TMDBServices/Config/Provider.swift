//
//  Provider.swift
//  
//
//  Created by Breno Aquino on 11/07/20.
//

import Foundation
import Moya

enum Session {
    public static var isMock: Bool {
        #if DEBUG
        return ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] != nil
        #else
        return false
        #endif
    }
}

class Network<TT: TargetType>: MoyaProvider<TT> {
    
    public init(plugins: [PluginType] = [], endpointClosure: @escaping (TT) -> Endpoint = MoyaProvider.defaultEndpointMapping) {
        var customPlugins: [PluginType] = plugins
        customPlugins.append(CachePlugin())
        
        if Session.isMock {
            super.init(stubClosure: MoyaProvider<TT>.immediatelyStub, plugins: customPlugins)
        } else {
            super.init(plugins: customPlugins)
        }
    }
}
