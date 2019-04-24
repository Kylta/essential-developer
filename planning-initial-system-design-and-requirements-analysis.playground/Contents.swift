import UIKit

class FeedViewController: UIViewController {
    var loadFeed: ((([String]) -> Void) -> Void)!

    convenience init(loadFeed: @escaping (([String]) -> Void) -> Void) {
        self.init()
        self.loadFeed = loadFeed
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        loadFeed { loadedItems in
            // Update UI
        }
    }
}
