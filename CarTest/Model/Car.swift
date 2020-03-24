//
//  Car.swift
//  CarTest
//
//  Created by Ihor Vovk on 20.03.2020.
//  Copyright © 2020 Ihor Vovk. All rights reserved.
//

import Foundation

struct Car: Identifiable, Equatable {
    
    let id: String
    var engineSize: String?
    var licensePlate: String?
    
    init(id: String, engineSize: String? = nil, licensePlate: String? = nil) {
        self.id = id
        self.engineSize = engineSize
        self.licensePlate = licensePlate
    }
}
