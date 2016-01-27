//
//  ScheduleViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit
import WebKit
import Foundation

class ScheduleViewController: UIViewController, UIWebViewDelegate{
    
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        
        print("View did Load")
        super.viewDidLoad()
        myWebView.delegate = self
        
        
        //Make request to load schedule page
        let url = NSURL(string:"https://docs.google.com/spreadsheets/d/1KZ_HCw9hqwHVMX9oYz56X9JdGMaGv3WK8kfoUJskiM8/pub?gid=1397911395&single=true&output=pdf")
        let req = NSURLRequest(URL:url!)
        self.myWebView!.loadRequest(req)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        print("view will appear")
        spinner.startAnimating()
    }
    
    
    // Stop the spinning wheel when content has finished loading. Used via the webview delegate.
    func webViewDidFinishLoad(myWebView: UIWebView) {
        print("Web View Did Finish Load")
        spinner.stopAnimating()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



