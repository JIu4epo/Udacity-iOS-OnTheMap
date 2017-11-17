//
//  ViewController.swift
//  OnTheMap
//
//  Created by Borys Tkachenko on 11/15/17.
//  Copyright © 2017 Borys Tkachenko. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var newUserButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.backgroundColor = UIColor.blue as! CGColor
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginPressed(_ sender: AnyObject) {
        TMDBClient.sharedInstance().authenticateWithViewController(self) { (success, errorString) in
            performUIUpdatesOnMain {
                if success {
                    self.completeLogin()
                } else {
                    self.displayError(errorString)
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

