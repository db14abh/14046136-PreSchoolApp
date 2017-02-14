//
//  ViewController.swift
//  coursework
//
//  Created by Deep barchha on 09/02/2017.
//  Copyright © 2017 Deep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomno2: UILabel!
    
    @IBOutlet weak var randomno1: UILabel!
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var correctAnswer: UILabel!
    
    
    @IBAction func Numbers(_ sender: UIButton)
        
    {
        label.text = String(sender.tag-1)
        //label.text = label.text! + String(sender.tag-1)
        checkAnswer()

            }
    
    func random(){
    randomno1.text = String(arc4random_uniform(5))
    randomno2.text = String(arc4random_uniform(5))
    }
    
    
    func checkAnswer() {
        let valueA = Int(randomno1.text!)
        let valueB = Int(randomno2.text!)
        let outputValue = (valueA! + valueB!)
        if outputValue == Int(label.text!) {
            correctAnswer.text = "You Are Correct!"
            //correctAnswer.text = ""
            viewDidLoad()
            
        }
    
        else{
        correctAnswer.text = "Wrong!"
        //correctAnswer.text = ""
    }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        random()
        
        // Do any additional setup after loading the view, typically from a nib.
        random()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

