//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class User: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var email: String?

    public var firstName: String?

    public var id: Int?

    public var lastName: String?

    public var password: String?

    public var phone: String?

    /** User Status */
    public var userStatus: Int?

    public var username: String?

    public init(email: String? = nil, firstName: String? = nil, id: Int? = nil, lastName: String? = nil, password: String? = nil, phone: String? = nil, userStatus: Int? = nil, username: String? = nil) {
        self.email = email
        self.firstName = firstName
        self.id = id
        self.lastName = lastName
        self.password = password
        self.phone = phone
        self.userStatus = userStatus
        self.username = username
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        email = jsonDictionary.json(atKeyPath: "email")
        firstName = jsonDictionary.json(atKeyPath: "firstName")
        id = jsonDictionary.json(atKeyPath: "id")
        lastName = jsonDictionary.json(atKeyPath: "lastName")
        password = jsonDictionary.json(atKeyPath: "password")
        phone = jsonDictionary.json(atKeyPath: "phone")
        userStatus = jsonDictionary.json(atKeyPath: "userStatus")
        username = jsonDictionary.json(atKeyPath: "username")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let email = email {
            dictionary["email"] = email
        }
        if let firstName = firstName {
            dictionary["firstName"] = firstName
        }
        if let id = id {
            dictionary["id"] = id
        }
        if let lastName = lastName {
            dictionary["lastName"] = lastName
        }
        if let password = password {
            dictionary["password"] = password
        }
        if let phone = phone {
            dictionary["phone"] = phone
        }
        if let userStatus = userStatus {
            dictionary["userStatus"] = userStatus
        }
        if let username = username {
            dictionary["username"] = username
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
