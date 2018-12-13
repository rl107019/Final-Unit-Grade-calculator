//
//  ViewController.swift
//  Final Unit Grade calculator
//
//  Created by CAMERON TOPPEL on 11/12/18.
//  Copyright © 2018 CAMERON TOPPEL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var percentNeeded: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var starOne: UIImageView!
    @IBOutlet weak var starTwo: UIImageView!
    @IBOutlet weak var starThree: UIImageView!
    @IBOutlet weak var starFour: UIImageView!
    @IBOutlet weak var starFive: UIImageView!
    
    var percentNeededInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

   
    @IBAction func onButtonTapped(_ sender: Any) {

        
        
        
    let currentGrade = Int(textField1.text!)
    let desiredGrade = Int(textField2.text!)
    let percentOfExam = Int(textField3.text!)
        percentNeeded.text = "\((100 * desiredGrade! - (100 - percentOfExam!) * currentGrade!) / percentOfExam!)%"
        percentNeededInt = (100 * desiredGrade! - (100 - percentOfExam!) * currentGrade!) / percentOfExam!
        
        self.overOneHundred()
        resignFirstResponder()
    }
    
    func overOneHundred(){
        if percentNeededInt >= 90 {
            starOne.image = UIImage (named: "imageOne.jpg")
            starTwo.image = UIImage (named: "imageOne.jpg")
            starThree.image = UIImage (named: "imageOne.jpg")
            starFour.image = UIImage (named: "imageOne.jpg")
            starFive.image = UIImage (named: "imageOne.jpg")
            
        }else if percentNeededInt >= 80 {
            starOne.image = UIImage (named: "imageOne.jpg")
            starTwo.image = UIImage (named: "imageOne.jpg")
            starThree.image = UIImage (named: "imageOne.jpg")
            starFour.image = UIImage (named: "imageOne.jpg")
        }else if percentNeededInt >= 70 {
            starOne.image = UIImage (named: "imageOne.jpg")
            starTwo.image = UIImage (named: "imageOne.jpg")
            starThree.image = UIImage (named: "imageOne.jpg")
        }else if percentNeededInt >= 60 {
            starOne.image = UIImage (named: "imageOne.jpg")
            starTwo.image = UIImage (named: "imageOne.jpg")
        }else if percentNeededInt <= 59 {
            starOne.image = UIImage (named: "imageOne.jpg")
        }
    }
    
    
    
}

