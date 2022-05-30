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
            q: "¿Quién pintó Las meninas?",
            a: ["Francisco de Goya", "Diego Velázquez", "Salvador Dalí"],
            b: "Diego Velázquez"),
        Question(
            q: "¿Cuál es la capital de Hungría?",
            a: ["Viena", "Praga", "Budapest"],
            b: "Budapest"),
        Question(
            q: "Aproximadamente, ¿cuántos huesos tiene el cuerpo humano?",
            a: ["40", "390", "208"],
            b: "208"),
        Question(
            q: "¿Cuantos continentes hay en el mundo?",
            a: ["5", "6", "7"],
            b: "6"),
        Question(
            q: "En tiempos pasados, ¿qué guardaba un caballero en el bolsillo de su llavero?",
            a: ["Libreta", "Pañuelo", "Reloj"],
            b: "Reloj"),
        Question(
            q: "¿Cómo se dice adiós en frances?",
            a: ["Au Revoir", "Adiós", "Bye"],
            b: "Au Revoir"),
        Question(
            q: "¿Cuál de estos colores no aparece en el logotipo de Platzi?",
            a: ["Verde", "Naranja", "Blanco"],
            b: "Naranja"),
        Question(
            q: "¿Qué lenguaje se utiliza para programar aplicaciones para los dispositivos Apple?",
            a: ["Python", "JavaScript", "Swift"],
            b: "Swift"),
        Question(
            q: "¿Quién es el mejor amigo de Harry Potter?",
            a: ["Draco Malfoy", "Ronald Weasly", "Albus Dombuldore"],
            b: "Ronald Weasly"),
        Question(
            q: "¿En qué país se encuentra Cracovia?",
            a: ["Eslovaquia", "Austria", "Polonia"],
            b: "Polonia")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        }
        return false
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getAnswersText() -> Array<String> {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func getNextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
