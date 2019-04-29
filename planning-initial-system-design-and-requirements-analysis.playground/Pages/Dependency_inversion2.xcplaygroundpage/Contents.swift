//: [Previous](@previous)

import UIKit

// Main Module

extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

// API Module
class ApiClient {
    static let shared = ApiClient()

    func execute(_: URLRequest, completion: (Data) -> Void) {}
}

// Login Module
struct LoggedInUser {}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?

    func didTapLoginButton() {
        login? { user in
            // show next screen
        }
    }
}

// Feed Module
struct FeedItem {}

class FeedViewController: UIViewController {
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        loadFeed? { loadedItems in
            // update UI
        }
    }
}

UIImage(named: "dependency_inversion")
