//
//  QuestionBank.swift
//  Gaming Trivia
//
//  Created by Alexander Augustin on 3/31/18.
//  Copyright © 2018 Alexander Augustin. All rights reserved.
//

import Foundation

class QuestionBank {
    var questionList = [Question]()
    
    init(){
        questionList.append(Question(text: "Who is the main antagonist of Nintendo's Mario game Franchise?",
                                     choiceA: "Link",
                                     choiceB: "Samus",
                                     choiceC: "Bowser",
                                     choiceD: "Luidgi",
                                     rightAnswer: 3))
        
        questionList.append(Question(text: "What year was Sony's PlayStation Vita (PS Vita), handheld game console, released in North America?",
                                     choiceA: "2013",
                                     choiceB: "2012",
                                     choiceC: "2010",
                                     choiceD: "2014",
                                     rightAnswer: 2))
        
        questionList.append(Question(text: "When was Microsoft's Xbox One X console released in North America?",
                                     choiceA: "November 2016",
                                     choiceB: "November 2015",
                                     choiceC: "November 2018",
                                     choiceD: "November 2017",
                                     rightAnswer: 4))
        
        questionList.append(Question(text: "In the Nintendo's Mario video game franchise, Mario's adventures generally focus upon rescuing which princess?",
                                     choiceA: "Peach",
                                     choiceB: "Jasmine",
                                     choiceC: "Elsa",
                                     choiceD: "Pocahontas",
                                     rightAnswer: 1))
        
        questionList.append(Question(text: "In which game did Mario Bros make his first appearance?",
                                     choiceA: "Mario Kart",
                                     choiceB: "Super Mario Bros",
                                     choiceC: "Donkey Kong",
                                     choiceD: "Super Smash Bros",
                                     rightAnswer: 3))
        
        questionList.append(Question(text: "What year was the PlayStation 3 console released in North America?",
                                     choiceA: "2009",
                                     choiceB: "2006",
                                     choiceC: "2010",
                                     choiceD: "2007",
                                     rightAnswer: 4))

    }
    
}
