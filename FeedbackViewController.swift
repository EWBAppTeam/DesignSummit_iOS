//
//  FeedbackViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit
import WebKit
import Foundation

class FeedbackViewController: UIViewController,UIWebViewDelegate {
    
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var spinningWheel: UIActivityIndicatorView!

    
    override func viewDidLoad() {
        
        print("View did Load")
        super.viewDidLoad()
        myWebView.delegate = self // set the webview delegate
        
        
        let url = NSURL(string: "https://docs.google.com/forms/d/1vif6hhJ6kdmEAms9XljB_LqFb3za4ksQkjUY51zprEc/viewform?usp=send_form")
        let request = NSURLRequest(URL: url!)
        self.myWebView.loadRequest(request)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        print("view will appear")
        spinningWheel.startAnimating()
    }
    
    
    func webViewDidFinishLoad(myWebView: UIWebView){
        print("webview did finish load")
        spinningWheel.stopAnimating()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


