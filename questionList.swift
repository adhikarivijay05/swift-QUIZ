//
//  questionList.swift
//  swiftQuiz
//
//  Created by Vijay Adhikari on 01/09/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class questionList {
    
    var list = [question]()
    
    init() {
        let item = question(question: "An ostrich's eye is bigger than its brain:", correctAnswer: true)
        list.append(item)
        
        list.append(question(question: "The colour of the universe is black", correctAnswer: false))
        
        list.append(question(question: "The Declaration of independence was signed on August 2 1776", correctAnswer: false))
        list.append(question(question: "Coca-Cola was originally green", correctAnswer: true))
        list.append(question(question: "Dogs can look up", correctAnswer: true))
        list.append(question(question: "The chicken came before the egg:", correctAnswer: true))

        list.append(question(question: "The sun is actually a star:", correctAnswer: false))

        list.append(question(question: "Sushi means 'raw fish':", correctAnswer: true))

        list.append(question(question: "DNA is made from protein:", correctAnswer: true))

        list.append(question(question: "Bats aren't blind", correctAnswer: false))

        list.append(question(question: "Shaving does not cause hair to grow back quicker:", correctAnswer: true))

        list.append(question(question: "The memory span of a goldfish is a few seconds:", correctAnswer: false))

        list.append(question(question: "The colour red doesn't anger a bull:", correctAnswer: true))

        list.append(question(question: "Humans evolved from chimpanzees:", correctAnswer: true))

        list.append(question(question: "6 cows, 9 chickens and 12 humans have 66 legs:", correctAnswer: false))
        list.append(question(question: "Humans have 5 senses:", correctAnswer: true))
        list.append(question(question: "Hair does not continue to grow after you die:", correctAnswer: false))
        list.append(question(question: "Alcohol directly kills brain cells:", correctAnswer: true))
        list.append(question(question: "Eating less than an hour before swimming causes cramps:", correctAnswer: true))

    }

}
