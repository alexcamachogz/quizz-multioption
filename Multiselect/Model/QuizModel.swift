//
//  QuizModel.swift
//  Multiselect
//
//  Created by Alex Camacho on 27/05/22.
//

import Foundation

struct QuizModel {
    let quiz = [
        Question(
            q: "Which is the largest organ in the human body?",
            a: ["Heart", "Skin", "Large Intestine"],
            b: "Skin"),
        Question(
            q: "Five dollars is worth how many nickels?",
            a: ["25", "50", "100"],
            b: "100"),
        Question(
            q: "What do the letters in the GMT time zone stand for?",
            a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"],
            b: "Greenwich Mean Time"),
        Question(
            q: "What is the French word for 'hat'?",
            a: ["Chapeau", "Écharpe", "Bonnet"],
            b: "Chapeau"),
        Question(
            q: "In past times, what would a gentleman keep in his fob pocket?",
            a: ["Notebook", "Handkerchief", "Watch"],
            b: "Watch"),
        Question(
            q: "How would one say goodbye in Spanish?",
            a: ["Au Revoir", "Adiós", "Salir"],
            b: "Adiós"),
        Question(
            q: "Which of these colours is NOT featured in the logo for Google?",
            a: ["Green", "Orange", "Blue"],
            b: "Orange"),
        Question(
            q: "What alcoholic drink is made from molasses?",
            a: ["Rum", "Whisky", "Gin"],
            b: "Rum"),
        Question(
            q: "What type of animal was Harambe?",
            a: ["Panda", "Gorilla", "Crocodile"],
            b: "Gorilla"),
        Question(
            q: "Where is Tasmania located?",
            a: ["Indonesia", "Australia", "Scotland"],
            b: "Australia")
    ]
    
    var questionNumber = 0
    var score = 0
    
    // TODO: Función para checar la respuesta correcta
    func checkAnswer(_ userAnswer: String) -> Bool {
        return true
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    // TODO: Obtener el progreso
    func getProgress() -> Float {
        return 0.5
    }
    
    func getScore() -> Int {
        return score
    }
    
    // TODO: Obtener siguiente pregunta
    func getNextQuestion() {
        
    }
    
}
