//
//  SplashController.swift
//  DelegateColorExample
//
//  Created by Terry Griffin on 3/22/15.
//  Copyright (c) 2015 Terry Griffin. All rights reserved.
//

import UIKit

class SplashController: UIViewController {
    
    var imageList = [UIImage]()
    
    @IBOutlet weak var splashImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "timeToMoveOn", userInfo: nil, repeats: false)
        
        for var index = 15; index <= 165; index+=30 {
            let imageName = "color-wheel-img-120-\(index)"
            imageList.append(UIImage(named: imageName)!)
        }
        
        
        splashImageView.animationImages = imageList
        
        splashImageView.startAnimating()
        timeToMoveOn()
    }
    
    func timeToMoveOn() {
        self.performSegueWithIdentifier("goToMainUI", sender: self)
    }
    
}
