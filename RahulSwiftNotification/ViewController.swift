//
//  ViewController.swift
//  RahulSwiftNotification
//
//  Created by AS185 on 16/07/18.
//  Copyright © 2018 AS185. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let localNotification = UILocalNotification()
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 5) as Date
        localNotification.alertBody = "new Blog Posted at iOScreator.com"
        localNotification.timeZone = NSTimeZone.default
        localNotification.applicationIconBadgeNumber = UIApplication.shared.applicationIconBadgeNumber + 1
        
        UIApplication.shared.scheduleLocalNotification(localNotification)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

