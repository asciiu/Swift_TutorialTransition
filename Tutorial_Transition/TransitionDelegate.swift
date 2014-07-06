//
//  TransitionDelegate.swift
//  Tutorial_Transition
//
//  Created by LV426 on 7/4/14.
//  Copyright (c) 2014 Indiow LLC. All rights reserved.
//

import UIKit

class TransitionDelegate: NSObject, UIViewControllerTransitioningDelegate {

    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        
        let controller: AnimatedTransitioning = AnimatedTransitioning()
        controller.isPresenting = true;
        return controller;
    }

    // optional
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        
        let controller: AnimatedTransitioning = AnimatedTransitioning()
        return controller;
    }
}
