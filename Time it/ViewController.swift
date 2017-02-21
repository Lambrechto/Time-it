//
//  ViewController.swift
//  Time it
//
//  Created by Daniel Lambrecht on 21/02/2017.
//  Copyright © 2017 Lambrecht Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    let layerRadius: CGFloat = 6

    override func viewDidLoad() {
        super.viewDidLoad()
        // Rounded corners on views
        view1.layer.cornerRadius = layerRadius
        view2.layer.cornerRadius = layerRadius
        view3.layer.cornerRadius = layerRadius
        view4.layer.cornerRadius = layerRadius
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

