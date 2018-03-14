//
//  ViewController.swift
//  NorthEastSouthWest
//
//  Created by Maria Stezhko on 3/13/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let txt = sender as! String
        let secondVC = segue.destination as! SecondVC
        secondVC.txt = txt
        secondVC.delegate = self
    }

    @IBAction func southButtonPressed(_ sender: UIButton) {
        let txt = sender.titleLabel?.text
        performSegue(withIdentifier: "showSegue", sender: txt)
    }
    @IBAction func eastButtonPressed(_ sender: UIButton) {
        let txt = sender.titleLabel?.text
        performSegue(withIdentifier: "showSegue", sender: txt)
    }
    @IBAction func westButtonPressed(_ sender: UIButton) {
        let txt = sender.titleLabel?.text
        performSegue(withIdentifier: "showSegue", sender: txt)
    }
    @IBAction func northButtonPressed(_ sender: UIButton) {
        let txt = sender.titleLabel?.text
        performSegue(withIdentifier: "showSegue", sender: txt)
    }
    
}

extension MainVC: SecondVCDelegate {
    func dismissSecondVC() {
        dismiss(animated: true, completion: nil)
    }
}
