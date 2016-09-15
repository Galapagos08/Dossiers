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
        
        button1.setTitle((organization?.operatives)![0].name, for: .normal)
        button2.setTitle((organization?.operatives)![1].name, for: .normal)
        button3.setTitle((organization?.operatives)![2].name, for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}

