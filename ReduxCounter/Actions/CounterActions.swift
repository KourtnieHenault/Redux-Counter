//
//  CounterActions.swift
//  ReduxCounter
//
//  Created by Kourtnie Jenkins on 4/13/20.
//  Copyright © 2020 Kourtnie Jenkins. All rights reserved.
//

import ReSwift

struct CounterActionIncrease: Action {
    let amount: Int
    
    init(by amount: Int) {
        self.amount = amount
    }
    
}

struct CounterActionDecrease: Action {
    let amount: Int
    
    init(by amount: Int) {
        self.amount = amount
    }
}
