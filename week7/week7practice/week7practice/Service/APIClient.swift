//
//  APIClient.swift
//  week7practice
//
//  Created by 김미주 on 19/11/2024.
//

import Foundation
import Alamofire

final class APIClient {
    static let shared = APIClient()
    
    private let session: Session
    
    private let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String
    private init() {
        let interceptor = AuthorizationInterceptor(kakaoKey: apiKey!)
        session = Session(interceptor: interceptor)
    }
    
    public func request<T: Codable>(
        _ url: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        completion: @escaping (Result<T, Error>) -> Void) {
            session.request(url, method: method, parameters: parameters)
                .validate()
                .responseDecodable(of: T.self) { response in
                    switch response.result {
                    case .success(let value):
                        completion(.success(value))
                    case .failure(let error):
                        completion(.failure(error))
                    }}
        }

}
