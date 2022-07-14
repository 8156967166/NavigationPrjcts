//
//  ApiViewController.swift
//  Navigationprjct
//
//  Created by Bimal@AppStation on 11/05/22.
//

import UIKit

class ApiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       setApi()
    }
    func setApi() {
        let param = [:] as Dictionary
        var rqst = URLRequest(url: URL(string: "http://universities.hipolabs.com/search?country=United+States")!)
        rqst.httpMethod = "POST"
        rqst.httpBody = try? JSONSerialization.data(withJSONObject: param, options: [])
        rqst.addValue("Application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        let task = session.dataTask(with: rqst, completionHandler: { data, response, error -> Void in
            print(response!)
            do {
//                let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? Dictionary<String, AnyObject>
                let json = try JSONSerialization.jsonObject(with: data!, options: []) as! Dictionary<String, AnyObject>
                print("The Response is : ",json)
            }
            catch {
                print(error)
            }
        })
        task.resume()
    }
    
}
    
