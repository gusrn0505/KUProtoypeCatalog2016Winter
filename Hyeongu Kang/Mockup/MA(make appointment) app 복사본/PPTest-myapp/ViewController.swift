//
//  ViewController.swift
//  PPTest-myapp
//
//  Created by cscoi017 on 2016. 1. 20..
//  Copyright © 2016년 Hyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class User {
    var appointments:Array<Appointment>?
    var name:String
    
    init (name:String){
        self.name = name
    }
}

class Time{
    var year:Int?
    var Month:String?
    var date:Int
    var hour:Int
    
    init (date:Int, hour:Int){
        self.date = date
        self.hour = hour}
}


class Appointment
{   var name:String?
    var starttime:Time
    var finishtime:Time
    var Accompany:String?
    
    init (starttime:Time, finishtime:Time){
        self.starttime = starttime
        self.finishtime = finishtime}
}


/*class Appointments {
    var AppointmentsArray:Array<Appointment> = []
    func add(element:Appointment) {
        AppointmentsArray.append(element)}
    init (_: Appointments){
        self.AppointmentsArray = []
    }*/
    

