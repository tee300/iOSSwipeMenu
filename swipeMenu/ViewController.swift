//
//  ViewController.swift
//  swipeMenu
//
//  Created by Matthew Weintrub on 11/8/15.
//  Copyright © 2015 matthew weintrub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let V1 : View1 = View1(nibName: "View1", bundle: nil)
        let V2 : View2 = View2(nibName: "View2", bundle: nil)
        let V3 : View3 = View3(nibName: "View3", bundle: nil)
        
        self.addChildViewController(V1)
        self.scrollView.addSubview(V1.view)
        V1.didMoveToParentViewController(self)

        self.addChildViewController(V2)
        self.scrollView.addSubview(V2.view)
        V2.didMoveToParentViewController(self)
        
        self.addChildViewController(V3)
        self.scrollView.addSubview(V3.view)
        V3.didMoveToParentViewController(self)
        
        var V2Frame : CGRect = V2.view.frame
        V2Frame.origin.x = self.view.frame.width
        V2.view.frame = V2Frame
        
        var V3Frame : CGRect = V3.view.frame
        V3Frame.origin.x = 2 * self.view.frame.width
        V3.view.frame = V3Frame
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 3 ,self.view.frame.size.height)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

