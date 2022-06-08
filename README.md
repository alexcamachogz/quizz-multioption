<h1 align="center" id="title">Quizz simulator</h1>

<p align="center"><img src="https://socialify.git.ci/alexcamachogz/quizz-multioption/image?language=1&amp;name=1&amp;owner=1&amp;pattern=Solid&amp;theme=Dark" alt="project-image"></p>

<p id="description">Quizz is an app that let you response some pre loaded questions and know if your answer is correct or not. You will be able to study using this app to prepare for your exams. You will only need write the questions you need in the QuizModel file.</p>

## Tabla de contenido

- [Demo](#demo)
- [Features](#features)
- [Installation Step](#installation-steps)
- [The process](#the-process)
  - [Built with](#built-with)
  - [Structure](#quiz-structure)
- [Useful resources](#useful-resources)
- [Author](#author)

## Demo

![Quiz](https://media.giphy.com/media/pwVeGTcr39AErOnBOU/giphy.gif)
  
## Features

Here're some of the project's best features:

*   Get a question with multi options
*   Get an automatic feedback about if the answer is correct or not
*   Track the score
*   Track the progres across the questions.

## Installation Steps:

1. Clone the repository.
2. Open the project with Xcode.
3. Run the app and enjoy it.

## The process 
### Built with

Technologies used in the project:

*   Swift 5.6
*   Xcode 13.3
*   iOS 15.5

### Quiz structure

``` Swift
// Question struct
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
```

``` Swift
// Question collection
let quiz = [
  Question(
      q: "¿Quién pintó Las meninas?",
      a: ["Francisco de Goya", "Diego Velázquez", "Salvador Dalí"],
      b: "Diego Velázquez"),
  Question(
      q: "¿Cuál es la capital de Hungría?",
      a: ["Viena", "Praga", "Budapest"],
      b: "Budapest")
]
```

## Useful resources

* [Canva](https://www.canva.com) - Used to create graphics.
* [Classes and Structures](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html) - A guide to Structures and Classes.

## Author

Alex Camacho - [alexcamachogz](https://twitter.com/alexcamachogz)
