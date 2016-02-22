//
//  table1.swift
//  PPTest-myapp
//
//  Created by cscoi017 on 2016. 2. 18..
//  Copyright © 2016년 Hyeon. All rights reserved.
//

import UIKit

class Table1:UITableViewController{
        
        //ViewController-Scene LifeCycle
    let time1_1 = Time(date:9, hour:12)
    let time1_2 = Time(date:9, hour:15)
    let time2_1 = Time(date:10, hour:9)
    let time2_2 = Time(date:10, hour:18)
    let time3_1 = Time(date:11, hour:10)
    let time3_2 = Time(date:11, hour:15)
    
    var firstApp:Appointment!
    var secondApp:Appointment!
    var thirdApp:Appointment!
    var listApp:Array<Appointment> = []
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
           
            self.navigationItem.leftBarButtonItem = self.editButtonItem()
            
            // let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
           // self.navigationItem.rightBarButtonItem = addButton
            
            
            firstApp = Appointment(starttime: time1_1, finishtime: time1_2)
            secondApp = Appointment(starttime: time2_1, finishtime: time2_2)
            thirdApp = Appointment(starttime: time3_1, finishtime: time3_2)
            listApp += [firstApp, secondApp, thirdApp]
            
        }
        
        override func viewWillAppear(animated: Bool) {
            
            super.viewWillAppear(animated)
        }
        
        
        override func viewDidAppear(animated: Bool) {
            
            super.viewDidAppear(animated)
        }
        
        override func viewWillDisappear(animated: Bool) {
            
            super.viewWillDisappear(animated)
        }
        
        override func viewDidDisappear(animated: Bool) {
            
            super.viewDidDisappear(animated)
        }
        
        //deprecated, prohibited
        /*override func viewDidUnload() {
        super.viewDidLoad()
        }*/
    func insertNewAppointment(newAppointment:Appointment) {
        listApp.append(newAppointment)
        tableView.reloadData()
    }
        
        override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return listApp.count
        }
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath)
            
            
            
            
            print("indexPath = section:\(indexPath.section) , row:\(indexPath.row)")
            
            let appointment = listApp[indexPath.row]
            
            let composedString = "\(appointment.starttime.date)일 - \(appointment.starttime.hour)시 ~ \(appointment.finishtime.date)일 - \(appointment.finishtime.hour)시"
            
            cell.textLabel!.text = "\(appointment.starttime.date)일 - \(appointment.starttime.hour)시 ~ \(appointment.finishtime.date)일 - \(appointment.finishtime.hour)시"//String(ListApp[indexPath.row].starttime.date)
            return cell
        }
        
        override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "Section #\(section)"
        }
        
        
        override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
            return "Footer"
        }
}