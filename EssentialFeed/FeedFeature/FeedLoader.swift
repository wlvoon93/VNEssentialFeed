//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Voon Wei Liang on 20/09/2023.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> { // we don't know if Error is equatable, that's why generic is used
    case success([FeedItem])
    case failure(Error)
}

extension LoadFeedResult: Equatable where Error: Equatable {}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
