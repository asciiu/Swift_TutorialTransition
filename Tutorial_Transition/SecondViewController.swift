//
//  SecondViewController.swift
//  Tutorial_Transition
//
//  Created by LV426 on 7/4/14.
//  Copyright (c) 2014 Indiow LLC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var modalView: UIView
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.modalView.layer.cornerRadius = 3.0;
        
        // drop shadow
        self.modalView.layer.shadowColor = UIColor.blackColor().CGColor
        self.modalView.layer.shadowOpacity = 0.8
        self.modalView.layer.shadowRadius = 3.0
        self.modalView.layer.shadowOffset = CGSizeMake(2.0, 2.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPress(sender: AnyObject) {
        println("button")
    }
    @IBAction func closeView(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
