//
//  DossierViewController.swift
//  Dossiers
//
//  Created by Dan Esrey on 2016/08/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import UIKit

class DossierViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var locationField: UITextField!
    @IBOutlet var associatesField: UITextField!
    @IBOutlet var occupationField: UITextField!
    @IBOutlet var languagesField: UITextField!
    var agent: Dossier?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = agent?.name
        self.nameField.text = agent?.name
        self.locationField.text = agent?.lastKnownLocation
        self.associatesField.text = agent?.knownAssociates
        self.occupationField.text = agent?.occupation
        self.languagesField.text = agent?.languagesSpoken
     }
    
    
}
