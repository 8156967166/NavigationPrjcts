//
//  NavigateViewController.swift
//  Navigationprjct
//
//  Created by Bimal@AppStation on 05/05/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var backtoLoginbtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
    @IBAction func buttonAction(sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func backtologinAction(sender: UIButton){
        backtoLoginbtn.layer.borderColor = UIColor.brown.cgColor
        backtoLoginbtn.layer.borderWidth = 1
        backtoLoginbtn.layer.cornerRadius = 6
        backtoLoginbtn.titleLabel?.font = .systemFont(ofSize: 18)
        backtoLoginbtn.titleLabel?.textColor = UIColor.white
        
//        navigationController?.popViewController(animated: true)
        NotificationCenter.default.post(name: Notification.Name(rawValue: "Clicked"), object: self)
    }
}
