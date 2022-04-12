//
//  ViewController.swift
//  LabLogIn
//
//  Created by Komal Kainth on 2022-04-10.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var UITextField: UITextField!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {
            return}
        if sender == forgotUsernameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = UITextField.text
        }

    }
    
    
    @IBAction func forgotUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUsernameButton)
    }
    
    
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    }
    
    
    
}

