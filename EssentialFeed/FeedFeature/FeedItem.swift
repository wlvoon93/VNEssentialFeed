//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Voon Wei Liang on 20/09/2023.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
