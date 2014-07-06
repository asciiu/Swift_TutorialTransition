//
//  ViewController.swift
//  Tutorial_Transition
//
//  Created by LV426 on 7/4/14.
//  Copyright (c) 2014 Indiow LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var transitionController: TransitionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.transitionController = [[TransitionDelegate alloc] init];
        transitionController = TransitionDelegate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // if you're going to use a modal seque
    override func prepareForSegue(segue:UIStoryboardSegue, sender: AnyObject) {
        super.prepareForSegue(segue, sender:sender)
    
        let detailViewController:UIViewController = segue.destinationViewController as UIViewController;
    
        detailViewController.transitioningDelegate = self.transitioningDelegate;
        detailViewController.modalPresentationStyle = UIModalPresentationStyle.Custom;
    }

    // if you're not going using a storyboard modal seque
    @IBAction func showSecondView(sender: AnyObject) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: UIViewController = storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as UIViewController
        
        //vc.view.backgroundColor = UIColor.clearColor();
        vc.transitioningDelegate =  self.transitionController!
        vc.modalPresentationStyle = UIModalPresentationStyle.Custom

        self.presentViewController(vc, animated:true, completion:nil)
    }
}

