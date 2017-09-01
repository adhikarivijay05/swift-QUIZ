//
//  question.swift
//  swiftQuiz
//
//  Created by Vijay Adhikari on 01/09/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class question {
    
    let questionText : String
    let answer : Bool
    
    init(question: String, correctAnswer : Bool) {
        questionText  = question
        answer = correctAnswer
    }
}
