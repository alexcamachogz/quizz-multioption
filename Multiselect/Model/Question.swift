//
//  Question.swift
//  Multiselect
//
//  Created by Alex Camacho on 27/05/22.
//

import Foundation

struct Question {
    let question: String
    let answers: Array<String>
    let correctAnswer: String
    
    init(q: String, a: Array<String>, b: String){
        question = q
        answers = a
        correctAnswer = b
    }
}
