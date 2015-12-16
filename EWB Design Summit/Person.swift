//
//  Person.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 10/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit

class Person: NSObject, NSCoding{
    
    //MARK: Properties
    var firstName: String
    var lastName: String
    var emailAddress: String
    var password: String
    
    
    // MARK: Archiving Paths
    
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("persons")
    
    
    // MARK: Types
    
    struct PropertyKey {
        static let firstNameKey = "firstName"
        static let lastNameKey = "lastNameKey"
        static let emailAddressKey = "emailAddress"
        static let passwordKey = "password"
    }
    
    
    //MARK: Initializers
    
    init?(firstName: String, lastName: String, emailAddress: String, password: String){
        
        self.firstName = firstName
        self.lastName = lastName
        self.emailAddress = emailAddress
        self.password = password
        super.init()
        
        
        if firstName.isEmpty || lastName.isEmpty || emailAddress.isEmpty || password.isEmpty{
            return nil
        }
    }
    
    
    // MARK: NSCoding
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(firstName, forKey: PropertyKey.firstNameKey)
        aCoder.encodeObject(lastName, forKey: PropertyKey.lastNameKey)
        aCoder.encodeObject(emailAddress, forKey: PropertyKey.emailAddressKey)
        aCoder.encodeObject(password, forKey: PropertyKey.passwordKey)
        
    }
    
    
    required convenience init?(coder aDecoder: NSCoder) {
        let firstName = aDecoder.decodeObjectForKey(PropertyKey.firstNameKey) as! String
        let lastName = aDecoder.decodeObjectForKey(PropertyKey.lastNameKey) as! String
        let emailAddress = aDecoder.decodeObjectForKey(PropertyKey.emailAddressKey) as! String
        let password = aDecoder.decodeObjectForKey(PropertyKey.passwordKey) as! String
        
        // Must call designated initilizer.
        self.init(firstName: firstName, lastName: lastName, emailAddress: emailAddress, password: password)
    }
    
}









