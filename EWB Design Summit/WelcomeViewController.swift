//
//  WelcomeViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UITextFieldDelegate {
    
    //var person: Person?
    var status: AppStatus!
    var persons = [Person]()
    var newPerson: Person?
    var userFound: Int = -3
    let LoggedInStateKey = "ISLOGGEDIN"

    //MARK: Properties
    @IBOutlet weak var emailAddressField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load \n")
        
        userFound = NSUserDefaults.standardUserDefaults().integerForKey(LoggedInStateKey)
        
        
        //savePersons()

        // Load any saved people, otherwise load sample data.
        if let savedPersons = loadPersons(){
            persons = savedPersons
            if ((newPerson?.firstName.isEmpty) != nil) {
                persons.append(newPerson!)}
            print("persons loaded, number of persons is: ")
            print(persons.count)
            
            var i: Int = 0
            let j: Int = persons.count
            
            print("people in database are: ")
            while i < j{
                print(i, ": ", persons[i].firstName, " ", persons[i].lastName)
                i++
            }
        }
        
        else {
            // Load the sample data.
            loadSamplePersons()
            print("loaded samples")
        }
        
        
        
        // Handle the text field’s user input through delegate callbacks.
        emailAddressField.delegate = self
        passwordField.delegate = self
        
        savePersons()
        
    }
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        print("View Did Appear \n")
        persons = loadPersons()!
        
        userFound = NSUserDefaults.standardUserDefaults().integerForKey(LoggedInStateKey)
        
        // move to home screen if userFound is not negative. Indicating already logged in
        if userFound > -1 {
            self.performSegueWithIdentifier("login", sender: self)
        }
    }
    
    
    
    
    
//load Sample People Helper Function
    func loadSamplePersons() {
        
        let meal1 = Person(firstName: "John", lastName: "Doe", emailAddress: "JD@me.com", password: "pass")!
        
       
        let meal2 = Person(firstName: "Dan", lastName: "Freeman", emailAddress: "dr.freeman@me.com", password: "pass")!
        
       
        let meal3 = Person(firstName: "Bel", lastName: "Nim", emailAddress: "belindanim@gmail.com", password: "pass")!
        
        persons += [meal1, meal2, meal3]
    }

    
    
// Helper Function - varifer user
    func checkForUser()-> Int{
        
        let email = emailAddressField.text
        let password = passwordField.text
    
        if let i = persons.indexOf({$0.emailAddress == email}){
            print("Email Match, found at index \(i)")
            print(i)
            
            if persons[i].password == password{
                print("log in sucessful")
                return i
            }
            else{
                print("Incorrect Password")
                return -1
            }
        }
            
        else{
            print("Incorrect Email Address")
            return -2
        }
    }

        
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
// MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        
        if textField == self.emailAddressField{
            self.passwordField.becomeFirstResponder()
        }
        
        return true
    }
    

    
    
// MARK: Actions

    @IBAction func emailAddressFieldEditDidEnd(sender: UITextField) {
        self.passwordField.resignFirstResponder()
    }
  
    
    @IBAction func passwordFieldEditDidEnd(sender: UITextField) {
        self.emailAddressField.resignFirstResponder()
    }
    
    
    // Gesture Recogniser on ViewController, resignedfirst responder to hide keyboard when tapped outside of an object
    @IBAction func TapCommonArea(sender: UITapGestureRecognizer) {
        emailAddressField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
    
    
    @IBAction func loginButtonPushed(sender: UIButton) {
        
        //TODO: Check if email exsists, if yes then check for matching password transition to home. If no, display message to register.
        
        userFound = checkForUser()
            
        if userFound > -1 {
            
            // indicated to keep them logged in if closing app.
            NSUserDefaults.standardUserDefaults().setInteger(userFound, forKey: LoggedInStateKey)
            
        }
            
        else{
            if userFound == -1{
                print("password incorrect")
                //TODO: display Alert Window PASSWORD, stop transistion
            }
            if userFound == -2{
                print("email mismatch")
                //TODO: display Alert Window EMAIL, stop transistion
            }
            userFound = -3 // auto log out if app is closed
        }
    }

    
    @IBAction func RegisterButtonTapped(sender: UIButton) {
        //persons = []
        savePersons()
    }
    
    
    
    
// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "login") {
            
            if userFound > -1{
                let navController = segue.destinationViewController as! UINavigationController
                let detailController = navController.topViewController as! HomeViewController
                detailController.name = "Welcome, \(persons[userFound].firstName) \(persons[userFound].lastName)"
            }
                
            else{
                let navController = segue.destinationViewController as! UINavigationController
                let detailController = navController.topViewController as! HomeViewController
                detailController.name =  "You are not Registered"
            }
        }
    }

    
    // MARK: NSCoding
    
    func savePersons() {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(persons, toFile: Person.ArchiveURL.path!)
        if !isSuccessfulSave {
            print("Failed to save persons...")
        }
    }
    
    
    func loadPersons() -> [Person]? {
        
        return NSKeyedUnarchiver.unarchiveObjectWithFile(Person.ArchiveURL.path!) as? [Person]
    }
    
  
}

















