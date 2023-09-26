//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Voon Wei Liang on 20/09/2023.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
