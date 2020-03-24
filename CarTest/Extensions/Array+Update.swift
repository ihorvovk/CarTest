//
//  Array+Update.swift
//  CarTest
//
//  Created by Ihor Vovk on 20.03.2020.
//  Copyright © 2020 Ihor Vovk. All rights reserved.
//

import Foundation

extension Array where Element == Car {
    
    mutating func update(with array: [Car]?) {
        if let array = array {
            for car in array {
                if let i = firstIndex(where: { $0.id == car.id }) {
                    self[i] = car
                } else {
                    append(car)
                }
            }
        } else {
            removeAll()
        }
    }
    
    mutating func updateAndClean(using array: [Car]) {
        update(with: nil)
        update(with: array)
    }
}
