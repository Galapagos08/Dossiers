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
        
        let navController = window!.rootViewController as! UINavigationController
        let orgVC = navController.topViewController as! OrganizationViewController
        orgVC.organization = organization
        
        return true
    }

}

