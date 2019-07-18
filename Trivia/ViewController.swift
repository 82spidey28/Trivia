//
//  ViewController.swift
//  Trivia
//
//  Created by Spur IQ on 7/18/19.
//  Copyright © 2019 armadillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var questions = ["What has holes, but can hold water?", "What has feet, but no toes?", "What is tall when it is young, and short when it is old?", "When is a door not a door?"]
    var currQn = 0
    var answers = ["Sponge", "Yard stick", "Candle", "When it is a jar (ajar)"]
    var score = 0
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textBoxAnswer: UITextField!
    @IBOutlet weak var validationLabel: UILabel!
    @IBOutlet weak var endOfGameMessage: UILabel!
    @IBOutlet weak var scoreKeeper: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = questions[currQn]
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonClick(_ sender: Any) {
        if (textBoxAnswer.text == ""){
        validationLabel.text = "Please enter an answer."
            return
    }
    let userAnswer = textBoxAnswer.text
    let correctAnswer = answers[currQn]
        
        if(userAnswer!.caseInsensitiveCompare(correctAnswer) == .orderedSame) {
            validationLabel.text = "Correct."
            score = score + 1
        } else {
            validationLabel.text = "Incorrect. Correct answer is \(correctAnswer)"
        }

        scoreKeeper.text = String(score)
        currQn += 1
        
        if (currQn >= questions.count){
            if (score > questions.count / 2){
                endOfGameMessage.text = "Well done. Good game."
            } else {
                endOfGameMessage.text = "Better luck next time."
            }
        } else {
            label1.text = questions[currQn]
        }
        
        textBoxAnswer.text = ""
}
}

