//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 17/06/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
