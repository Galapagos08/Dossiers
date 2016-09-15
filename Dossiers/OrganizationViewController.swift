//
//  OrganizationViewController.swift
//  Dossiers
//
//  Created by Dan Esrey on 2016/08/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import UIKit

class OrganizationViewController: UIViewController {
 
    @IBOutlet var organizationLabel: UILabel!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button1: UIButton!
    var organization: Organization?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = organization?.name
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    var titleView: UIView? {
        title = organization?.name
    return self.titleView
    }
}

