//
//  AddnewappointmentViewController.swift
//  PPTest-myapp
//
//  Created by cscoi017 on 2016. 2. 22..
//  Copyright © 2016년 Hyeon. All rights reserved.
//

import UIKit

class AddnewappointmentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var starttime: UIDatePicker!
    
    
    
    
    @IBOutlet weak var finishtime: UIDatePicker!

    @IBAction func addNewAppointment(sender: AnyObject) {
        let time1_1 = Time(date:25, hour:13)
        let time1_2 = Time(date:25, hour:17)
        let newAppointment = Appointment(starttime: time1_1, finishtime: time1_2)
        if let presentingVC = self.presentingViewController as? UINavigationController, let listVC = presentingVC.topViewController as? Table1 {
            listVC.insertNewAppointment(newAppointment)
        }
        
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
