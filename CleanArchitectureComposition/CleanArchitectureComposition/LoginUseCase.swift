//
//  LoginUseCase.swift
//  CleanArchitectureComposition
//
//  Created by Christophe Bugnon on 25/04/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

protocol LoginUseCaseOutput {
    func loginSuceeded()
    func loginFailed()
}

class LoginUseCase {
    let crashlyticsTracker: CrashlyticsLoginTracker
    let firebaseAnalyticsTracker: FirebaseAnalyticsLoginTracker
    let loginPresenter: LoginPresenter

    init(crashlyticsTracker: CrashlyticsLoginTracker,
         firebaseAnalyticsTracker: FirebaseAnalyticsLoginTracker,
         loginPresenter: LoginPresenter) {
        self.crashlyticsTracker = crashlyticsTracker
        self.firebaseAnalyticsTracker = firebaseAnalyticsTracker
        self.loginPresenter = loginPresenter
    }

    func login(name: String, password: String) {
        crashlyticsTracker.loginSuceeded()
        firebaseAnalyticsTracker.loginSuceeded()
        loginPresenter.loginSuceeded()
    }
}
