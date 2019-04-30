//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 30/04/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
