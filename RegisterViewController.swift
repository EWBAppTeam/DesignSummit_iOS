//
//  RegisterViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {

    
    
//MARK: Properties
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    
    @IBOutlet weak var PhoneNumberTextField: UITextField!
    @IBOutlet weak var EmailAddressTextField: UITextField!
    
    @IBOutlet weak var HomeAddressTextField: UITextField!
    @IBOutlet weak var CityTextField: UITextField!
    @IBOutlet weak var StateTextField: UITextField!
    @IBOutlet weak var PostCodeTextField: UITextField!
    
    @IBOutlet weak var SetPasswordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FirstNameTextField.delegate = self
        LastNameTextField.delegate = self
        
        PhoneNumberTextField.delegate = self
        EmailAddressTextField.delegate = self
        
        HomeAddressTextField.delegate = self
        CityTextField.delegate = self
        StateTextField.delegate = self
        PostCodeTextField.delegate = self
        
        SetPasswordTextField.delegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
// MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) ->Bool{
        
        //Hide Keyboard
        textField.resignFirstResponder()
        
        if textField == self.FirstNameTextField{
            self.LastNameTextField.becomeFirstResponder()
        }
        
        if textField == self.LastNameTextField{
            self.PhoneNumberTextField.becomeFirstResponder()
        }
        
        if textField == self.PhoneNumberTextField{
            self.EmailAddressTextField.becomeFirstResponder()
        }
        
        if textField == self.EmailAddressTextField{
            self.HomeAddressTextField.becomeFirstResponder()
        }
        
        if textField == self.HomeAddressTextField{
            self.CityTextField.becomeFirstResponder()
        }
        
        if textField == self.CityTextField{
            self.StateTextField.becomeFirstResponder()
        }
        
        if textField == self.StateTextField{
            self.PostCodeTextField.becomeFirstResponder()
        }
        
        if textField == self.PostCodeTextField{
            self.SetPasswordTextField.becomeFirstResponder()
        }
        
        return true
    }
    
    
    
    
    
    
    
    
    
    
    
    
    //MARK: Actions
    
    @IBAction func TapEmptySpace(sender: UITapGestureRecognizer) {
        
        self.FirstNameTextField.resignFirstResponder()
        self.LastNameTextField.resignFirstResponder()
        
        self.PhoneNumberTextField.resignFirstResponder()
        self.EmailAddressTextField.resignFirstResponder()
        
        self.HomeAddressTextField.resignFirstResponder()
        self.CityTextField.resignFirstResponder()
        self.StateTextField.resignFirstResponder()
        self.PostCodeTextField.resignFirstResponder()
        
        self.SetPasswordTextField.resignFirstResponder()
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
