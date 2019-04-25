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
    let output: LoginUseCaseOutput

    init(output: LoginUseCaseOutput) {
        self.output = output
    }

    func login(name: String, password: String) {
        // if succeed
        output.loginSuceeded()
        // else if failed
        output.loginFailed()
    }
}
