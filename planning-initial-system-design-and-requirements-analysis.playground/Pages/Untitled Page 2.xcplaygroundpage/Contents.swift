//: [Previous](@previous)

import UIKit

protocol FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void)
}

struct Reachability {
    static let networkAvailable = false
}

class FeedViewController: UIViewController {
    var remote: RemoteFeedLoader!
    var local: LocalFeedLoader!

    convenience init(remote: RemoteFeedLoader, local: LocalFeedLoader) {
        self.init()
        self.remote = remote
        self.local = local
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if Reachability.networkAvailable {
            remote.loadFeed { loadedItems in
                // do something
            }
        } else {
            local.loadFeed { loadedItems in
                // do something
            }
        }
    }
}

class RemoteFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // do something
    }
}

class LocalFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // do something
    }
}

UIImage(named: "concret-type")
