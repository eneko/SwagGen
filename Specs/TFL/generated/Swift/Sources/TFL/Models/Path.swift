//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Path: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var elevation: [JpElevation]?

    public var lineString: String?

    public var stopPoints: [Identifier]?

    public init(elevation: [JpElevation]? = nil, lineString: String? = nil, stopPoints: [Identifier]? = nil) {
        self.elevation = elevation
        self.lineString = lineString
        self.stopPoints = stopPoints
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        elevation = jsonDictionary.json(atKeyPath: "elevation")
        lineString = jsonDictionary.json(atKeyPath: "lineString")
        stopPoints = jsonDictionary.json(atKeyPath: "stopPoints")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let elevation = elevation?.encode() {
            dictionary["elevation"] = elevation
        }
        if let lineString = lineString {
            dictionary["lineString"] = lineString
        }
        if let stopPoints = stopPoints?.encode() {
            dictionary["stopPoints"] = stopPoints
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
