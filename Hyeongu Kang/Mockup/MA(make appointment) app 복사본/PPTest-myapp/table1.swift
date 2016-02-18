//
//  table1.swift
//  PPTest-myapp
//
//  Created by cscoi017 on 2016. 2. 18..
//  Copyright © 2016년 Hyeon. All rights reserved.
//

import UIKit

class table1:UITableViewController{
        
        //ViewController-Scene LifeCycle
    
    
    
    
    let time1_1 = Time(date:9, hour:12)
    let time1_2 = Time(date:9, hour:15)
    let time2_1 = Time(date:10, hour:9)
    let time2_2 = Time(date:10, hour:18)
    let time3_1 = Time(date:11, hour:10)
    let time3_2 = Time(date:11, hour:15)
    
    
    var ListApp:Array<Appointment> = []
    
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            let FirstApp = Appointment(starttime: time1_1, finishtime: time1_2)
            let SecondApp = Appointment(starttime: time2_1, finishtime: time2_2)
            let ThirdApp = Appointment(starttime: time3_1, finishtime: time3_2)
            
            ListApp += [FirstApp, SecondApp, ThirdApp]
            
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
        
        
        override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return ListApp.count
        }
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath)
            print("indexPath = section:\(indexPath.section) , row:\(indexPath.row)")
            cell.textLabel!.text = String(ListApp[indexPath.row].starttime.date)
            return cell
        }
        
        override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "Section #\(section)"
        }
        
        
        override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
            return "Footer"
        }
}