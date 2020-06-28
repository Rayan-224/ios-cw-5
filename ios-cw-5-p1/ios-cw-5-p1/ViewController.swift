//
//  ViewController.swift
//  ios-cw-5-p1
//
//  Created by Rayan on 6/28/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var gradField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tappedSignin(_ sender: Any) {
       print("Hello world")
        nameLabel.text = nameField.text
        gradeLabel.text = gradField.text
    }
}



