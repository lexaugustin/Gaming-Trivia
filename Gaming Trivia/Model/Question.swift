//
//  Question.swift
//  Gaming Trivia
//
//  Created by Alexander Augustin on 3/31/18.
//  Copyright © 2018 Alexander Augustin. All rights reserved.
//

import Foundation

class Question {
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
    init (text: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, rightAnswer: Int){
        question = text
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = rightAnswer
    }
}
