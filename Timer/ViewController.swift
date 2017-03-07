//
//  ViewController.swift
//  Timer
//
//  Created by shawn nor on 2017-03-05.
//  Copyright © 2017 shawn nor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Time value to be set by the slider
    var Time_Selected = 30;
    
    //Label for the timer to display Time_Selected
    @IBOutlet weak var Timer_Display: UILabel!

    //This is how users select the duration - also sets Time_Selected to an int value. 
    //Time Slider Value Range [30,240]
    @IBAction func Time_Slider(_ sender: UISlider) {
        Time_Selected = Int(sender.value)
        Timer_Display.text = String(Time_Selected)
    }
    //This button will send us to the SecondViewController to begin the Timer Countdown
    @IBAction func Begin_Session(_ sender: Any) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Prepare the Time value (Duration) to be sent to the second view controller.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let SecondViewController = segue.destination as! SecondViewController
        SecondViewController.Timer_Value = Time_Selected
    }

}

