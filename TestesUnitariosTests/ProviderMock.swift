//
//  ProviderMock.swift
//  TestesUnitariosTests
//
//  Created by PJSMK on 13/02/22.
//

@testable import TestesUnitarios

class ProviderMock: ProviderProtocol {
    enum Status {
        case success
        case noData
        case invalidResponse
    }
    
    let status: Status
    
    init(status: Status) {
        self.status = status
    }
    
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ()) {
        switch status {
        case .invalidResponse:
            completion(nil, .invalidResponse)
        case .noData:
            completion(nil, .noData)
        case .success:
            completion(["animal", "career", "celebrity", "dev", "explicit", "fashion", "food", "history", "money", "movie", "music", "political", "religion", "science", "sport", "travel"], nil)
        }
    }
}
