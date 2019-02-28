//
//  Counter.swift
//  Counter
//
//  Created by Alumne on 18/02/2019.
//  Copyright © 2019 La Salle Gracia CFGS. All rights reserved.
//

import Foundation

class Counter{
    var value: Int = 0
    
    func increment() {
        self.value+=1
    }
    func decrement() {
        self.value-=1
    }
}
