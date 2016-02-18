//
//  AppDelegate.swift
//  PPTest-myapp
//
//  Created by cscoi017 on 2016. 1. 20..
//  Copyright © 2016년 Hyeon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let time1_1 = Time(date:9, hour:12)
        let time1_2 = Time(date:9, hour:15)
        let time2_1 = Time(date:10, hour:9)
        let time2_2 = Time(date:10, hour:18)
        let time3_1 = Time(date:11, hour:10)
        let time3_2 = Time(date:11, hour:15)
        let time4_1 = Time(date:11, hour:17)
        let time4_2 = Time(date:11, hour:20)
        let time5_1 = Time(date:12, hour:9)
        let time5_2 = Time(date:12, hour:20)
        let time6_1 = Time(date:13, hour:9)
        let time6_2 = Time(date:13, hour:16)
        let time7_1 = Time(date:14, hour:9)
        let time7_2 = Time(date:16, hour:16)
        

        let app1 = Appointment(starttime:time1_1, finishtime:time1_2)
        let app2 = Appointment(starttime:time2_1, finishtime:time2_2)
        let app3 = Appointment(starttime:time3_1, finishtime:time3_2)
        let app4 = Appointment(starttime:time4_1, finishtime:time4_2)
        let app5 = Appointment(starttime:time5_1, finishtime:time5_2)
        let app6 = Appointment(starttime:time6_1, finishtime:time6_2)
        let app7 = Appointment(starttime:time7_1, finishtime:time7_2)


    
        var MyAppointments : Array<Appointment> = []
        MyAppointments.append(app1)
        MyAppointments.append(app2)
        MyAppointments.append(app3)
        MyAppointments.append(app4)
        MyAppointments.append(app5)
        MyAppointments.append(app6)
        MyAppointments.append(app7)
        
        
        
        let me = User(name:"Hyeon")
        me.appointments = MyAppointments
        
        
        
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

