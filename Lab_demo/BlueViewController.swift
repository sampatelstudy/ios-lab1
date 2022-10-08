//
//  BlueViewController.swift
//  Lab_demo
//
//  Created by Samir  on 2022-10-07.
//

import UIKit

class BlueViewController: UIViewController {
    @IBAction func blue_btn_pressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Blue View Button Pressed",
                                              message: "You pressed the button on the blue view",
                                              preferredStyle: .alert)
                let action = UIAlertAction(title: "Yes, I did", style: .default,
                                           handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
