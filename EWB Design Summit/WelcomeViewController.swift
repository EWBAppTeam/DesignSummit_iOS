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
    var userFound: Int?
    let SliderValueKey = "ISLOGGEDIN"
    let LoginKey = "USERNAME"
    var username: String = "NoOne"
    var value:Float = 0;
    

    //MARK: Properties
    @IBOutlet weak var emailAddressField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        print("View Did Appear \n")
        
        //value = 0;
        
        value = NSUserDefaults.standardUserDefaults().floatForKey(SliderValueKey)
        
        if value != 0{
        self.performSegueWithIdentifier("login", sender: self)
        }
//        
//        let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
//        let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
//        
//        if (isLoggedIn != 1) {
//            self.performSegueWithIdentifier("login", sender: self)
//            
//        } else {
//            //self.usernameLabel.text = prefs.valueForKey("USERNAME") as NSString
//            
//        }
        
        print(persons.count)
        savePersons()
        
        persons = loadPersons()!
    
    
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        savePersons()
        
        print("View Did Load \n")
    
        
        // Load any saved meals, otherwise load sample data.
        if let savedPersons = loadPersons() {
            persons = savedPersons
            print("persons = SavedPersons")
            print(persons.count)
            print(persons.first?.firstName)
            print(persons.last?.firstName)
            
            var i: Int = 0
            let j: Int = persons.count
            
            while i < j{
                print(persons[i].firstName)
                print(persons[i].lastName)
                
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
        
    }
    
    
    
     //loadSampleMeals()
    func loadSamplePersons() {
        
        let meal1 = Person(firstName: "John", lastName: "Doe", emailAddress: "JD@me.com", password: "pass")!
        
       
        let meal2 = Person(firstName: "Dan", lastName: "Freeman", emailAddress: "dr.freeman@me.com", password: "pass")!
        
       
        let meal3 = Person(firstName: "Bel", lastName: "Nim", emailAddress: "belindanim@gmail.com", password: "pass")!
        
        persons += [meal1, meal2, meal3]
    }

    func checkForUser()-> Int{
        
        let email = emailAddressField.text
        let password = passwordField.text
        
        print(email)
        
        if let i = persons.indexOf({$0.emailAddress == email}){
            print("email match")
            print(i)
            
            if persons[i].password == password{
                print("log in sucessful")
                return i
            }
            else{
                print("password incorrect")
                return -1
            }
            
            
        }
        else{
            print("no email found")
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
        //person = Person(firstName: "first", lastName: "Last", emailAddress: "\(emailAddressField.text)", password: "\(passwordField.text)")
        
        //TODO: Check if email exsists, if yes then check for matching password transition to home. If no, display message to register.
        
        userFound = checkForUser()
            
        if userFound > -1 {
            value = 234.1
            username = "Dan"
            NSUserDefaults.standardUserDefaults().setFloat(value, forKey: SliderValueKey)
            NSUserDefaults.standardUserDefaults().setObject(username, forKey: LoginKey)
        }
        else{
            if userFound == -2{
                print("email mismatch")
            }
            if userFound == -1{
                print("password incorrect")
            }
            value = 0
        }
        
        
        
    }

    @IBAction func RegisterButtonTapped(sender: UIButton) {
        persons = []
        savePersons()
    }
    
    
    
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "login") {
            
            if userFound > -1{
            let navController = segue.destinationViewController as! UINavigationController
            let detailController = navController.topViewController as! HomeViewController
            detailController.name =  "Welcome, \(persons[userFound!].firstName) \(persons[userFound!].lastName)"
            }
            else{
            let navController = segue.destinationViewController as! UINavigationController
            let detailController = navController.topViewController as! HomeViewController
            detailController.name =  "Welcome, \(emailAddressField.text!)"
            }
            
            // this is a way to pass data to the next screen
//            let navController = segue.destinationViewController as! UINavigationController
//            let detailController = navController.topViewController as! HomeViewController
//            detailController.message =  emailAddressField.text
            
            //savePersons()
        }
        
//        
//        if loginButton === sender{
//            let emailAddress = emailAddressField.text ?? "testEmail"
//            let password = passwordField.text ?? "test"
//            
//            // Set the meal to be passed to MealTableViewController after the unwind segue.
//            person = Person(firstName: "Tom", lastName: "Jones", emailAddress: emailAddress, password: password
//        }
//        if segue.identifier == "login"{
//            let emailAddress = emailAddressField.text ?? "testEmail"
//            let password = passwordField.text ?? "test"
//            
//            // Set the meal to be passed to MealTableViewController after the unwind segue.
//            person = Person(firstName: "Jimi", lastName: "Hendrix", emailAddress: emailAddress, password: password)
//            
//            let svc = segue.destinationViewController as! HomeViewController;
//            
//            svc.message = emailAddressField.text
//            
//        }
        
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
        
        }
    
    
    
/*
    
    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        
        if let sourceViewController = sender.sourceViewController as? MealViewController, meal = sourceViewController.meal {
            
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                
                // Update an existing meal.
                meals[selectedIndexPath.row] = meal
                tableView.reloadRowsAtIndexPaths([selectedIndexPath], withRowAnimation: .None)
            }
                
            else{
                // Add a new meal.
                let newIndexPath = NSIndexPath(forRow: meals.count, inSection: 0)
                meals.append(meal)
                tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
            }
            
            // Save the meals.
            saveMeals()
        }
    }
    
    
    */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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

















