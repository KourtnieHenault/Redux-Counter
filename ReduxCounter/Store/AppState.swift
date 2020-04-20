//
//  AppState.swift
//  ReduxCounter
//
//  Created by Kourtnie Jenkins on 4/13/20.
//  Copyright © 2020 Kourtnie Jenkins. All rights reserved.
//

import Foundation
import ReSwift

struct AppState: StateType {
    var count: Int = 0
}

let store = Store<AppState>(
    reducer: counterReducer,
    state: AppState()
)
