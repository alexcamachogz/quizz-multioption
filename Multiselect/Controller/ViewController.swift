//
//  ViewController.swift
//  Multiselect
//
//  Created by Alex Camacho on 27/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var answerButtonA: UIButton!
    @IBOutlet weak var answerButtonB: UIButton!
    @IBOutlet weak var answerButtonC: UIButton!
    
    let buttonBorderColor = UIColor(red: 61/255, green: 88/255, blue: 133/255, alpha: 1.0).cgColor
    let buttonBorderWidth = 5.0
    let buttonCornerRadius = 20.0
    
    var quiz = QuizModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIElements()
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel!.text!
        print(userAnswer)
    }
    
    func updateUIElements() {
        question.text = quiz.getQuestionText()
        createButtons()
        
        let progress = quiz.getProgress()
        progressBar.setProgress(progress, animated: true)
        
        score.text = "Score: \(quiz.getScore())"
    }
    
    func createButtons() {
        answerButtonA.layer.borderWidth = buttonBorderWidth
        answerButtonB.layer.borderWidth = buttonBorderWidth
        answerButtonC.layer.borderWidth = buttonBorderWidth
        
        answerButtonA.layer.borderColor = buttonBorderColor
        answerButtonB.layer.borderColor = buttonBorderColor
        answerButtonC.layer.borderColor = buttonBorderColor
        
        answerButtonA.layer.cornerRadius = buttonCornerRadius
        answerButtonB.layer.cornerRadius = buttonCornerRadius
        answerButtonC.layer.cornerRadius = buttonCornerRadius
        
        progressBar.setProgress(0.5, animated: false)
        progressBar.layer.cornerRadius = 5.0
        progressBar.clipsToBounds = true
    }
    
}

