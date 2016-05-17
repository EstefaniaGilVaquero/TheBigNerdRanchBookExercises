//
//  ViewController.swift
//  Quiz
//
//  Created by stefy83 on 17/05/16.
//  Copyright © 2016 Symbel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    //IBVARIABLES
    
    let questions: [String] = ["From what is cognac made?","What is 7+7?","What is the capital of Vermont?"]
    let answers: [String] = ["Grapes","14","Montpelier"]
    var currentQuestionIndex : Int = 0


    //IBOUTLET: -
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    //IBACTION: -
    
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    
}

