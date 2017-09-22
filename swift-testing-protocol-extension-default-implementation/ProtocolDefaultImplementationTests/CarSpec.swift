//  Copyright © 2017 Marco Pace. All rights reserved.

import Quick
import Nimble

@testable import ProtocolDefaultImplementation

class CarSpec: QuickSpec {

    override func spec() {
        var storage: StorageStub.Type!
        var car: Car!
        
        beforeEach {
            storage = StorageStub.self
            car = Car(brand: "Ferrari", storage: storage)
        }
        
        it("creates the object") {
            expect(car).toNot(beNil())
        }
        
        it("has the correct value") {
            storage.value = 55
            expect(car.value).to(equal(55))
        }
    }
}

class StorageStub: StorageType {
    static var value = 123
    
    static func getValue(brand: String) -> Int {
        return value
    }
}
