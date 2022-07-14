//
//  ViewController.swift
//  Navigationprjct
//
//  Created by Bimal@AppStation on 05/05/22.
//

import UIKit

class LogoPageViewController: UIViewController {
    var stringPass: String = ""
    @IBOutlet weak var versionbutton: UIButton!
    @IBOutlet weak var labelnotification: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        versionbutton.layer.borderColor = UIColor.brown.cgColor
        versionbutton.layer.borderWidth = 1
        versionbutton.layer.cornerRadius = 16
        versionbutton.titleLabel?.font = .systemFont(ofSize: 10)
        versionbutton.titleLabel?.textColor = UIColor.brown
        
        NotificationCenter.default.addObserver(self, selector: #selector(notify(notification:)), name: Notification.Name(rawValue: "Clicked"), object: nil)
      }
    @objc func notify(notification: NSNotification) {
//        print(notification.userInfo ?? "")
        if let dict = notification.userInfo as NSDictionary? {
            if let myMessage = dict["text"] as? String{
                labelnotification.text = myMessage
            }
        }
    }
}
