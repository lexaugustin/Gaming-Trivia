//
//  ViewController.swift
//  Gaming Trivia
//
//  Created by Alexander Augustin on 3/27/18.
//  Copyright © 2018 Alexander Augustin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionCount: UILabel!
    @IBOutlet weak var scoreCount: UILabel!
    @IBOutlet weak var progressionBar: UIView!
    @IBOutlet weak var questionView: UILabel!
    
    //Buttons outlet
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let listOfQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var answerChoice: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateQuestion()
//        updateViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
//        if sender.tag == 1 { print("a") }
//        else if sender.tag == 2 { print("b") }
//        else if sender.tag == 3 { print("c") }
//        else { print("d") }
        
        if (sender.tag == answerChoice) {
            print("correct")
            score += 1
        }
        else {
            print("wrong")
        }
        
        questionNumber += 1
        updateQuestion()
    }
    
    
    func updateQuestion (){
        if (questionNumber <= listOfQuestions.questionList.count - 1) {
            questionView.text = listOfQuestions.questionList[questionNumber].question
            optionA.setTitle(listOfQuestions.questionList[questionNumber].optionA, for: UIControlState.normal)
            optionB.setTitle(listOfQuestions.questionList[questionNumber].optionB, for: UIControlState.normal)
            optionC.setTitle(listOfQuestions.questionList[questionNumber].optionC, for: UIControlState.normal)
            optionD.setTitle(listOfQuestions.questionList[questionNumber].optionD, for: UIControlState.normal)
            answerChoice = listOfQuestions.questionList[questionNumber].correctAnswer
            
            updateProgression()
        }
            
        else {
            let alert = UIAlertController (title: "End Of The Quiz", message: "Would you like to start over", preferredStyle: .alert)
            
            let restartQuestions = UIAlertAction (title: "YES", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartQuestions)
            present(alert, animated: true, completion: nil)
        }
        
        updateScore()
    }
    
     func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    
    func updateScore() {
        scoreCount.text = "Score: \(score)"
    }
    
    func updateProgression(){
        questionCount.text = "\(questionNumber + 1)"
        progressionBar.frame.size.width = (view.frame.size.width / CGFloat(listOfQuestions.questionList.count) * CGFloat(questionNumber + 1))
    }
    
}
