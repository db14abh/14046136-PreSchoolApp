//
//  ViewController.swift
//  coursework
//
//  Created by Deep barchha on 09/02/2017.
//  Copyright © 2017 Deep. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var randomno2: UILabel!
    
    @IBOutlet weak var randomno1: UILabel!
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var correctAnswer: UILabel!

    @IBOutlet weak var Flowers: UIView!
    @IBOutlet weak var flower1: DraggedImageView!
    @IBOutlet weak var flower2: DraggedImageView!
    @IBOutlet weak var flower3: DraggedImageView!
    @IBOutlet weak var flower4: DraggedImageView!
    @IBOutlet weak var flower5: DraggedImageView!
    @IBOutlet weak var flower6: DraggedImageView!
    @IBOutlet weak var flower7: DraggedImageView!
    @IBOutlet weak var flower8: DraggedImageView!
    @IBOutlet weak var flower9: DraggedImageView!
    @IBOutlet weak var flower10: DraggedImageView!
    
    var BackGroundMusic = AVAudioPlayer()
    
    @IBOutlet weak var SadFace: UIImageView!
    
    @IBOutlet weak var question: UILabel!
    var valueA = Int(arc4random_uniform(5))
    var valueB = Int(arc4random_uniform(5))
    
    @IBAction func Numbers(_ sender: UIButton)
        
    {
        label.text = String(sender.tag-1)
        //label.text = label.text! + String(sender.tag-1)
        checkAnswer()

            }
    
   
    
    
    func checkAnswer() {
        
        let outputValue = (valueA + valueB)
        if outputValue == Int(label.text!) {
            //correctAnswer.text = "You Are Correct!"
            //correctAnswer.text = ""
            BackGroundMusic.stop()
            
            performSegue(withIdentifier: "correct", sender: self)
            //viewDidLoad()
        
        }
    
        else{
            SadFace.isHidden = false
            delay(1){
                self.SadFace.isHidden = true
    }
    }
    }
    
    func delay(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }

    //BackGround Music
    
    func MusicBackground() {
        do{
            BackGroundMusic = try AVAudioPlayer (contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "bensound-funnysong", ofType:"mp3")!))
            
            BackGroundMusic.prepareToPlay()
        }
        catch{
            print("MusicBackground")
        }
        BackGroundMusic.play()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        question.text = String(valueA) +  " + " + String(valueB) + " = " 
        MusicBackground()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    override func viewDidAppear(_ animated: Bool) {
        flower1.center.x = flower1.center.x - 10
        flower2.center.x = flower2.center.x - 10
        flower3.center.x = flower3.center.x - 10
        flower4.center.x = flower4.center.x - 10
        flower5.center.x = flower5.center.x - 10
        flower6.center.x = flower6.center.x - 10
        flower7.center.x = flower7.center.x - 10
        flower8.center.x = flower8.center.x - 10
        flower9.center.x = flower9.center.x - 10
        flower10.center.x = flower10.center.x - 10
        
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseIn, .allowUserInteraction, .repeat, .autoreverse], animations: {
            self.flower1.center.x = self.flower1.center.x + 10
            self.flower2.center.x = self.flower2.center.x + 10
            self.flower3.center.x = self.flower3.center.x + 10
            self.flower4.center.x = self.flower4.center.x + 10
            self.flower5.center.x = self.flower5.center.x + 10
            self.flower6.center.x = self.flower6.center.x + 10
            self.flower7.center.x = self.flower7.center.x + 10
            self.flower8.center.x = self.flower8.center.x + 10
            self.flower9.center.x = self.flower9.center.x + 10
            self.flower10.center.x = self.flower10.center.x + 10
            
        
        
        }, completion: nil)
    
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

}

