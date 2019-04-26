//: [Previous](@previous)

import UIKit

struct LoggedInUser {}

final class ApiClient {
    static let instance = ApiClient()

    func login(completion: (LoggedInUser) -> Void) {}
}

class LoginViewController: UIViewController {

    func didTapLoginButton() {
        ApiClient.instance.login { user in
            // show next screen
        }
    }
}
