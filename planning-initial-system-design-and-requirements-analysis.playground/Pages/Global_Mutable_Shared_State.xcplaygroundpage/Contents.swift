//: [Previous](@previous)

import UIKit

struct LoggedInUser {}

// Global Mutable Share State
class ApiClient {
    static var instance = ApiClient()

    func login(completion: (LoggedInUser) -> Void) {}
}

class MockApiClient: ApiClient {}

ApiClient.instance = MockApiClient()

class LoginViewController: UIViewController {

    func didTapLoginButton() {
        ApiClient.instance.login { user in
            // show next screen
        }
    }
}

