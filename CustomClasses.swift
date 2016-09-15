//
//  CustomClasses.swift
//  Dossiers
//
//  Created by Dan Esrey on 2016/08/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import Foundation

class Dossier {
    let name: String
    var lastKnownLocation: String?
    var knownAssociates: Array<String>?
    var occupation: String
    var languagesSpoken: Array<String>?
    
    init(name: String, lastKnownLocation: String?, knownAssociates: Array<String>?, occupation: String, languagesSpoken: Array<String>?) {
        self.name = name
        self.lastKnownLocation = lastKnownLocation
        self.knownAssociates = knownAssociates
        self.occupation = occupation
        self.languagesSpoken = languagesSpoken
    }
}

extension Dossier : CustomStringConvertible {
    var description: String {
        get {
            return "\(self.name)"
        }
    }

}

class Organization {
    let name: String
    var operatives: Array<Dossier>
    
    init(name: String, operatives: Array<Dossier>) {
        self.name = name
        self.operatives = operatives
    }
}

