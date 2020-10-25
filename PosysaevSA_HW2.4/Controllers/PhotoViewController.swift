//
//  PhotoViewController.swift
//  PosysaevSA_HW2.4
//
//  Created by Sergei Posysaev on 25.10.2020.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
    }
    
}
