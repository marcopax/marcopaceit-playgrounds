//  Copyright © 2017 Marco Pace. All rights reserved.

protocol StorageType {
    static func getValue(brand: String) -> Int
}

class Storage: StorageType {
    private static let values = [
        "Audi" : 35,
        "BMW" : 40,
        "Ferrari" : 100,
        "Fiat" : 10,
        "Mustang" : 80,
    ]
    
    public static func getValue(brand: String) -> Int {
        return values[brand] ?? 0
    }
}
