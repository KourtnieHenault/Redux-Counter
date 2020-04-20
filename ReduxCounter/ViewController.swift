//
//  ViewController.swift
//  ReduxCounter
//
//  Created by Kourtnie Jenkins on 4/13/20.
//  Copyright © 2020 Kourtnie Jenkins. All rights reserved.
//

import UIKit
import  ReSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.subscribe(self)
    }
    
    @IBAction func decrementButtonTapped(_ sender: UIButton) {
        store.dispatch(CounterActionDecrease(by: 1))
    }
    
    @IBAction func incrementButtonTapped(_ sender: UIButton) {
        store.dispatch(CounterActionIncrease(by: 1))
    }
    
}

//MARK: - Extends ReSwift StoreSubscriber
extension ViewController: StoreSubscriber {
    
    typealias StoreSubscriberStateType = AppState
    
    func newState(state: AppState) {
        countLabel.text = "\(store.state.count)"
    }
    
}

