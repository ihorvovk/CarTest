//
//  CarTestTests.swift
//  CarTestTests
//
//  Created by Ihor Vovk on 20.03.2020.
//  Copyright © 2020 Ihor Vovk. All rights reserved.
//

import XCTest
@testable import CarTest

class CarTestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testArray() {
        var arr1 = [Car(id: "abc"), Car(id: "abc1", engineSize: "small"), Car(id: "abc2")]
        let arr2 = [Car(id: "abc3"), Car(id: "abc2"), Car(id: "abc1", engineSize: "big")]
        arr1.update(with:arr2)
        XCTAssertEqual(arr1, [Car(id: "abc"), Car(id: "abc1", engineSize: "big"), Car(id: "abc2"), Car(id: "abc3")])
        
        let arr3: Array<Car>? = nil
        arr1.update(with:arr3)
        XCTAssertEqual(arr1, [])
        
        var arr4 = [Car(id: "abc"), Car(id: "abc1", engineSize: "small"), Car(id: "abc1"), Car(id: "abc2")]
        let arr5 = [Car(id: "abc1"), Car(id: "abc", licensePlate: "AB1234NC")]
        arr4.updateAndClean(using: arr5)
        
        XCTAssertEqual(arr4,  [Car(id: "abc1"), Car(id: "abc", licensePlate: "AB1234NC")])
    }
}
