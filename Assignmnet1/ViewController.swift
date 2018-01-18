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
    @IBOutlet weak var resultShow: UITextField!

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var round: UILabel!



    var first_Operand_Number: Int = 0
    var second_Operand_Number: Int = 0
    var number: Int = 0
    var generatedAnswer = 0
    var count: Int = 0

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
        checkResultAndMessagePrint()
        generatedCorrectAnswer()
    }


    @IBAction func startOverbtn(_ sender: UIButton) {

        level.text = String(0)
        randomoperators()
    }


    @IBAction func infobtn(_ sender: UIButton) {
    }

    func randomNumber() {

        number = Int(arc4random_uniform(4))
    }

    func randomoperators() {
        randomNumber()

        switch(number) {

        case 0: signOperator.text = "+"
            break
        case 1: signOperator.text = "-"
            break
        case 2: signOperator.text = "*"
            break
        case 3: signOperator.text = "-"
            break
        default: signOperator.text = "+"
            break
        }

        first_Operand_Number = Int(arc4random_uniform(10) + 1)
        firstOperand.text = "\(first_Operand_Number)"
        second_Operand_Number = Int(arc4random_uniform(10) + 1)
        secondOperand.text = "\(second_Operand_Number)"

    }

    func conditionCheck() {



    }


    func generatedCorrectAnswer() {

        if number == 0 {
            generatedAnswer = Int(firstOperand.text!)! + Int(secondOperand.text!)!
        }
            else if number == 1 {
                generatedAnswer = Int(firstOperand.text!)! - Int(secondOperand.text!)!
        }
            else if number == 2 {
                generatedAnswer = Int(firstOperand.text!)! * Int(secondOperand.text!)!
        }
            else if number == 3 {
                generatedAnswer = Int(firstOperand.text!)! / Int(secondOperand.text!)!
        }
        print(generatedAnswer)
    }

    func checkResultAndMessagePrint() {


        let guess = resultShow.text

        if (guess == String(generatedAnswer)) {

            let alert = UIAlertController(title: "Ok", message: "Congratulations You Got it", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: nil)

            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            count += 1
            print(count)
            score.text = String(Int(score.text!)! + 5)
            round.text = String(Int(round.text!)! + 1)



        }
            else {
                let alertTwo = UIAlertController(title: "RE-TRY", message: "Try Again", preferredStyle: .alert)

                let actionTwo = UIAlertAction(title: "TRY AGAIN", style: .default, handler: nil)

                alertTwo.addAction(actionTwo)
                present(alertTwo, animated: true, completion: nil)
        }
    }

    func changeLevelAndRound() {

        if(count == 4) {
            randomNumber()

        } else if(count == 7) {

            randomNumber()
        } else if (count == 11) {

            randomNumber()
        }
    }

}


