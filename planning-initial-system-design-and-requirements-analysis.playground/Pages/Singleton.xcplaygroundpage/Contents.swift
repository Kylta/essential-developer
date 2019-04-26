//: [Previous](@previous)

import UIKit

struct LoggedInUser {}

class ApiClient {
    static let instance = ApiClient()

    func login(completion: (LoggedInUser) -> Void) {}
}

class MockApiClient: ApiClient {}

class LoginViewController: UIViewController {
    var api = ApiClient.instance

    func didTapLoginButton() {
        api.login { user in
            // show next screen
        }
    }
}
