//
//  ViewController.swift
//  Quiz
//
//  Created by jaime jahuey on 10/18/17.
//  Copyright © 2017 jaime jahuey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions:[String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers:[String] = [
    "14",
    "Montpelier",
    "Grapes"
    ]
    
    var currentQuestionIndex:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Doo any additional setup after loading the view, typically from a nib.
        questionLabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0;
        }
        
        let question:String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer:String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }


}

