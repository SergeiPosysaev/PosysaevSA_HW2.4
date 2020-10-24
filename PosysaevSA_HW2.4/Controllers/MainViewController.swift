//
//  MainViewController.swift
//  PosysaevSA_HW2.4
//
//  Created by Sergei Posysaev on 24.10.2020.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var labelWelcome: UILabel!
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        labelWelcome.text = "Welcome, \(userName ?? "")!"
    }
    

    @IBAction func logOutButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
