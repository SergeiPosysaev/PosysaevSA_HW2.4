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
                                   password: UserAndPassword.setNameAndPassword().1,
                                   realName: "Sergei Posysaev")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordField.returnKeyType = .done
        usernameField.returnKeyType = .next
        
        usernameField.delegate = self
        passwordField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cleartextField()
    }
    
    private func alertAction(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.cleartextField()
            if self.usernameField.text != self.userData.name {
                self.cleartextField(notEraseName: false)
                self.usernameField.becomeFirstResponder()
            } else {
                self.passwordField.becomeFirstResponder()
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func cleartextField(notEraseName: Bool = true) {
        if notEraseName {
            passwordField.text = ""
        } else {
            usernameField.text = ""
            passwordField.text = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
                
        let destinationVC = tabBarController.viewControllers?.first as! MainViewController
        destinationVC.userName = userData.realName
        
        //let aboutVC = tabBarController.viewControllers?[2] as! AboutViewController
//
//        guard let navigationController = segue.destination as? UINavigationController else { return }
//        navigationController.title = "New title"
       
        // let galeryVC = navigationController.viewControllers.first as! GaleryViewController
       // galeryVC.userName = userData.realName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 0 {
            self.passwordField.becomeFirstResponder()
            return true
        } else if textField.tag == 1 {
            self.view.endEditing(true)
            loginButton()
        }
        return false
    }
        
    //Actions
    @IBAction func forgotUserNameButton() {
        alertAction(with: "Warning!", and: "Login is: \(userData.name)")
    }
    
    @IBAction func forgotPassButton() {
        alertAction(with: "Warning!", and: "Password is: \(userData.password)")
    }
    
    @IBAction func loginButton() {
        if usernameField.text != userData.name || passwordField.text != userData.password {
            alertAction(with: "Error!", and: "Your login (or password) is not right!")
            cleartextField()
            passwordField.becomeFirstResponder()
        } else {
            performSegue(withIdentifier: "showMainView", sender: nil)
        }
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        cleartextField(notEraseName: false)
    }
}

