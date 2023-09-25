//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Voon Wei Liang on 25/09/2023.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
