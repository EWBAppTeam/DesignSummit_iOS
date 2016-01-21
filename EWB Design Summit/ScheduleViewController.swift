//
//  ScheduleViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit
import WebKit

class ScheduleViewController: UIViewController, UIWebViewDelegate{
    
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet var scheduleView: UIView!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var webView: WKWebView?
    
    
    override func loadView() {
        print("loadView")
        super.loadView()
        
        //self.webView = WKWebView()
        //self.view = self.webView!
        
        myWebView.delegate = self
        
    }
    
    
   
    
    override func viewDidLoad() {
        print("View did Load")
        super.viewDidLoad()
    
            let url = NSURL(string:"https://docs.google.com/spreadsheets/d/1KZ_HCw9hqwHVMX9oYz56X9JdGMaGv3WK8kfoUJskiM8/pubhtml?gid=1397911395&single=true")
            let req = NSURLRequest(URL:url!)
            self.myWebView!.loadRequest(req)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("view will appear")
        spinner.startAnimating()
    }
    
    override func viewDidAppear(animated: Bool) {
                print("view did appear")
        
    }
    
    func webViewDidFinishLoad(myWebView: UIWebView) {
        spinner.stopAnimating()
    }


    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}



