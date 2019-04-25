//
//  CrashlyticsLoginTracker.swift
//  CleanArchitectureComposition
//
//  Created by Christophe Bugnon on 25/04/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

final class CrashlyticsLoginTracker: LoginUseCaseOutput {
    func loginSuceeded() {
        // send login event to crashlytics
    }

    func loginFailed() {
        // send error to crashlytics
    }
}
