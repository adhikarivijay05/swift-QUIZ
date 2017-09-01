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
        let item = question(question: "is Swift awesome language?", correctAnswer: true)
        list.append(item)
        
        list.append(question(question: "Swift launch in 2017", correctAnswer: false))
        
        list.append(question(question: "python is superset of swift", correctAnswer: false))
        list.append(question(question: "apple founder was steav jobs", correctAnswer: true))
        list.append(question(question: "objective c was apple first language", correctAnswer: true))
        list.append(question(question: "playgrounds can make projects", correctAnswer: false))
        
    }

}
