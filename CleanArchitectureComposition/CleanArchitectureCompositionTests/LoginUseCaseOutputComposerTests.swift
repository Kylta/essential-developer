//
//  LoginUseCaseOutputComposerTests.swift
//  CleanArchitectureCompositionTests
//
//  Created by Christophe Bugnon on 25/04/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import XCTest
@testable import CleanArchitectureComposition

class LoginUseCaseOutputComposer: LoginUseCaseOutput {
    func loginSuceeded() {}

    func loginFailed() {}
}

class LoginUseCaseOutputComposerTests: XCTestCase {

    func test_composingZeroOutputs_doesNotCrash() {
        let sut = LoginUseCaseOutputComposer()
        sut.loginSuceeded()
        sut.loginFailed()
    }
}
