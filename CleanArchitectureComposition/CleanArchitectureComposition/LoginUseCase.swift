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
    let outputs: [LoginUseCaseOutput]

    init(outputs: [LoginUseCaseOutput]) {
        self.outputs = outputs
    }

    func login(name: String, password: String) {
        // if succeed
        outputs.forEach { $0.loginSuceeded() }
        // else if failed
        outputs.forEach { $0.loginFailed() }
    }
}
