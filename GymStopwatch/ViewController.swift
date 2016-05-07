//
//  ViewController.swift
//  GymStopwatch
//
//  Created by Roshan Rishav on 5/7/16.
//  Copyright © 2016 Roshan Rishav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var Timer = NSTimer()
    
    var time = 0

    @IBOutlet weak var TimerLabel: UILabel!
    
    func Inctimr () {
        
        time += 1
        
        TimerLabel.text = String(time)
        
        
    }
    
    @IBAction func Play(sender: AnyObject) {
        
        Timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.Inctimr), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func Stop(sender: AnyObject) {
        
        Timer.invalidate()
        
        time = 0
        
        TimerLabel.text = "0"
        
        
    }
    
    @IBAction func Pause(sender: AnyObject) {
        
        Timer.invalidate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

