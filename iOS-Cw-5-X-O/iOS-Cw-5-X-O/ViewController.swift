//
//  ViewController.swift
//  iOS-Cw-5-X-O
//
//  Created by Rayan on 6/29/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet weak var turnLabel: UILabel!
@IBOutlet weak var b1: UIButton!
@IBOutlet weak var b2: UIButton!
@IBOutlet weak var b3: UIButton!
@IBOutlet weak var b4: UIButton!
@IBOutlet weak var b5: UIButton!
@IBOutlet weak var b6: UIButton!
@IBOutlet weak var b7: UIButton!
@IBOutlet weak var b8: UIButton!
@IBOutlet weak var b9: UIButton!

   var turn = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   }
    
    @IBAction func tap(_ sender: UIButton) {
        if turn % 2 == 0{
        sender.setTitle("X", for: .normal)
            turnLabel.text = "O Turn"
        }
        else{
            sender.setTitle("O", for: .normal)
            turnLabel.text = "X Turn"
        }
        print(turn)
        sender.isUserInteractionEnabled = false
        turn += 1
        if checkWinner(p: "X"){
    okAlert(title: "Yuppeee X Wins 🥰", message: "Congrats, now reset the game!")
        }
    if checkWinner(p: "O"){
       okAlert(title: "Yuppeee O Wins 🥰", message: "Congrats, now reset the game!")
           }
    else if turn == 9{
           okAlert(title: "No One wins", message: "now reset the game!")
               
        }
    }
    
    func checkWinner(p: String) -> Bool {
let f1 = b1.titleLabel?.text
let f2 = b2.titleLabel?.text
let f3 = b3.titleLabel?.text
let f4 = b4.titleLabel?.text
let f5 = b5.titleLabel?.text
let f6 = b6.titleLabel?.text
let f7 = b7.titleLabel?.text
let f8 = b8.titleLabel?.text
let f9 = b9.titleLabel?.text
        
        
let r1 = (f1, f2, f3) == (p, p, p)
let r2 = (f4, f5, f6) == (p, p, p)
let r3 = (f7, f8, f9) == (p, p, p)
let c1 = (f1, f4, f7) == (p, p, p)
let c2 = (f2, f5, f8) == (p, p, p)
let c3 = (f3, f6, f9) == (p, p, p)
let d1 = (f1, f5, f9) == (p, p, p)
let d2 = (f3, f5, f7) == (p, p, p)
        
        if r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2 {
            print("👏👏🎉 \(p) Wins")
           return true
        }
        else{
            return false
        }
        
        
    
        
    }
    
    

    @IBAction func reset(_ sender: Any) {
    b1.titleLabel?.text = ""
    b2.titleLabel?.text = ""
    b3.titleLabel?.text = ""
    b4.titleLabel?.text = ""
    b5.titleLabel?.text = ""
    b6.titleLabel?.text = ""
    b7.titleLabel?.text = ""
    b8.titleLabel?.text = ""
    b9.titleLabel?.text = ""
    
    b1.setTitle("", for: .normal)
    b1.setTitle("", for: .normal)
    b1.setTitle("", for: .normal)
    b1.setTitle("", for: .normal)
    b1.setTitle("", for: .normal)
    b1.setTitle("", for: .normal)
    b1.setTitle("", for: .normal)
    b1.setTitle("", for: .normal)
    b1.setTitle("", for: .normal)
        
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
    b1.isUserInteractionEnabled = true
        
        turn = 0
        
        
    }
   func okAlert(title: String, message: String)
   {
       let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
       let okAction = UIAlertAction(title: "Ok", style: .cancel)
       alertController.addAction(okAction)
       present(alertController, animated: true)
   }
            
}

