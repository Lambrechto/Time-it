//
//  SecondVC.swift
//  Time it
//
//  Created by Daniel Lambrecht on 26/02/2017.
//  Copyright © 2017 Lambrecht Design. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
  
    
    @IBOutlet weak var scoreLabel: UILabel!

    @IBAction func playAgainButton(_ sender: Any) {
        
        
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(score)/6"

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
