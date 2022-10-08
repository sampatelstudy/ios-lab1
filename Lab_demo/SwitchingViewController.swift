//
//  SwitchingViewController.swift
//  Lab_demo
//
//  Created by Samir  on 2022-10-07.
//

import UIKit

class SwitchingViewController: UIViewController {

    var yellowViewController:YellowViewController!
    var blueViewController:BlueViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         blueViewController =
            storyboard?.instantiateViewController(withIdentifier: "Blue")
            as! BlueViewController

            blueViewController.view.frame = view.frame
            switchViewController(from: nil, to: blueViewController)
    }
    
    private func switchViewController(from fromVC:UIViewController?,
                                          to toVC:UIViewController?) {
            if fromVC != nil {
                fromVC!.willMove(toParent: nil)
                fromVC!.view.removeFromSuperview()
                fromVC!.removeFromParent()
            }
            
            if toVC != nil {
                self.addChild(toVC!)
                self.view.insertSubview(toVC!.view, at: 0)
                toVC!.didMove(toParent: self)
            }
        }
    
    @IBAction func switch_view_toolbar_btn(_ sender: UIBarButtonItem) {
        
        if yellowViewController?.view.superview == nil {
                    if yellowViewController == nil {
                        yellowViewController =
                            storyboard?.instantiateViewController(withIdentifier: "Yellow")
                            as? YellowViewController
                    }
                } else if blueViewController?.view.superview == nil {
                    if blueViewController == nil {
                        blueViewController =
                            storyboard?.instantiateViewController(withIdentifier: "Blue")
                            as? BlueViewController
                    }
                }

            UIView.beginAnimations("View Flip", context: nil)
               UIView.setAnimationDuration(0.4)
               UIView.setAnimationCurve(.easeInOut)
        
                // Switch view controllers
                if blueViewController != nil
                    && blueViewController!.view.superview != nil {
                    yellowViewController.view.frame = view.frame
                    switchViewController(from: blueViewController,
                                         to: yellowViewController)
                } else {
                    blueViewController.view.frame = view.frame
                    switchViewController(from: yellowViewController,
                                         to: blueViewController)
                }
        
    }
    
}
