//
//  YellowViewController.swift
//  Lab_demo
//
//  Created by Samir  on 2022-10-07.
//

import UIKit

class YellowViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Yellow_btn_pressed(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Yellow View Button Pressed",
                                      message: "You pressed the button on the yellow view",
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes, I did", style: .default,
                                   handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
}

