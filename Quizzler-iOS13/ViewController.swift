//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(text: "One plus one equals 3", answer: "True"),
        Question(text: "Two plus 4 equals six", answer: "True"),
        Question(text: "I am a dinosaur", answer: "False")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let currentAnswer = sender.currentTitle //True or False
        if (quiz[questionNumber].answer == currentAnswer) {
            print("Right")
        } else {
            print("Wrong")
        }
        
        if (questionNumber != quiz.endIndex - 1) {
            questionNumber += 1
            updateUI()
        } else {
            print("Finished")
            questionNumber = 0
            updateUI()
        }
    }
    
    func updateUI() {
        self.questionLabel.text = quiz[questionNumber].text
    }

}

