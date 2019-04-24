//: [Previous](@previous)

import UIKit

protocol FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void)
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
