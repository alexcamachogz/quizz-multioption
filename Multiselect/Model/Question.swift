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
    let userAnswer: String
    
    init(q: String, a: Array<String>, b: String){
        question = q
        answers = a
        userAnswer = b
    }
}
