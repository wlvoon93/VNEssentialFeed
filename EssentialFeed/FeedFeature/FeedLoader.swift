//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Voon Wei Liang on 20/09/2023.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
