//
//  CounterReducer.swift
//  ReduxCounter
//
//  Created by Kourtnie Jenkins on 4/13/20.
//  Copyright © 2020 Kourtnie Jenkins. All rights reserved.
//

import Foundation
import ReSwift

func counterReducer(action: Action, state: AppState?) -> AppState {
    
    print("gets here")
    
    var state = state ?? AppState()
    
    switch action {
    case let increase as CounterActionIncrease:
        state.count += increase.amount
    case let decrease as CounterActionDecrease:
        state.count -= decrease.amount
    default:
        break
    }
    
    return state
    
}
