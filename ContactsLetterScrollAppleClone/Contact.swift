//
//  Contact.swift
//  ContactsLetterScrollAppleClone
//
//  Created by Elliot Knight on 17/02/2024.
//

import Foundation

struct Contact: Identifiable, Hashable {
    var id = UUID()
    let firstName: String
    let lastName: String
}

extension Contact {
    static let contacts: [Contact] = [
        Contact(firstName: "Alice", lastName: "Anderson"),
        Contact(firstName: "Bob", lastName: "Brown"),
        Contact(firstName: "Charlie", lastName: "Clark"),
        Contact(firstName: "David", lastName: "Davis"),
        Contact(firstName: "Eva", lastName: "Evans"),
        Contact(firstName: "Frank", lastName: "Fisher"),
        Contact(firstName: "Grace", lastName: "Gray"),
        Contact(firstName: "Henry", lastName: "Hill"),
        Contact(firstName: "Ivy", lastName: "Irwin"),
        Contact(firstName: "Jack", lastName: "Jones"),
        Contact(firstName: "Karen", lastName: "King"),
        Contact(firstName: "Leo", lastName: "Lee"),
        Contact(firstName: "Mia", lastName: "Miller"),
        Contact(firstName: "Nathan", lastName: "Nelson"),
        Contact(firstName: "Olivia", lastName: "Owens"),
        Contact(firstName: "Peter", lastName: "Parker"),
        Contact(firstName: "Quinn", lastName: "Quinn"),
        Contact(firstName: "Rachel", lastName: "Reed"),
        Contact(firstName: "Sam", lastName: "Smith"),
        Contact(firstName: "Ursula", lastName: "Underwood"),
        Contact(firstName: "Victor", lastName: "Vaughn"),
        Contact(firstName: "Wendy", lastName: "Woods"),
        Contact(firstName: "Xavier", lastName: "Xander"),
        Contact(firstName: "Yvonne", lastName: "Young"),
        Contact(firstName: "Zack", lastName: "Zimmerman")
    ]
}
