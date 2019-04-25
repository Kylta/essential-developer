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

final class LoginUseCase {
    let crashlyticsTracker: LoginUseCaseOutput
    let firebaseAnalyticsTracker: LoginUseCaseOutput
    let loginPresenter: LoginUseCaseOutput

    init(crashlyticsTracker: LoginUseCaseOutput,
         firebaseAnalyticsTracker: LoginUseCaseOutput,
         loginPresenter: LoginUseCaseOutput) {
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
