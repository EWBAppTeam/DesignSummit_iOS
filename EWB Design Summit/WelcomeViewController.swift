//
//  WelcomeViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var emailAddressField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
