//
//  SignInViewController.swift
//  assignment_2
//
//  Created by Marlon Misra on 9/29/15.
//  Copyright © 2015 Marlon Misra. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    //login view
    @IBOutlet weak var loginView: UIView!
    
    //email and password textfields
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    //sign in buttons to move up
    @IBOutlet weak var MoveUp: UIView!
    
    
    
    
    func textFieldDidBeginEditing(textField: UITextField) {
        UIView.animateWithDuration(0.3) { () -> Void in
            
            self.MoveUp.frame.origin.y = 230
        }
        
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    @IBAction func onSignIn(sender: AnyObject) {
        if ( emailField.text!.isEmpty || passwordField.text!.isEmpty ) {
            
            let alertController = UIAlertController(title: "Info missing", message: "Please enter your email and password", preferredStyle: .Alert)
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true) {
            }

        }
        
        else {
            
            let waitAlert = UIAlertController(title: "Signing In...", message: nil, preferredStyle: .Alert)
            presentViewController(waitAlert, animated: true) {
            }
            
            
            // Delay for 2 seconds, then run the code between the braces.
            delay(2) {
                
                waitAlert.dismissViewControllerAnimated(true, completion: nil)
                
                if (self.emailField.text == "marlonmisra@gmail.com" && self.passwordField.text == "test123") {
                    self.performSegueWithIdentifier("toIntro", sender: nil)
                }
                
                else {
                    let alertController2 = UIAlertController(title: "Sign In Failed", message: "Incorrect Email or password", preferredStyle: .Alert)
                    // create an OK action
                    let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                        // handle response here.
                    }
                    // add the OK action to the alert controller
                    alertController2.addAction(OKAction)
                    
                    self.presentViewController(alertController2, animated: true) { }
                }
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
















