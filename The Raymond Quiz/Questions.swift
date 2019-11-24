//
//  Questions.swift
//  The Raymond Quiz
//
//  Created by Raymond Lopez on 11/20/19.
//  Copyright © 2019 Raymond Lopez. All rights reserved.
//

import Foundation

class Question {
    //let questionImage: String
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int

    init (questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int){
        //questionImage = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
}
