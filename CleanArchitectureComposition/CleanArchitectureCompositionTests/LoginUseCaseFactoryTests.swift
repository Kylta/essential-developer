//
//  LoginUseCaseFactoryTests.swift
//  CleanArchitectureCompositionTests
//
//  Created by Christophe Bugnon on 25/04/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import XCTest
@testable import CleanArchitectureComposition

final class LoginUseCaseFactory {
    func makeUseCase() -> LoginUseCase {
        return LoginUseCase(output: LoginUseCaseOutputComposer([
            LoginPresenter(),
            LoginUseCaseOutputComposer([]),
            LoginUseCaseOutputComposer([])
        ]))
    }
}

class LoginUseCaseFactoryTests: XCTestCase {

    func test() {
        let sut = LoginUseCaseFactory()
        let useCase = sut.makeUseCase()
        let composer = useCase.output as? LoginUseCaseOutputComposer

        XCTAssertNotNil(composer)
        XCTAssertEqual(composer?.outputs.count, 3)
        XCTAssertEqual(composer?.outputs.filter { $0 is LoginPresenter }.count, 1)
    }
}
