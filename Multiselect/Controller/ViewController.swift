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
    let colorCorrectAnswer = UIColor(red: 0/255, green: 200/255, blue: 165/255, alpha: 1.0).cgColor
    let colorWrongAnswer = UIColor(red: 200/255, green: 59/255, blue: 81/255, alpha: 1.0).cgColor
    
    var quiz = QuizModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIElements()
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.title(for: .normal)!
        let isCorrectAnswer = quiz.checkAnswer(userAnswer)
        
        if isCorrectAnswer {
            sender.layer.borderColor = colorCorrectAnswer
        } else {
            sender.layer.borderColor = colorWrongAnswer
        }
        
        if quiz.questionNumber == 0 {
            progressBar.setProgress(0, animated: false)
        }
        
        quiz.getNextQuestion()
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUIElements), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUIElements() {
        question.text = quiz.getQuestionText()
        createButtons()
        
        let answersQuiz = quiz.getAnswersText()
        answerButtonA.setTitle(answersQuiz[0], for: .normal)
        answerButtonB.setTitle(answersQuiz[1], for: .normal)
        answerButtonC.setTitle(answersQuiz[2], for: .normal)
        
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

