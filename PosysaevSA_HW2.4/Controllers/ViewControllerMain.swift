//
//  ViewControllerMain.swift
//  PosysaevSA_HW2.4
//
//  Created by Sergei Posysaev on 23.10.2020.
//

import UIKit

class ViewControllerMain: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        usernameField.text = ""
        passwordField.text = ""
    }

    @IBAction func forgorUserNameButton() {
        
    }
    
    @IBAction func forgotPassButton() {
        
    }
    
    @IBAction func loginButton() {
        
    }
    
    private func alertAction(with title: String, and message: String) {
        let alert = UIAlertController(title: "Внимание!", message: "Пароль", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "", style: .default) { _ in
            //действия при нажитии на ок
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //обработка кнопки ретерн на клавиатуре
        return true
    }
}

