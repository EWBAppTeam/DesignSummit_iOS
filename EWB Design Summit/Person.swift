//
//  Person.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 10/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit

class Person {
    
    //MARK: Properties
    var firstName: String
    var lastName: String
    var emailAddress: String
    var password: String
    
    //MARK: Initializers
    
    init?(firstName: String, lastName: String, emailAddress: String, password: String){
        
        self.firstName = firstName
        self.lastName = lastName
        self.emailAddress = emailAddress
        self.password = password
        
        
        if firstName.isEmpty && lastName.isEmpty{
            self.firstName = "testFirstName"
            self.lastName = "testLastName"
        }
    }
    
}
