//
//  SearchType.swift
//  kream
//
//  Created by 김미주 on 29/11/2024.
//

import Foundation
import Moya

enum SearchTargetType {
    case getSearchResult(keyword: String)
}

extension SearchTargetType: TargetType {
    var baseURL: URL {
        guard let baseURL = URL(string: "https://dummyjson.com") else {
            fatalError("Error: Invalid URL")
        }
        
        return baseURL
    }
    
    var path: String {
        switch self {
        case .getSearchResult:
            return "/products/search"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getSearchResult:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case let .getSearchResult(keyword):
            return .requestParameters(parameters: ["q": keyword], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type" : "application/json"]
    }
    
    
}
