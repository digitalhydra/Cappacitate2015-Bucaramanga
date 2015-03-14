//
//  ViewController.swift
//  JuegoTap
//
//  Created by Developer Cymetria on 14/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet var timerLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
    

    
    var count = 0
    var seconds = 0
    var timer = NSTimer()
    
    func substractTime(){
        seconds--
        timerLabel.text = "Tiempo: 00:\(seconds)"
        if (seconds == 0)
        {
            timer.invalidate()
            let alert = UIAlertController(title: "El tiempo termino!!!", message: "Tu puntaje fue de \(count)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(
                title: "Quieres volver a jugar??",
                style: UIAlertActionStyle.Default, handler: {
                    action in self.beginGame()
                })
            )
            presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    func beginGame(){
        seconds = 30
        count = 0
        timerLabel.text = "Tiempo: 00:00"
        scoreLabel.text = "0"
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("substractTime"), userInfo: nil, repeats: true)
    }
    @IBAction func buttonPressed(sender: AnyObject) {
        count++;
        scoreLabel.text = "\(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beginGame();
        var usuario:Usuario = Usuario()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

