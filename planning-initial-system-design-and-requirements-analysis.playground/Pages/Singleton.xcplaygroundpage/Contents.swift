//: [Previous](@previous)

import UIKit

struct LoggedInUser {}
struct FeedItem {}

// Singleton
class ApiClient {
    static let shared = ApiClient()

    func login(completion: (LoggedInUser) -> Void) {}
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

class MockApiClient: ApiClient {}

class LoginViewController: UIViewController {
    var api = ApiClient.shared

    func didTapLoginButton() {
        api.login { user in
            // show next screen
        }
    }
}

class FeedViewController: UIViewController {
    var api = ApiClient.shared

    override func viewDidLoad() {
        super.viewDidLoad()

        api.loadFeed { loadedItems in
            // update UI
        }
    }
}
