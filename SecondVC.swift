//
//  SecondVC.swift
//  NorthEastSouthWest
//
//  Created by Maria Stezhko on 3/13/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var destinationLabel: UILabel!
    
    var delegate: MainVC?
    var txt = ""
    
    override func viewDidLoad() {
        destinationLabel.text = txt
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        if let d = delegate {
            d.dismissSecondVC()
        }
    }
    
    
}
