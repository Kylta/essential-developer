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

class LoginUseCaseOutputComposerTests: XCTestCase {

    func test_composingZeroOutputs_doesNotCrash() {
        let sut = LoginUseCaseOutputComposer([])
        sut.loginSuceeded()
        sut.loginFailed()
    }

    func test_composingOneOutput_delegateSucceedMessage() {
        let output1 = LoginUseCaseOutputSpy()
        let sut = LoginUseCaseOutputComposer([output1])

        sut.loginSuceeded()

        XCTAssertEqual(output1.loginSucceededCallCount, 1)
        XCTAssertEqual(output1.loginFailedCallCount, 0)
    }

    func test_composingOneOutput_delegateFailedMessage() {
        let output1 = LoginUseCaseOutputSpy()
        let sut = LoginUseCaseOutputComposer([output1])

        sut.loginFailed()

        XCTAssertEqual(output1.loginSucceededCallCount, 0)
        XCTAssertEqual(output1.loginFailedCallCount, 1)
    }

    // MARK: Helpers

    private class LoginUseCaseOutputSpy: LoginUseCaseOutput {
        var loginSucceededCallCount = 0
        var loginFailedCallCount = 0

        func loginSuceeded() {
            loginSucceededCallCount += 1
        }

        func loginFailed() {
            loginFailedCallCount += 1
        }
    }
}
