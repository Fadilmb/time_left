//
//  ViewController.swift
//  Time_left
//
//  Created by fadil boodoo on 14/10/2017.
//  Copyright © 2017 fadil boodoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDisplay: UILabel!
    @IBOutlet weak var dayLeftDisplay: UILabel!
    @IBOutlet weak var hourLeftDisplay: UILabel!
    @IBOutlet weak var minuteLeftDisplay: UILabel!
    @IBOutlet weak var secondLeftDisplay: UILabel!
    @IBOutlet weak var dateLeftDisplay: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculate() {
        let dateOver = Date(timeIntervalSince1970: 2749852800)
        dateLeftDisplay.text = String(describing: dateOver)
        var dayLeft = 2749852800 - Date().timeIntervalSince1970
        var hourLeft = dayLeft.truncatingRemainder(dividingBy: 86400)
        var minuteLeft = hourLeft.truncatingRemainder(dividingBy: 3600)
        var secondLeft = minuteLeft.truncatingRemainder(dividingBy: 60)
        dayLeft = (dayLeft / 86400 ).rounded(.towardZero)
        hourLeft = (hourLeft / 3600).rounded(.towardZero)
        minuteLeft = (minuteLeft / 60).rounded(.towardZero)
        labelDisplay.text = "Time left until your death"
        dayLeftDisplay.text = String(Int(dayLeft)) + "days"
        hourLeftDisplay.text = String(Int(hourLeft)) + "hours"
        minuteLeftDisplay.text = String(Int(minuteLeft)) + "minutes"
        secondLeftDisplay.text = String(Int(secondLeft)) + "secondes"
    }
}

