//
//  DadViewController.swift
//  iKid
//
//  Created by stlp on 5/2/21.
//

import UIKit

class DadViewController: UIViewController {

    
    var firstViewController : DadFirstViewController! = nil
    var secondViewController : DadSecondViewController! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondBuilder()
        firstBuilder()

        switchViewController(nil, to: firstViewController)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchButton(_ sender: Any) {
        switchViews()
    }

    @IBAction func switchViews() {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        if firstViewController != nil &&
            firstViewController?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            secondViewController.view.frame = view.frame
            switchViewController(firstViewController, to: secondViewController)
        }
        else {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            firstViewController.view.frame = view.frame
            switchViewController(secondViewController, to: firstViewController)
        }
        
        UIView.commitAnimations()
    }
    
    fileprivate func switchViewController(_ from: UIViewController?, to: UIViewController?) {
            if from != nil {
                from!.willMove(toParent: nil)
                from!.view.removeFromSuperview()
                from!.removeFromParent()
            }
            
            if to != nil {
                self.addChild(to!)
                self.view.insertSubview(to!.view, at: 0)
                to!.didMove(toParent: self)
            }
        }
    
        
    fileprivate func firstBuilder() {
            if firstViewController == nil {
                firstViewController =
                    storyboard?
                        .instantiateViewController(withIdentifier: "dad1")
                    as! DadFirstViewController
            }
        }
        fileprivate func secondBuilder() {
            if secondViewController == nil {
                secondViewController =
                    storyboard?
                        .instantiateViewController(withIdentifier: "dad2")
                    as! DadSecondViewController
            }
        }

}
