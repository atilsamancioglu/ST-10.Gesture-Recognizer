//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Atil Samancioglu on 17/06/2017.
//  Copyright © 2017 Atil Samancioglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var isJamesOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic() {
        
        if isJamesOn == true {
            imageView.image = UIImage(named: "kirk.jpg")
            nameLabel.text = "Kirk Hammett"
            isJamesOn = false
        } else if isJamesOn == false {
            imageView.image = UIImage(named: "james.jpg")
            nameLabel.text = "James Hetfield"
            isJamesOn = true
        }
        
        
        
    }
    

}

