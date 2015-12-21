//
//  InfoViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit
import WebKit

class InfoViewController: UIViewController {
    
    @IBOutlet var containerView: UIView!
    var webView: WKWebView?
    
    
    override func loadView() {
        print("loadView")
        
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView!
    }
    
    override func viewDidLoad() {
        print("View did Load")
        super.viewDidLoad()
        
        let url = NSURL(string:"https://ewb.box.com/s/wja5zji87n4wpe7xy4pzaqlno4km4r5y")
        let req = NSURLRequest(URL:url!)
        self.webView!.loadRequest(req)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}