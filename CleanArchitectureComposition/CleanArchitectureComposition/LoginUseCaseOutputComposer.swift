//
//  LoginUseCaseOutputComposer.swift
//  CleanArchitectureComposition
//
//  Created by Christophe Bugnon on 25/04/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

class LoginUseCaseOutputComposer: LoginUseCaseOutput {
    let outputs: [LoginUseCaseOutput]

    init(_ outputs: [LoginUseCaseOutput]) {
        self.outputs = outputs
    }

    func loginSuceeded() {
        outputs.forEach { $0.loginSuceeded() }
    }

    func loginFailed() {
        outputs.forEach { $0.loginFailed() }
    }
}
