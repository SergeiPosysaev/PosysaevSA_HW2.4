//
//  ViewControllerMain.swift
//  PosysaevSA_HW2.4
//
//  Created by Sergei Posysaev on 23.10.2020.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let userData = UserAndPassword(name: UserAndPassword.setNameAndPassword().0,
                                   password: UserAndPassword.setNameAndPassword().1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cleartextField()
    }
    
    private func alertAction(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.cleartextField()
            self.usernameField.resignFirstResponder()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func cleartextField() {
        usernameField.text = ""
        passwordField.text = ""
    }
    
    //Actions
    @IBAction func forgorUserNameButton() {
        alertAction(with: "Warning!", and: "Login is: \(userData.name)")
    }
    
    @IBAction func forgotPassButton() {
        alertAction(with: "Warning!", and: "Password is: \(userData.password)")
    }
    
    @IBAction func loginButton() {
        
    }
    
}

