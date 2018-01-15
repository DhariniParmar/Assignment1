//
//  ViewController.swift
//  Assignmnet1
//
//  Created by Student on 2018-01-11.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var signOperator: UILabel!
    

    @IBOutlet weak var firstOperand: UILabel!
    
    
    @IBOutlet weak var secondOperand: UILabel!
    
    @IBOutlet weak var result: UITextField!
    
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var level: UILabel!
    
    @IBOutlet weak var round: UILabel!
    
    
    
    var first_Operand_Number: Int = 0
    var second_Operand_Number: Int = 0
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func resultCheck(_ sender: UIButton) {
        
        randomoperators()
        randomOperands()
    }
    
   
    @IBAction func startOverbtn(_ sender: UIButton) {
    }
    
    
    @IBAction func infobtn(_ sender: UIButton) {
    }
    
    func randomoperators(){
    number = Int(arc4random_uniform(4))
        switch(number){
            
        case 0: signOperator.text = "+"
            break
        case 1: signOperator.text = "-"
            break
        case 2: signOperator.text = "*"
            break
        case 3: signOperator.text = "/"
            break
        default: signOperator.text = "+"
            break
        }
        
    }
    
    func randomOperands(){
        
       first_Operand_Number = Int(arc4random_uniform(10))
       firstOperand.text = String(first_Operand_Number)
       second_Operand_Number = Int(arc4random_uniform(10))
       secondOperand.text = String(second_Operand_Number)
        
    }
    
    func answerCheck(){
    
        
        
    }

    
}



