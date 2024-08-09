//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Dilara Akdeniz on 9.08.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isKarakter1 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true //Picture is clickable
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        
        if isKarakter1 == true {
            imageView.image = UIImage(named: "karakter2")
            myLabel.text = "karakter2"
            isKarakter1 = false
        } else {
            imageView.image = UIImage(named: "karakter1")
            myLabel.text = "karakter1"
            isKarakter1 = true
        }
    }


}

