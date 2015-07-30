//: Playground - noun: a place where people can play

import Cocoa

// MARK: -
// MARK: Property list conversion protocol

protocol PropertyListReadable {
    func propertyListRepresentation() -> NSDictionary
    init?(propertyListRepresentation:NSDictionary?)
}

func extractValuesFromPropertyListArray<T:PropertyListReadable>(propertyListArray:[AnyObject]?) -> [T] {
    guard let encodedArray = propertyListArray else {return []}
    return encodedArray.map{$0 as? NSDictionary}.flatMap{T(propertyListRepresentation:$0)}
}

func saveValuesToDefaults<T:PropertyListReadable>(newValues:[T], key:String) {
    let encodedValues = newValues.map{$0.propertyListRepresentation()}
    NSUserDefaults.standardUserDefaults().setObject(encodedValues, forKey:key)
}

// MARK: -
// MARK: Coordinates

struct Coordinate {
    let x:Double
    let y:Double
    let z:Double
    
    init(_ x: Double, _ y: Double, _ z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
}

extension Coordinate: PropertyListReadable {
    func propertyListRepresentation() -> NSDictionary {
        let representation:[String:AnyObject] = ["x":self.x, "y":self.y, "z":self.z]
        return representation
    }
    
    init?(propertyListRepresentation:NSDictionary?) {
        guard let values = propertyListRepresentation else {return nil}
        if let xCoordinate = values["x"] as? Double,
            yCoordinate = values["y"] as? Double,
            zCoordinate = values["z"] as? Double {
                self.x = xCoordinate
                self.y = yCoordinate
                self.z = zCoordinate
        } else {
            return nil
        }
    }
}
