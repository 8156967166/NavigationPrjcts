//
//  LoginViewController.swift
//  Navigationprjct
//
//  Created by Bimal@AppStation on 06/05/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var signinbtn: UIButton!
    @IBOutlet weak var registerbtn: UIButton!
    @IBOutlet weak var viewemail: UIView!
    @IBOutlet weak var viewpass: UIView!
    @IBOutlet weak var textemail: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initalSetup()
    }
    
    func initalSetup() {
        signinbtn.layer.borderWidth = 1
        signinbtn.layer.borderColor = UIColor.brown.cgColor
        signinbtn.layer.cornerRadius = 6
        registerbtn.layer.borderColor = UIColor.brown.cgColor
        registerbtn.layer.borderWidth = 1
        registerbtn.layer.cornerRadius = 6
        viewemail.layer.borderWidth = 1
        viewemail.layer.borderColor = UIColor.brown.cgColor
        viewemail.layer.cornerRadius = 6
        viewpass.layer.borderWidth = 1
        viewpass.layer.borderColor = UIColor.brown.cgColor
        viewpass.layer.cornerRadius = 6
        
        NotificationCenter.default.addObserver(self, selector: #selector(LoginViewController.keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(LoginViewController.keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    @IBAction func buttonActionis(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func buttonSignin(sender: UIButton) {
        let emailtext = ["text": textemail.text]
        NotificationCenter.default.post(name: Notification.Name(rawValue: "Clicked"), object: self, userInfo: emailtext as! [String : String])
    }
}
