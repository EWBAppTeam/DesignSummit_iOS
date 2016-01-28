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
        
        if let myPDF = NSBundle.mainBundle().URLForResource("DS Feb 2016", withExtension: "pdf"){
            
            if NSFileManager.defaultManager().fileExistsAtPath(myPDF.path!) {
                print("file found")
                print("at \(myPDF.path!)")
            }
            
            let myURLReq = NSURLRequest(URL: myPDF)
            self.webView!.loadRequest(myURLReq)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
