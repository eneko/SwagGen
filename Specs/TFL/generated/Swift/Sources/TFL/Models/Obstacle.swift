//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Obstacle: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var incline: String?

    public var position: String?

    public var stopId: Int?

    public var type: String?

    public init(incline: String? = nil, position: String? = nil, stopId: Int? = nil, type: String? = nil) {
        self.incline = incline
        self.position = position
        self.stopId = stopId
        self.type = type
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        incline = jsonDictionary.json(atKeyPath: "incline")
        position = jsonDictionary.json(atKeyPath: "position")
        stopId = jsonDictionary.json(atKeyPath: "stopId")
        type = jsonDictionary.json(atKeyPath: "type")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let incline = incline {
            dictionary["incline"] = incline
        }
        if let position = position {
            dictionary["position"] = position
        }
        if let stopId = stopId {
            dictionary["stopId"] = stopId
        }
        if let type = type {
            dictionary["type"] = type
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
