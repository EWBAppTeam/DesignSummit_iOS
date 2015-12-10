//
//  WelcomeViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UITextFieldDelegate {
    
    var person: Person!
    var status: AppStatus!

    //MARK: Properties
    @IBOutlet weak var emailAddressField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Handle the text field’s user input through delegate callbacks.
        emailAddressField.delegate = self
        passwordField.delegate = self
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
        person = Person(firstName: "first", lastName: "Last", emailAddress: "\(emailAddressField.text)", password: "\(passwordField.text)")
        
        
    }

    
    
    
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "login") {
            let navController = segue.destinationViewController as! UINavigationController
            let detailController = navController.topViewController as! HomeViewController
            detailController.message =  emailAddressField.text
        }
        
        
        
        
        
//        
//        if loginButton === sender{
//            let emailAddress = emailAddressField.text ?? "testEmail"
//            let password = passwordField.text ?? "test"
//            
//            // Set the meal to be passed to MealTableViewController after the unwind segue.
//            person = Person(firstName: "Tom", lastName: "Jones", emailAddress: emailAddress, password: password)
//            
//            
//        }
//    
//        if segue.identifier == "login"{
//            let emailAddress = emailAddressField.text ?? "testEmail"
//            let password = passwordField.text ?? "test"
//            
//            // Set the meal to be passed to MealTableViewController after the unwind segue.
//            person = Person(firstName: "Jimi", lastName: "Hendrix", emailAddress: emailAddress, password: password)
//            
//            
//            let svc = segue.destinationViewController as! HomeViewController;
//            
//            svc.message = emailAddressField.text
//            
//        }
        
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
        
        
    }
    
  
    

}
