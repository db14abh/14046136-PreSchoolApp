//
//  CorrectViewController.swift
//  coursework 
//
//  Created by Deep barchha on 23/02/2017.
//  Copyright © 2017 Deep. All rights reserved.
//

import UIKit
import AVFoundation

class CorrectViewController: UIViewController {

    @IBAction func goback(_ sender: UIButton) {
        performSegue(withIdentifier: "Main", sender: self)
        
    }
    
    @IBOutlet weak var thumbs_up: UIImageView!
    
    
    @IBOutlet weak var taponscreen: UIImageView!
    
    
    
    
    
    
    
    
    
    /*func GifImages(){
        let gifData = try? Data(contentsOf: Bundle.main.url(forResource: "celebrations", withExtension: "gif")!)
        let gif = UIImage.gifWithData(data: gifData! as NSData)
        let imageView = UIImageView(image: gif)
        imageView.frame = CGRect(x: 0.0, y:0.0, width: 154.0, height: 128.0)
        view.addSubview(imageView)
        
            }
*/
    
    
    //clapping sound 
    var csMusic = AVAudioPlayer()
    func clappingsound(){
    do {
        csMusic = try AVAudioPlayer (contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource:"applause6", ofType:"mp3")!))
        csMusic.prepareToPlay()
    }
    catch {
    print("ClappingSound")
    }
    csMusic.play()
    }
    
    
    
    
    
    func ThumbAnimation() {
        thumbs_up.center.y = thumbs_up.center.y - 10
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseIn, .allowUserInteraction, .repeat, .autoreverse], animations: {
            self.thumbs_up.center.y = self.thumbs_up.center.x + 10
        }
        , completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clappingsound()
        //GifImages()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ _animated: Bool) {
        super.viewDidAppear(_animated)
        FadeAnimation()
        ThumbAnimation()
    }
    
    
    func FadeAnimation(){
        UIView.animate (withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.taponscreen.alpha = 0
        }, completion:nil)
        
        }
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



