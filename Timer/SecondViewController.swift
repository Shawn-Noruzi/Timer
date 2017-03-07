//
//  SecondViewController.swift
//  Timer
//
//  Created by shawn nor on 2017-03-06.
//  Copyright © 2017 shawn nor. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //This value is passed from ViewController
    var Timer_Value: Int!
    //Global variable Begin_Timer
    var Begin_Timer = Timer()
    
    @IBOutlet weak var TimeValueDisplay: UILabel!
    
    
    @IBAction func STOP(_ sender: Any) {
    }
    
    @IBAction func START(_ sender: Any) {
        
       //Begins the timer to countdown from the given value TimerCounter supplies it with.
      Begin_Timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondViewController.TimerCounter), userInfo: nil, repeats: true )
    }

    func TimerCounter() {
        //Display time Minutes -> seconds for now. 
        //**Change to minute timer + seconds later.
        Timer_Value = 60*Timer_Value
        Timer_Value = Timer_Value - 1
        TimeValueDisplay.text = String(Timer_Value)
        
        //When the timer hits 0, stop counting down.
        if (Timer_Value == 0){
            Begin_Timer.invalidate()
        }
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
