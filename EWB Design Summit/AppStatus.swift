//
//  AppStatus.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 10/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit

class AppStatus {
    
    
    
    var loggedInStatus: Bool
    var loggedInPerson: Person?
    
    
    init(loggedInStatus: Bool, loggedInPerson: Person?){
        
        self.loggedInStatus = false
        self.loggedInPerson = loggedInPerson
        
    }
    

}
