//  Copyright © 2017 Marco Pace. All rights reserved.

protocol CarType {
    var brand: String { get }
}

class Car: CarType, StorageContainerType, Valutable {
    var brand: String
    var myStorage: StorageType.Type?
    
    init(brand: String, storage: StorageType.Type?) {
        self.brand = brand
        self.myStorage = storage
    }
}
