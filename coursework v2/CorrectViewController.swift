//
//  CorrectViewController.swift
//  coursework 
//
//  Created by Deep barchha on 23/02/2017.
//  Copyright © 2017 Deep. All rights reserved.
//

import UIKit

class CorrectViewController: UIViewController {

    @IBAction func goback(_ sender: UIButton) {
        performSegue(withIdentifier: "Main", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
