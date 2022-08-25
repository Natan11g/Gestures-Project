//
//  ViewController.swift
//  Gestures Project
//
//  Created by Natan Gluszko on 29/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelFries: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestures = UITapGestureRecognizer(target: self, action: #selector(switchImage))
        imageView.addGestureRecognizer(gestures)
    }

    
    @objc func switchImage() {
        
        if imageView.image == UIImage(named: "french fries") {
            imageView.image = UIImage(named: "waffle fries")
            labelFries.text = "Waffle Fries"
        } else {
            imageView.image = UIImage(named: "french fries")
            labelFries.text = "French Fries"
        }
    }
}

