//  Copyright © 2017 Marco Pace. All rights reserved.

class Car: Evaluable {
    var brand: String
    var storage: StorageType.Type?
    
    init(brand: String, storage: StorageType.Type?) {
        self.brand = brand
        self.storage = storage
    }
}
