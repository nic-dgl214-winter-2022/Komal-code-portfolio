//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Komal Kainth

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var segueSwitch: UISwitch!
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
      if segueSwitch.isOn {
                performSegue(withIdentifier: "Yellow", sender: nil)
            }

    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
                  performSegue(withIdentifier: "Green", sender: nil)
              }
    }
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
}




