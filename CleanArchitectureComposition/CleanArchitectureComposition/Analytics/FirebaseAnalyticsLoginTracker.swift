//
//  FirebaseAnalyticsLoginTracker.swift
//  CleanArchitectureComposition
//
//  Created by Christophe Bugnon on 25/04/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

final class FirebaseAnalyticsLoginTracker: LoginUseCaseOutput {
    func loginSuceeded() {
        // send login event to firebase
    }

    func loginFailed() {
        // send error to firebase
    }
}
