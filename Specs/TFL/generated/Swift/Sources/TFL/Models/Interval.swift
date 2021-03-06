//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Interval: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var stopId: String?

    public var timeToArrival: Double?

    public init(stopId: String? = nil, timeToArrival: Double? = nil) {
        self.stopId = stopId
        self.timeToArrival = timeToArrival
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        stopId = jsonDictionary.json(atKeyPath: "stopId")
        timeToArrival = jsonDictionary.json(atKeyPath: "timeToArrival")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let stopId = stopId {
            dictionary["stopId"] = stopId
        }
        if let timeToArrival = timeToArrival {
            dictionary["timeToArrival"] = timeToArrival
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
