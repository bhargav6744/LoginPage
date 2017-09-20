//
//  ViewController.swift
//  LoginPage
//
//  Created by Hitesh V-PI on 29/05/17.
//  Copyright © 2017 Pixabit Infotech. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        let parameters: Parameters = [
            "username": UserName.text!,
            "password": Password.text!,
            "devicetype": "hjhj",
            "devicekey": "hjhj"
            
            ]
        Alamofire.request("http://103.240.162.213/NewGym/Webservice.asmx/Userlogin", method: .post, parameters: parameters, encoding: URLEncoding.default).responseJSON{
            response in
            
            switch response.result {
            case .success:
                if let JSON = response.result.value{
                    
                    
                    print("JSON: \(JSON)")
                }

                
                
                print("Validation Successful")
            case .failure(let error):
                print(error)
                
            }
            
      
        
        
    }
    
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

