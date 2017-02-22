//
//  ViewController.swift
//  Time it
//
//  Created by Daniel Lambrecht on 21/02/2017.
//  Copyright © 2017 Lambrecht Design. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    
    // Views
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    let layerRadius: CGFloat = 4
    
    // labels for events
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    var everyEvent = allEvents
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Rounded corners on views
        view1.layer.cornerRadius = layerRadius
        view2.layer.cornerRadius = layerRadius
        view3.layer.cornerRadius = layerRadius
        view4.layer.cornerRadius = layerRadius
        newRound()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


    
    func newRound() {
        // Getting randomnumbers - used to display random events
        everyEvent = allEvents
        var randomNumbers: [Int] = []
        for _ in 1...4 {
            randomNumbers.append(GKRandomSource.sharedRandom().nextInt(upperBound: 5))
        }
        
        // Display events & remove in everyEvent at index to exclude events that has already been used
        firstLabel.text = everyEvent[randomNumbers[0]].eventDescription
        everyEvent.remove(at: randomNumbers[0])
        secondLabel.text = everyEvent[randomNumbers[1]].eventDescription
        everyEvent.remove(at: randomNumbers[1])
        thirdLabel.text = everyEvent[randomNumbers[2]].eventDescription
        everyEvent.remove(at: randomNumbers[2])
        fourthLabel.text = everyEvent[randomNumbers[3]].eventDescription
        everyEvent.remove(at: randomNumbers[3])
    }

}

