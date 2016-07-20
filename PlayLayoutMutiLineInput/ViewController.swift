//
//  ViewController.swift
//  PlayLayoutMutiLineInput
//
//  Created by 默司 on 2016/7/20.
//  Copyright © 2016年 默司. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textviewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textview.delegate = self
        
    }
    
    func textViewDidChange(textView: UITextView) {
        let sizeThatFitsTextView = textview.sizeThatFits(CGSizeMake(textview.frame.width, CGFloat.max))
        
        textviewHeightConstraint.constant = sizeThatFitsTextView.height
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

