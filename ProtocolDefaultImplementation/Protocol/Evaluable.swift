//  Copyright © 2017 Marco Pace. All rights reserved.

protocol Evaluable {
    var storage: StorageType.Type? { get }
    var value: Int { get }
}

extension Evaluable where Self: Car {
    var storage: StorageType.Type? {
        return nil
    }

    var value: Int {
        let myStorage = storage ?? Storage.self
        return myStorage.getValue(brand: brand)
    }
}
