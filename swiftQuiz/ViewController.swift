//
//  ViewController.swift
//  swiftQuiz
//
//  Created by Vijay Adhikari on 01/09/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var score: UILabel!

    @IBOutlet weak var progressView: UILabel!
    @IBOutlet weak var correctAnswers: UILabel!
    @IBOutlet weak var question: UILabel!
    
    let allquestion = questionList()
    
    var pickedAnswer : Bool = false
    
    var questionnumber : Int = 0
    
    var yourScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        startOver()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerClicked(_ sender: UIButton) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else{
        pickedAnswer = false
        }
        checkAnswer()
        
        questionnumber = questionnumber + 1
        
        nextQuestion()
        updateUI()
        
    }
    
    
    func updateUI(){
        
        correctAnswers.text = "\(questionnumber)/6"
        
    
        score.text = "\(yourScore)"
        print(progressView.frame.size.width)
        print((view.frame.size.width/5) * CGFloat(questionnumber + 1))
        
        progressView.frame.size.width = (view.frame.size.width/5) * CGFloat(questionnumber + 1)
        print(progressView.frame.size.width)
        self.view.layoutIfNeeded()

    }
    
    func nextQuestion(){
        print(questionnumber)
        if questionnumber <= 5 {
            question.text = allquestion.list[questionnumber].questionText
        }
        else{
            
            let alert = UIAlertController(title: "End Quiz", message: "want to restart", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Re--Start", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
            
        questionnumber = 0
        }

    
    }
    
    func checkAnswer(){
        
        let correctAnswer = allquestion.list[questionnumber].answer
        
        if correctAnswer == pickedAnswer {
            print("you are correct")
            yourScore += 10
        }else{
            print("you lose")
            yourScore -= 10
        }
        
    }
    
    func startOver(){
        let firstQuestion = allquestion.list[questionnumber]
        question.text = firstQuestion.questionText
        
        
        score.text = "\(yourScore)"
    }

}

