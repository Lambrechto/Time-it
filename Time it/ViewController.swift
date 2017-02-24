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

    // Buttons Up
    @IBAction func secondUp(_ sender: UIButton) {
        move("secondUp")
    }
    @IBAction func thirdUp(_ sender: Any) {
        move("thirdUp")
    }
    @IBAction func fourthUp(_ sender: Any) {
        move("fourthUp")
    }
    
    // Buttons Down
    @IBAction func firstDown(_ sender: Any) {
        move("firstDown")
    }
    @IBAction func secondDown(_ sender: Any) {
        move("secondDown")
    }
    @IBAction func thirdDown(_ sender: Any) {
        move("thirdDown")
    }
    
    
    
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
    
    // Events placement
    var firstEvent = allEvents[0]
    var secondEvent = allEvents[1]
    var thirdEvent = allEvents[2]
    var fourthEvent = allEvents[3]
    
    var eventPlacing = [allEvents[0], allEvents[1]]
    
    // answer
    var answer: Bool = false
    
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

    
    
    func move(_ sender: String) {
        if sender == "secondUp" || sender == "firstDown" {
            swap(&eventPlacing[0], &eventPlacing[1])
        } else if sender == "thirdUp" || sender == "secondDown"{
            swap(&eventPlacing[1], &eventPlacing[2])
        } else if sender == "fourthUp" || sender == "thirdDown" {
            swap(&eventPlacing[2], &eventPlacing[3])
        }
        
        
        firstLabel.text = eventPlacing[0].eventDescription
        secondLabel.text = eventPlacing[1].eventDescription
        thirdLabel.text = eventPlacing[2].eventDescription
        fourthLabel.text = eventPlacing[3].eventDescription
        CheckAnswer()
        
    }
    
    func CheckAnswer() {
        
        if eventPlacing[1].index > eventPlacing[0].index && eventPlacing[2].index > eventPlacing[1].index && eventPlacing[3].index > eventPlacing[2].index {
            answer = true
        } else {
            answer = false
        }
        print(answer)
    
    }
    
    func newRound() {
        // Getting randomnumbers - used to display random events
        everyEvent = allEvents
        var randomNumbers: [Int] = []
        var loopCount = 0
        for _ in 1...4 {
            randomNumbers.append(GKRandomSource.sharedRandom().nextInt(upperBound: (everyEvent.count - loopCount)))
        
            loopCount += 1
        }
        
       
        
        
        // Display events & remove in everyEvent at index to exclude events that has already been used
        firstEvent = everyEvent[randomNumbers[0]]
        firstLabel.text = firstEvent.eventDescription
        everyEvent.remove(at: randomNumbers[0])
        secondEvent = everyEvent[randomNumbers[1]]
        secondLabel.text = secondEvent.eventDescription
        everyEvent.remove(at: randomNumbers[1])
        thirdEvent = everyEvent[randomNumbers[2]]
        thirdLabel.text = thirdEvent.eventDescription
        everyEvent.remove(at: randomNumbers[2])
        fourthEvent = everyEvent[randomNumbers[3]]
        fourthLabel.text = fourthEvent.eventDescription
        everyEvent.remove(at: randomNumbers[3])
        
        eventPlacing = [firstEvent, secondEvent, thirdEvent, fourthEvent]
    }

    
}

