//
//  AppDelegate.swift
//  Dossiers
//
//  Created by Dan Esrey on 2016/08/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let agentBond = Dossier(name: "James Bond", lastKnownLocation: "London", knownAssociates: ["Q", "Moneypenney", "Felix Leiter"], occupation: "British Secret Service", languagesSpoken: ["English"])
        
        
        let agentCoulson = Dossier(name: "Phil Coulson", lastKnownLocation: "S.H.I.E.L.D. Headquarters", knownAssociates: ["Nick Fury", "Iron Man"], occupation: "S.H.I.E.L.D. Agent", languagesSpoken: ["English"])
        
        let agentBristow = Dossier(name: "Sydney Bristow", lastKnownLocation: "Los Angeles", knownAssociates: ["Michael Vaughn", "Will Tippin"], occupation: "CIA Agent", languagesSpoken: ["English"])
       
        let operatives = [agentBond, agentCoulson, agentBristow]
        
        let organization = Organization(name: "The Syndicate", operatives: operatives)
        print(organization.name)
        
        let navController = window!.rootViewController as! UINavigationController
        let orgVC = navController.topViewController as! OrganizationViewController
        orgVC.organization = organization
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

